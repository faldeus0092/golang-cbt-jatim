package handler

import (
	"cbt-jatim/siswa"
	"encoding/json"
	"errors"
	"fmt"
	"net/http"
	"os"
	"path"

	"github.com/gin-gonic/gin"
	"github.com/go-playground/validator/v10"
)

type siswaHandler struct {
	siswaService siswa.Service
}

// fungsi untuk membuat handler book yang akan membuat service
func NewSiswaHandler(siswaService siswa.Service) *siswaHandler {
	return &siswaHandler{siswaService}
}

func (h *siswaHandler) SearchFilter(c *gin.Context) {
	var siswaRequest siswa.SiswaRequest
	// bind json agar bisa diproses, kirim &bookRequest untuk diubah
	err := c.ShouldBindJSON(&siswaRequest)
	if err != nil {
		fmt.Println("what happened")
		// for storing multiple errors
		errorMessages := []string{}

		var ve validator.ValidationErrors
		var jsErr *json.UnmarshalTypeError

		if errors.As(err, &ve) {
			for _, e := range err.(validator.ValidationErrors) {
				errorMessage := fmt.Sprintf("Error on Field: %s, condition: %s", e.Field(), e.ActualTag())
				errorMessages = append(errorMessages, errorMessage)
			}
		} else if errors.As(err, &jsErr) {
			errorMessages = append(errorMessages, "Invalid JSON")
		} else {
			fmt.Println(err)
			errorMessages = append(errorMessages, "Something went wrong")
		}

		c.JSON(http.StatusBadRequest, gin.H{
			"errors": errorMessages,
		})
		return
	}

	s, err := h.siswaService.SearchFilter(siswaRequest)

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"errors": err,
		})
		return

	}
	var siswaResponses []siswa.SiswaResponse //menampung semua response

	// loop hasil query untuk ditampung hasil response
	for _, v := range s {
		siswaResponse := convertToSiswaResponse(v)
		siswaResponses = append(siswaResponses, siswaResponse)
	}
	// siswaResponse := convertToSiswaResponse(siswa)
	c.JSON(http.StatusOK, gin.H{
		"data": siswaResponses,
	})
	c.HTML(http.StatusOK, "home.html", gin.H{
		"userdata": s,
	})
}

func (h *siswaHandler) SearchFilterFrontEnd(c *gin.Context) {
	fmt.Println("Search kontol")
	namaVal := c.PostForm("nama")
	nrpVal := c.PostForm("nrp")
	id_kota_Val := c.PostForm("id_kota")
	siswaRequest := siswa.SiswaRequest{
		ID_kota: json.Number(id_kota_Val),
		Nama:    namaVal,
		Nrp:     nrpVal,
	}
	s, err := h.siswaService.SearchFilter(siswaRequest)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"errors": err,
		})
		return

	}
	var siswaResponses []siswa.SiswaResponse //menampung semua response

	// loop hasil query untuk ditampung hasil response
	for _, v := range s {
		siswaResponse := convertToSiswaResponse(v)
		siswaResponses = append(siswaResponses, siswaResponse)
	}

	c.HTML(http.StatusOK, "home.html", gin.H{
		"userdata": s,
	})
}

func (h *siswaHandler) SearchFilterGet(c *gin.Context) {
	c.HTML(http.StatusOK, "home.html", gin.H{
		"Title": "Main Page",
	})
}

func (h *siswaHandler) Download(c *gin.Context) {
	filePath := "proses-nilai/merged.csv"
	//Open file
	fileTmp, errByOpenFile := os.Open(filePath)
	defer fileTmp.Close()
	fmt.Println(errByOpenFile)

	//Gets the name of the file
	fileName := path.Base(filePath)
	if errByOpenFile != nil {
		c.Redirect(http.StatusFound, "/404")
		return
	}
	c.Header("Content-Type", "application/octet-stream")
	//Force browser download
	c.Header("Content-Disposition", "attachment; filename="+fileName)
	//Browser download or preview
	c.Header("Content-Disposition", "inline;filename="+fileName)
	c.Header("Content-Transfer-Encoding", "binary")
	c.Header("Cache-Control", "no-cache")

	c.File(filePath)
	return
}

func convertToSiswaResponse(s siswa.ResultEntity) siswa.SiswaResponse {
	return siswa.SiswaResponse{
		ID_siswa:         s.ID_siswa,
		Nama:             s.Nama,
		Nrp:              s.Nrp,
		Fisika:           s.Fisika,
		Kimia:            s.Kimia,
		Matematika:       s.Matematika,
		Biologi:          s.Biologi,
		Agama:            s.Agama,
		Bahasa_Indonesia: s.Bahasa_Indonesia,
		Bahasa_Inggris:   s.Bahasa_Inggris,
	}
}

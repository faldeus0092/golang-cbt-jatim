package main

import (
	"cbt-jatim/handler"
	"cbt-jatim/siswa"
	"log"

	"github.com/gin-gonic/gin"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

func main() {
	// refer https://github.com/go-sql-driver/mysql#dsn-data-source-name for details
	dsn := "root:@tcp(127.0.0.1:3306)/processed_cbt_jatim_eas?charset=utf8mb4&parseTime=True&loc=Local"
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatal("Connection error: ", err)
	}

	siswaRepository := siswa.NewRepository(db)
	siswaService := siswa.NewService(siswaRepository)
	siswaHandler := handler.NewSiswaHandler(siswaService)

	router := gin.Default()

	router.Static("/assets", "./assets")
	router.LoadHTMLGlob("templates/*.html")

	v1 := router.Group("/v1")

	v1.POST("/search", siswaHandler.SearchFilter)
	v1.POST("/", siswaHandler.SearchFilterFrontEnd)
	v1.GET("/", siswaHandler.SearchFilterGet)
	v1.GET("/download", siswaHandler.Download)

	router.Run()
}

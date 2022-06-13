package siswa

import "encoding/json"

type SiswaRequest struct {
	ID_kota  json.Number `json:"id_kota" binding:"required,number"`
	Nama     string      `json:"nama"`
	Nrp      string      `json:"nrp"`
	ID_mapel json.Number `json:"id_mapel"`
	Score    json.Number `json:"score"`
	ID_nilai json.Number `json:"id_nilai"`
}

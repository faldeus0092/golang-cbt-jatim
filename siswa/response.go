package siswa

// type SiswaResponse struct {
// 	ID_siswa  int     `json:"id_siswa"`
// 	Nama     string  `json:"nama"`
// 	Nrp      string  `json:"nrp"`
// 	ID_mapel int     `json:"id_mapel"`
// 	Score    float64 `json:"score"`
// 	ID_nilai int     `json:"id_nilai"`
// }
type SiswaResponse struct {
	ID_siswa         int     `json:"id_siswa"`
	Nama             string  `json:"nama"`
	Nrp              string  `json:"nrp"`
	Fisika           float64 `json:"fisika"`
	Kimia            float64 `json:"kimia"`
	Matematika       float64 `json:"matematika"`
	Biologi          float64 `json:"biologi"`
	Agama            float64 `json:"agama"`
	Bahasa_Indonesia float64 `json:"bahasa_indonesia"`
	Bahasa_Inggris   float64 `json:"bahasa_inggris"`
}

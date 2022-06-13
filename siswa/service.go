package siswa

type Service interface {
	SearchFilter(siswaRequest SiswaRequest) ([]ResultEntity, error)
}

type service struct {
	repository Respository
}

func NewService(repository Respository) *service {
	return &service{repository}
}

func (s *service) SearchFilter(siswaRequest SiswaRequest) ([]ResultEntity, error) {
	id_kota, _ := siswaRequest.ID_kota.Int64()
	id_mapel, _ := siswaRequest.ID_mapel.Int64()
	score, _ := siswaRequest.Score.Float64()
	id_nilai, _ := siswaRequest.Score.Int64()

	siswa := Siswa{
		ID_kota:  int(id_kota),
		Nama:     siswaRequest.Nama,
		Nrp:      siswaRequest.Nrp,
		ID_mapel: int(id_mapel), // these fields are not used in search filter
		Score:    float64(score),
		ID_nilai: int(id_nilai),
	}

	searchedSiswa, err := s.repository.SearchFilter(siswa)
	return searchedSiswa, err
}

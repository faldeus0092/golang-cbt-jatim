package siswa

import (
	"fmt"

	"gorm.io/gorm"
)

type Respository interface {
	SearchFilter(siswa Siswa) ([]ResultEntity, error)
}

type repository struct {
	db *gorm.DB
}

func NewRepository(db *gorm.DB) *repository {
	return &repository{db}
}

func (r *repository) SearchFilter(siswa Siswa) ([]ResultEntity, error) {

	tablename := convertToTablename(siswa.ID_kota)
	nama := "%" + siswa.Nama + "%"
	nrp := "%" + siswa.Nrp + "%"

	var searchResults []ResultEntity
	var q string

	if nama == "" && nrp == "" {
		q = fmt.Sprintf("Select `%s`.`id_siswa`, `%s`.`nama`, `%s`.`nrp`,MAX(CASE WHEN `%s`.`id_mapel` = \"1\" THEN `%s`.`score` ELSE 0 END) AS \"Fisika\",MAX(CASE WHEN `%s`.`id_mapel` = \"2\" THEN `%s`.`score` ELSE 0 END) AS \"Kimia\",MAX(CASE WHEN `%s`.`id_mapel` = \"3\" THEN `%s`.`score` ELSE 0 END) AS \"Matematika\",MAX(CASE WHEN `%s`.`id_mapel` = \"4\" THEN `%s`.`score` ELSE 0 END) AS \"Biologi\",MAX(CASE WHEN `%s`.`id_mapel` = \"5\" THEN `%s`.`score` ELSE 0 END) AS \"Agama\",MAX(CASE WHEN `%s`.`id_mapel` = \"6\" THEN `%s`.`score` ELSE 0 END) AS \"Bahasa_Indonesia\",MAX(CASE WHEN `%s`.`id_mapel` = \"7\" THEN `%s`.`score` ELSE 0 END) AS \"Bahasa_Inggris\" FROM %s GROUP BY `%s`.`id_siswa`;", tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename)
	} else if nama != "" && nrp != "" {
		q = fmt.Sprintf("Select `%s`.`id_siswa`, `%s`.`nama`, `%s`.`nrp`,MAX(CASE WHEN `%s`.`id_mapel` = \"1\" THEN `%s`.`score` ELSE 0 END) AS \"Fisika\",MAX(CASE WHEN `%s`.`id_mapel` = \"2\" THEN `%s`.`score` ELSE 0 END) AS \"Kimia\",MAX(CASE WHEN `%s`.`id_mapel` = \"3\" THEN `%s`.`score` ELSE 0 END) AS \"Matematika\",MAX(CASE WHEN `%s`.`id_mapel` = \"4\" THEN `%s`.`score` ELSE 0 END) AS \"Biologi\",MAX(CASE WHEN `%s`.`id_mapel` = \"5\" THEN `%s`.`score` ELSE 0 END) AS \"Agama\",MAX(CASE WHEN `%s`.`id_mapel` = \"6\" THEN `%s`.`score` ELSE 0 END) AS \"Bahasa_Indonesia\",MAX(CASE WHEN `%s`.`id_mapel` = \"7\" THEN `%s`.`score` ELSE 0 END) AS \"Bahasa_Inggris\" FROM %s WHERE `%s`.`nama` LIKE \"%s\" AND `%s`.`nrp` LIKE \"%s\" GROUP BY `%s`.`id_siswa`;", tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, nama, tablename, nrp, tablename)
	} else if nama != "" {
		q = fmt.Sprintf("Select `%s`.`id_siswa`, `%s`.`nama`, `%s`.`nrp`,MAX(CASE WHEN `%s`.`id_mapel` = \"1\" THEN `%s`.`score` ELSE 0 END) AS \"Fisika\",MAX(CASE WHEN `%s`.`id_mapel` = \"2\" THEN `%s`.`score` ELSE 0 END) AS \"Kimia\",MAX(CASE WHEN `%s`.`id_mapel` = \"3\" THEN `%s`.`score` ELSE 0 END) AS \"Matematika\",MAX(CASE WHEN `%s`.`id_mapel` = \"4\" THEN `%s`.`score` ELSE 0 END) AS \"Biologi\",MAX(CASE WHEN `%s`.`id_mapel` = \"5\" THEN `%s`.`score` ELSE 0 END) AS \"Agama\",MAX(CASE WHEN `%s`.`id_mapel` = \"6\" THEN `%s`.`score` ELSE 0 END) AS \"Bahasa_Indonesia\",MAX(CASE WHEN `%s`.`id_mapel` = \"7\" THEN `%s`.`score` ELSE 0 END) AS \"Bahasa_Inggris\" FROM %s WHERE `%s`.`nama` LIKE \"%s\" GROUP BY `%s`.`id_siswa`;", tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, nama, tablename)
	} else if nrp != "" {
		q = fmt.Sprintf("Select `%s`.`id_siswa`, `%s`.`nama`, `%s`.`nrp`,MAX(CASE WHEN `%s`.`id_mapel` = \"1\" THEN `%s`.`score` ELSE 0 END) AS \"Fisika\",MAX(CASE WHEN `%s`.`id_mapel` = \"2\" THEN `%s`.`score` ELSE 0 END) AS \"Kimia\",MAX(CASE WHEN `%s`.`id_mapel` = \"3\" THEN `%s`.`score` ELSE 0 END) AS \"Matematika\",MAX(CASE WHEN `%s`.`id_mapel` = \"4\" THEN `%s`.`score` ELSE 0 END) AS \"Biologi\",MAX(CASE WHEN `%s`.`id_mapel` = \"5\" THEN `%s`.`score` ELSE 0 END) AS \"Agama\",MAX(CASE WHEN `%s`.`id_mapel` = \"6\" THEN `%s`.`score` ELSE 0 END) AS \"Bahasa_Indonesia\",MAX(CASE WHEN `%s`.`id_mapel` = \"7\" THEN `%s`.`score` ELSE 0 END) AS \"Bahasa_Inggris\" FROM %s WHERE `%s`.`nrp` LIKE \"%s\" GROUP BY `%s`.`id_siswa`;", tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, tablename, nrp, tablename)
	} else {
		q = ""
	}

	err := r.db.Raw(q).Debug().Scan(&searchResults).Error
	return searchResults, err
}

func convertToTablename(id_kota int) string {
	switch id_kota {
	case 1:
		return "nilai_kab_bangkalan"
	case 2:
		return "nilai_kab_banyuwangi"
	case 3:
		return "nilai_kab_blitar"
	case 4:
		return "nilai_kab_bojonegoro"
	case 5:
		return "nilai_kab_bondowoso"
	case 6:
		return "nilai_kab_gresik"
	case 7:
		return "nilai_kab_jember"
	case 8:
		return "nilai_kab_jombang"
	case 9:
		return "nilai_kab_kediri"
	case 10:
		return "nilai_kab_lamongan"
	case 11:
		return "nilai_kab_lumajang"
	case 12:
		return "nilai_kab_madiun"
	case 13:
		return "nilai_kab_magetan"
	case 14:
		return "nilai_kab_malang"
	case 15:
		return "nilai_kab_mojokerto"
	case 16:
		return "nilai_kab_nganjuk"
	case 17:
		return "nilai_kab_ngawi"
	case 18:
		return "nilai_kab_pacitan"
	case 19:
		return "nilai_kab_pamekasan"
	case 20:
		return "nilai_kab_pasuruan"
	case 21:
		return "nilai_kab_ponorogo"
	case 22:
		return "nilai_kab_probolinggo"
	case 23:
		return "nilai_kab_sampang"
	case 24:
		return "nilai_kab_sidoarjo"
	case 25:
		return "nilai_kab_situbondo"
	case 26:
		return "nilai_kab_sumenep"
	case 27:
		return "nilai_kab_trenggalek"
	case 28:
		return "nilai_kab_tuban"
	case 29:
		return "nilai_kab_tulungagung"
	case 30:
		return "nilai_kota_batu"
	case 31:
		return "nilai_kota_blitar"
	case 32:
		return "nilai_kota_kediri"
	case 33:
		return "nilai_kota_madiun"
	case 34:
		return "nilai_kota_malang"
	case 35:
		return "nilai_kota_mojokerto"
	case 36:
		return "nilai_kota_pasuruan"
	case 37:
		return "nilai_kota_probolinggo"
	case 38:
		return "nilai_kota_surabaya"
	}
	return "nilai_kab_bangkalan"
}

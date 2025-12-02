SELECT 
    s.namobj AS nama_stasiun,
    p.wadmkd AS kelurahan,
    p.wadmkc AS kecamatan,
    p.d_kegiatan AS jenis_pendidikan,
    ROUND(ST_Distance(
        ST_Transform(ST_SetSRID(s.geom, 4326), 32748), 
        p.geom
    )::numeric, 2) AS jarak_meter
FROM stasiunka_pt_1k s, penggunaan_lahan_2021 p
WHERE p.d_sub_peng = 'PELAYANAN PENDIDIKAN'
  AND ST_DWithin(
        ST_Transform(ST_SetSRID(s.geom, 4326), 32748), 
        p.geom, 
        300
      )
ORDER BY jarak_meter
LIMIT 10;
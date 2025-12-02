SELECT 
    ln.objectid AS id_jalur_rel,
    p.wadmkd AS kelurahan,
    p.wadmkc AS kecamatan,
    p.d_kegiatan AS jenis_rth,
    ROUND(p.shape_area::numeric, 2) AS luas_rth_m2
FROM relka_ln_1k ln, penggunaan_lahan_2021 p
WHERE p.d_kegiatan IN (
    'HIJAU LAINNYA', 'TAMAN KOTA', 'TAMAN REKREASI', 
    'TAMAN BERMAIN LINGKUNGAN', 'TAMAN HIBURAN', 'TAMAN PERKEMAHAN'
)
AND ST_DWithin(
    ST_Transform(ST_SetSRID(ln.geom, 4326), 32748), 
    p.geom, 
    10
)
ORDER BY p.shape_area DESC
LIMIT 10;
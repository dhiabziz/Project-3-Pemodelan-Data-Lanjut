SELECT 
    row_number() OVER () AS id,
    d_pengguna,
    ST_Multi(ST_Union(geom)) AS geom_dissolved,
    (ST_Area(ST_Union(geom))/10000) AS total_luas_ha 
FROM public.penggunaan_lahan_2021
WHERE d_pengguna IS NOT NULL
GROUP BY d_pengguna;
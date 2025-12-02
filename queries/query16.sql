SELECT 
    wadmkk AS "Kota",
    COUNT(*) AS "Jumlah Polygon Perumahan",
    ROUND(SUM(luaswh)::numeric, 2) AS "Total Luas (ha)",
    ST_Union(geom) AS geom
FROM penggunaan_lahan_2021
WHERE (d_pengguna LIKE '%HUNIAN%')
  AND wadmkk IS NOT NULL
GROUP BY wadmkk
ORDER BY "Total Luas (ha)" DESC;
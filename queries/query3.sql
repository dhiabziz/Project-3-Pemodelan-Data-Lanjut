SELECT 
    "WADMKK",
    COUNT(*) AS jumlah_poligon
FROM penggunaan_lahan_2021
WHERE "WADMKK" IS NOT NULL
GROUP BY "WADMKK"
ORDER BY jumlah_poligon DESC;
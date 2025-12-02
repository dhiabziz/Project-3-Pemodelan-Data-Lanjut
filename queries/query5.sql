SELECT 
    fcode, metadata, srs_id,
    ST_Area(ST_Transform(geom, 32748)) AS luas_m2
FROM relka_ar_1k
WHERE geom IS NOT NULL
ORDER BY luas_m2 DESC NULLS LAST
LIMIT 1;
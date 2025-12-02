SELECT 
    SUM(ST_Length(ST_Transform(geom, 32748))) / 1000 AS total_panjang_km
FROM relka_ln_1k;
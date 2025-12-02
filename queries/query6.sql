SELECT 
    a.namobj AS stasiun_1,
    b.namobj AS stasiun_2,
    ST_Distance(ST_Transform(a.geom, 32748), ST_Transform(b.geom, 32748)) AS jarak_meter
FROM stasiunka_pt_1k a, stasiunka_pt_1k b
WHERE a.objectid < b.objectid
  AND ST_DWithin(ST_Transform(a.geom, 32748), ST_Transform(b.geom, 32748), 1000)
ORDER BY jarak_meter ASC;

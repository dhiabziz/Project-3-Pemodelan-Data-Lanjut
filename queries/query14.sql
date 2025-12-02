SELECT 
	row_number() OVER () AS id,
    ln.geom AS rel_geom,
    st.geom AS stasiun_geom,
    st.namobj AS nama_stasiun
FROM relka_ln_1k ln
JOIN relka_ar_1k ar
  ON ST_Intersects(ln.geom, ar.geom)
JOIN stasiunka_pt_1k st
  ON ST_Intersects(st.geom, ar.geom)
WHERE st.namobj = 'STASIUN JATINEGARA';
# Project-3-Pemodelan-Data-Lanjut

INSTRUKSI LOADING DATA SPASIAL
-------------------------------------------------
Prasyarat: 
1. Pastikan ekstensi PostGIS sudah aktif di database tujuan:
   CREATE EXTENSION postgis;
2. Buka terminal 'OSGeo4W Shell'.

Perintah Loading:

1. Untuk Tabel Stasiun (Titik):
   ogr2ogr -f "PostgreSQL" PG:"host=localhost port=5432 user=postgres dbname=NAMA_DB password=PASSWORD_DB" "Lokasi File/stasiunka_pt_1k.gpkg" -nln stasiunka_pt_1k -overwrite

2. Untuk Tabel Rel (Garis):
   ogr2ogr -f "PostgreSQL" PG:"host=localhost port=5432 user=postgres dbname=NAMA_DB password=PASSWORD_DB" "Lokasi File/relka_ln_1k.gpkg" -nln relka_ln_1k -overwrite -nlt PROMOTE_TO_MULTI

3. Untuk Tabel Area Rel (Poligon):
   ogr2ogr -f "PostgreSQL" PG:"host=localhost port=5432 user=postgres dbname=NAMA_DB password=PASSWORD_DB" "Lokasi File/relka_ar_1k.gpkg" -nln relka_ar_1k -overwrite -nlt PROMOTE_TO_MULTI

4. Untuk Tabel Penggunaan Lahan (Poligon):
   ogr2ogr -f "PostgreSQL" PG:"host=localhost port=5432 user=postgres dbname=NAMA_DB password=PASSWORD_DB" "Lokasi File/penggunaan_lahan_2021.gpkg" -nln penggunaan_lahan_2021 -overwrite -nlt PROMOTE_TO_MULTI

Catatan Parameter:
-nln : Menentukan nama tabel tujuan di database (new layer name).
-nlt PROMOTE_TO_MULTI : Mencegah error tipe geometri dengan memaksa Poligon menjadi MultiPolygon.
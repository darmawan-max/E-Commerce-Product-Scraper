-- Mengambil semua data dari tabel produk-terlaris
SELECT * FROM produk_terlaris;

-- Membuat tabel produk_terlaris
CREATE TABLE produk_terlaris(
    id SERIAL PRIMARY KEY,
    nama_produk TEXT,
    harga_produk INT,
    nama_toko TEXT,
    keterangan TEXT
);

-- Memasukan data dari file csv ke tabel produk_terlaris
 COPY produk_terlaris(nama_produk, harga_produk, nama_toko, keterangan)
  FROM 'C:\Users\tmp\data_ikea_produk_terlaris.csv'
  DELIMITER ','
  CSV HEADER;
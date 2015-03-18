CREATE TABLE t_penjualan(
	id INT AUTO_INCREMENT,
	waktu_transaksi DATE,
	PRIMARY KEY(id)
	)Engine=InnoDB;
	
CREATE TABLE m_produk(
	id INT AUTO_INCREMENT,
	kode VARHACHAR(20) NOT NULL,
	nama VARCHAR(20) NOT NULL,
	harga DECIMAL(19,2) NOT NULL,
	PRIMARY KEY(ID)
)Engine =InnoDB;

CREATE TABLE t_penjualan_detail(
	id INT AUTO_INCREMENT,
	id_penjualan INT,
	id_produk INT ,
	harga DECIMAL(19,2) NOT NULL,
	jumlah INT NOT NULL,
	FOREIGN KEY(id_penjualan) REFERENCES t_penjualan(id_penjualan),
	FOREIGN KEY(id_produk) REFERENCES m_produk(id_produk),
	PRIMARY KEY(ID)
)Engine = InnoDB;

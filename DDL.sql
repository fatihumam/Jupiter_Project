CREATE TABLE jamkerja(
	id_jam int(11),
	JamMsuk int NOT NULL,
	JamKeluar int NOT NULL,
	constraint pk_jam_kerja primary key(id_jam)
);

CREATE TABLE pegawai(
	nip varchar(20) NOT NULL,
	nama varchar(30) NOT NULL,
	ttl date NOT NULL,
	jabatan varchar(20) NOT NULL,
	golongan varchar(20) NOT NULL,
	gaji int(11) NOT NULL,
	constraint pk_pegawai primary key(nip),
	constraint fk_pegawai_jam_kerja foreign key(id_jam) references jam_kerja on delete cascade,
	constraint fk_pegawai_Bidang foreign key(noBidang) references bidang on delete cascade
);

CREATE TABLE bidang(
	noBidang varchar(20),
	nama varchar(30) NOT NULL,
	constraint pk_bidang primary key(noBidang)
);

CREATE TABLE kegiatan(
	noKegiatan int(11),
	jenisKegiatan varchar(50) NOT NULL,
	uraianKegiatan varchar(300),
	constraint pk_kegiatan primary key(noKegiatan),
	constraint fk_kegiatan_bidang foreign key(noBidang) references bidang on delete cascade
);

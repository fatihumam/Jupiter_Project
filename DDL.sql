CREATE TABLE jam_kerja(
	id_jam varchar,
	JamMsuk integer NOT NULL,
	JamKeluar integer NOT NULL,
	constraint pk_jam_kerja primary key(id_jam)
);

CREATE TABLE pegawai(
	nip varchar(20),
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
	nama varchar(20) NOT NULL,
	pegawai varchar(30) NOT NULL,
	constraint pk_bidang primary key(noBidang)
);

CREATE TABLE kegiatan(
	noKegiatan int(11),
	jenis varchar(20) NOT NULL,
	uraian varchar(100),
	constraint pk_kegiatan primary key(noKegiatan),
	constraint fk_kegiatan_bidang foreign key(noBidang) references bidang on delete cascade
);

#create tablespace dan username
create tablespace reservasitiketkereta
	datafile 'D:\SEMESTER 4\PRAKTIKUM\Basis Data\Ryvana_07014.dbf'
	Size 30M;

create user ryvanasuthelie_07014
	identified by ryvana
	default tablespace reservasitiketkereta
	quota 30M on reservasitiketkereta

grant all privileges to ryvanasuthelie_07014;

conn ryvanasuthelie_07014/ryvana


#table pembeli
create table Pembeli
(
	id_pembeli integer not null,
	nama_pembeli varchar2(15),
	tanggal_lahir date,
	email varchar2(100),
	no_telp number(12),
	constraint pk_pembeli primary key (id_pembeli));
#table rute
create table Rute(
	id_rute integer not null,
	tujuan varchar2(30),
	stasiun_persinggahan varchar2(30),
	constraint pk_rute primary key (id_rute));
#table kereta
create table Kereta(
	id_kereta integer not null,
	nama_kereta varchar2(30),
	jadwal varchar2 (20),
	nomor_kursi number(2),
	constraint pk_kereta primary key (id_kereta));
#table tiket
create table Tiket
(
	id_tiket integer not null,
	id_rute integer,
	id_kereta integer,
	harga_tiket number(9),
	tanggal_keberangkatan date,
	constraint pk_tiket primary key (id_tiket)
);

alter table Tiket
add constraint fk_id_rute foreign key (id_rute)
references Rute(id_rute)
add constraint fk_id_kereta foreign key (id_kereta)
references Kereta(id_kereta)

create sequence id_pembeli
	minvalue 1
	maxvalue 999
	start with 1
	increment by 1
	cache 25;

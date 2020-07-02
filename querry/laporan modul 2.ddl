#single insert
#Table Pembeli
Insert into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (3, 'ryry', to_date('14/08/2000','dd/mm/yyyy'), 'sryvana123','123456789');
Insert into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (4, 'Chinry', to_date('10/02/2002','dd/mm/yyyy'), 'chinrys123','234567891');
#Table Rute
Insert into rute (id_rute, tujuan, stasiun_persinggahan) values (14, 'Jogja', 'wonokromo');
Insert into rute (id_rute, tujuan, stasiun_persinggahan) values (15, 'salatiga', 'lempuyangan');
#Table Kereta
Insert into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (51, 'Jakartaex', to_date('12/07/2020','dd/mm/yyyy'), '34');
Insert into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (61, 'Sancaka', to_date('13/07/2020','dd/mm/yyyy'), '32');
#Table Tiket
Insert into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (10, 14, 51, '90000', to_date('12/07/2020','dd/mm/yyyy'));
Insert into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (11, 15, 61, '100000', to_date('13/07/2020','dd/mm/yyyy'));

#multiple insert
#insert pembeli
insert all
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (5, 'Morin', to_date('26/10/2006','dd/mm/yyyy'), 'morins123','345678912')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (6, 'Jevon', to_date('06/01/2010','dd/mm/yyyy'), 'jevons123','456789123')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (7, 'Hezky', to_date('12/03/2003','dd/mm/yyyy'), 'hezky123','567891234')
select 1 from dual;

#insert rute
insert all
into rute (id_rute, tujuan, stasiun_persinggahan) values (16, 'bandung', 'yogyakarta')
into rute (id_rute, tujuan, stasiun_persinggahan) values (17, 'semarang', 'sidoarjo')
into rute (id_rute, tujuan, stasiun_persinggahan) values (18, 'jakarta', 'madura')
select 1 from dual;

#insert kereta
insert all
into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (1, 'Taksaka', to_date('14/07/2020','dd/mm/yyyy'), '33')
into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (11, 'argo sindoro', to_date('15/07/2020','dd/mm/yyyy'), '41')
into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (91, 'purwojaya', to_date('16/07/2020','dd/mm/yyyy'), '37')
select 1 from dual;

#insert tiket
insert all
into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (12, 16, 1, '90000', to_date('14/07/2020','dd/mm/yyyy'))
into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (13, 17, 11, '100000', to_date('15/07/2020','dd/mm/yyyy'))
into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (14, 18, 91, '100000', to_date('16/07/2020','dd/mm/yyyy'))
select 1 from dual;

#sequence insert
create sequence id_pembeli
	minvalue 1
	maxvalue 900
	start with 8
	increment by 1
	cache 20;

Insert into pembeli values (id_pembeli.nextval, 'jevon', to_date('07/08/2000','dd/mm/yyyy'), 'sryvana123','123456789');

create sequence id_rute
	minvalue 1
	maxvalue 200
	start with 14
	increment by 1
	cache 25;

insert into rute values (id_rute.nextval, 'jember', 'malang');

create sequence id_kereta
	minvalue 1
	maxvalue 500
	start with 51
	increment by 1
	cache 100;

insert into o7014_kereta values (id_kereta.nextval, 'Argo Muria', to_date('21/07/2020','dd/mm/yyyy'), '43');

create sequence id_tiket
	minvalue 1
	maxvalue 500
	start with 10
	increment by 1
	cache 40;

insert into tiket values (id_tiket.nextval, 14, 51, '100000', to_date ('24/05/2020','dd/mm/yyyy'));

#update menggunakan where
#update pembeli
update pembeli set nama_pembeli07014 = 'ryvana' where id_pembeli = 3;
update pembeli set nama_pembeli07014 = 'chikus' where id_pembeli = 4;
update pembeli set nama_pembeli07014 = 'monmon' where id_pembeli = 5;
update pembeli set nama_pembeli07014 = 'epon' where id_pembeli = 6;
update pembeli set nama_pembeli07014 = 'ivan' where id_pembeli = 7;
#update rute
update rute set tujuan = 'jakarta' where id_rute = 14;
update rute set tujuan = 'jogja' where id_rute = 15;
update rute set tujuan = 'salatiga' where id_rute = 16;
update rute set tujuan = 'semarang' where id_rute = 17;
update rute set tujuan = 'bandung' where id_rute = 18;
#update kereta
update o7014_kereta set nama_kereta = 'sancaka' where id_kereta = 51;
update o7014_kereta set nama_kereta = 'sancaka' where id_kereta = 61;
update o7014_kereta set nama_kereta = 'sancaka' where id_kereta = 1;
update o7014_kereta set nama_kereta = 'sancaka' where id_kereta = 11;
update o7014_kereta set nama_kereta = 'sancaka' where id_kereta = 91;
#update tiket
update tiket set harga_tiket = '120000' where id_tiket = 10;
update tiket set harga_tiket = '110000' where id_tiket = 11;
update tiket set harga_tiket = '130000' where id_tiket = 12;
update tiket set harga_tiket = '90000' where id_tiket = 13;
update tiket set harga_tiket = '95000' where id_tiket = 14;

#menerapkan like
#pembeli
select nama_pembeli07014 from pembeli where nama_pembeli like '%r%';
#rute
select tujuan from rute where tujuan like '%b%';
#kereta
select nama_kereta from o7014_kereta where nama_kereta like '%s%';
#tiket
select tanggal_keberangkatan from tiket where tanggal_keberangkatan like '%%';

#menerapkan and, or dan not minimal 2 operator pada 1 baris querry
select * from tiket where id_tiket = 1 and id_rute = 2 or harga_tiket = '100000';


#delete pembeli
delete from pembeli where id_pembeli = 4 or nama_pembeli07014 = 'chikus' and email = 'chinrys123';
delete from pembeli where id_pembeli = 6 or nama_pembeli07014 = 'epon' and email = 'jevons123';
delete from pembeli where id_pembeli = 3 and nama_pembeli07014 = 'ryvana' or email = 'sryvana123';


#delete kereta
delete from o7014_kereta where id_kereta = 51 and jadwal = '12-JUL-20' or nomor_kursi = '34';
delete from o7014_kereta where id_kereta = 31 and jadwal = '05-APR-20' or nomor_kursi = '23';
delete from o7014_kereta where id_kereta = 11 and jadwal = '15-JUL-20' or nomor_kursi = '41';

#delete tiket
delete from tiket where id_tiket = 10 or id_rute = 14 and id_kereta = 51;
delete from tiket where id_tiket = 7 or id_rute = 13 and id_kereta = 31;
delete from tiket where id_tiket = 13 or id_rute = 17 and id_kereta = 11;

#save point
savepoint ar;

#commit
commit;

#rollback
rollback;

#group by dan order by
select id_tiket, sum(harga_tiket) as total_harga from tiket where harga_tiket > 80000 group by id_tiket order by total_harga desc;
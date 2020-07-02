1. 
#insert table
#table pembeli
insert all
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (1, 'Kevin', to_date('11/11/2000','dd/mm/yyyy'), 'morins123','345678312')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (2, 'Andra', to_date('23/01/2002','dd/mm/yyyy'), 'jevons123','456789423')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (3, 'Ryan', to_date('12/04/2001','dd/mm/yyyy'), 'hezky123','567891284')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (4, 'Meri', to_date('06/05/2006','dd/mm/yyyy'), 'jevons123','456789723')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (6, 'Nanda', to_date('12/07/2003','dd/mm/yyyy'), 'hezky123','567891254')
select 1 from dual;

#table rute
insert all
into rute (id_rute, tujuan, stasiun_persinggahan) values (1, 'bandung', 'malang')
into rute (id_rute, tujuan, stasiun_persinggahan) values (2, 'semarang', 'sidoarjo')
into rute (id_rute, tujuan, stasiun_persinggahan) values (3, 'jakarta', 'semarang')
into rute (id_rute, tujuan, stasiun_persinggahan) values (4, 'semarang', 'bandung')
into rute (id_rute, tujuan, stasiun_persinggahan) values (5, 'jakarta', 'gubeng')
select 1 from dual;

#insert kereta
insert all
into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (2, 'Taksaka', to_date('14/08/2020','dd/mm/yyyy'), '33')
into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (3, 'argo sindoro', to_date('15/07/2020','dd/mm/yyyy'), '41')
into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (4, 'purwojaya', to_date('19/07/2020','dd/mm/yyyy'), '37')
into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (5, 'argo sindoro', to_date('10/07/2020','dd/mm/yyyy'), '41')
into o7014_kereta (id_kereta, nama_kereta, jadwal, nomor_kursi) values (6, 'purwojaya', to_date('18/07/2020','dd/mm/yyyy'), '37')
select 1 from dual;

#insert tiket
insert all
into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (1, 1, 2, '90000', to_date('14/07/2020','dd/mm/yyyy'))
into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (2, 2, 3, '100000', to_date('15/07/2020','dd/mm/yyyy'))
into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (3, 3, 4, '100000', to_date('16/07/2020','dd/mm/yyyy'))
into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (4, 4, 5, '100000', to_date('15/07/2020','dd/mm/yyyy'))
into tiket (id_tiket, id_rute, id_kereta, harga_tiket, tanggal_keberangkatan) values (5, 5, 6, '100000', to_date('16/07/2020','dd/mm/yyyy'))
select 1 from dual;

2.
#Max min
select id_tiket, max(harga_tiket) as
terbanyak, min(harga_tiket) as terendah from tiket
group by id_tiket;

#Count, 1 klausa dan 2 operator
select id_tiket, count(id_tiket) as harga_tiket
from tiket where id_tiket = 1 and id_rute = 1 or id_kereta = 2
group by id_tiket;

#sum
select id_tiket, sum (harga_tiket) as total_harga from tiket where id_tiket = 1
group by id_tiket;

#avg
select avg(harga_tiket) as rata2_harga_tiket from tiket;

3.
#max
select max (harga_tiket) 
as max_harga_tiket from tiket;

#min
select min(harga_tiket) 
as min_harga_tiket from tiket;

#count
select id_tiket, count(id_tiket) 
as harga_tiket from tiket 
group by id_tiket;

#klausa 
select * from pembeli 
where nama_pembeli07014 = 'Ivan';

#operator
select * from pembeli 
where nama_pembeli07014 = 'monmon' 
and email = 'hezky123' 
or no_telp = '567891284';

#sum
select id_tiket, sum (harga_tiket) 
as total_harga from tiket
group by id_tiket;

#avg
select avg(harga_tiket)
as rata2_harga_tiket from tiket;

#group by
select nama_pembeli07014
from pembeli
group by nama_pembeli07014;

#select setelah where
select harga_tiket, id_tiket from tiket
where harga_tiket = (select min(harga_tiket) from tiket);

#menggunakan 3 nested query
select * from tiket where harga_tiket > (select avg(harga_tiket) from tiket
where harga_tiket < (select max(harga_tiket) from tiket
where id_tiket < (select id_tiket from tiket where id_kereta = 1)));
#praktikum modul 4
1.
#table pembeli
insert all
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (1, 'Kevin', to_date('11/11/2000','dd/mm/yyyy'), 'morin423','345678312')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (2, 'Andra', to_date('23/01/2002','dd/mm/yyyy'), 'jevons123','456789423')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (3, 'Ryan', to_date('12/04/2001','dd/mm/yyyy'), 'hezky323','567891284')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (4, 'Meri', to_date('06/05/2006','dd/mm/yyyy'), 'jevons123','456789723')
into pembeli (id_pembeli, nama_pembeli07014, tanggal_lahir, email, no_telp) values (6, 'Nanda', to_date('12/07/2003','dd/mm/yyyy'), 'hezky133','567891254')
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
#equi join minimal 2 tabel dengan menerapkan operator pembanding dan klausa
select a.id_rute, b.id_kereta from tiket a join tiket b on a.id_kereta = b.id_kereta where rownum <=3;

#left join
select rt.tujuan, k.nama_kereta, t.tanggal_keberangkatan, t.harga_tiket from tiket t left join o7014_kereta k on k.id_kereta = t.id_kereta left join rute rt on rt.id_rute = t.id_rute where t.harga_tiket = (select min(harga_tiket) from o7014_kereta);

select rt.tujuan, k.nama_kereta, t.tanggal_keberangkatan, t.harga_tiket from tiket t
right join o7014_kereta k 
on k.id_kereta = t.id_kereta 
right join rute rt on rt.id_rute = t.id_rute 
and t.harga_tiket = (select min(harga_tiket) from o7014_kereta);
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.Koneksi;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Kereta;
import model.Rute;
import model.Tiket;

/**
 *
 * @author USER
 */
public class TransaksiController {

    Koneksi koneksi;
    ArrayList<Kereta> arrKereta;
    ArrayList<Tiket> arrTiket;
    ArrayList<Rute> arrRute;

    public TransaksiController() {
        this.koneksi = new Koneksi();
        this.arrKereta = new ArrayList<>();
        this.arrTiket = new ArrayList<>();
        this.arrRute = new ArrayList<>();
    }

    public ArrayList<Tiket> getDataTiket(int idTiket) throws SQLException {
        this.arrTiket.clear();
        ResultSet rs;
        if (idTiket != 0) {
            rs = this.koneksi.GetData("select * from tiket where id_tiket =" + idTiket);
        } else {
            rs = this.koneksi.GetData("select * from tiket");
        }

        while (rs.next()) {

            Tiket t = new Tiket();
            t.setId_tiket(rs.getInt("id_tiket"));
            t.setHarga_tiket(rs.getInt("harga_tiket"));
            t.setId_kereta(rs.getInt("id_kereta"));
            t.setId_rute(rs.getInt("id_rute"));
            t.setTanggal_keberangkatan(rs.getString("tanggal_keberangkatan"));
            this.arrTiket.add(t);

        }
        return this.arrTiket;
    }

    public ArrayList<Rute> getDataRute(int idRute) throws SQLException {
        this.arrRute.clear();
        ResultSet rs;
        if (idRute != 0) {
            rs = this.koneksi.GetData("select * from rute where id_rute =" + idRute);
        } else {
            rs = this.koneksi.GetData("select * from rute");
        }

        while (rs.next()) {

            Rute r = new Rute();
            r.setId_rute(rs.getInt("id_rute"));
            r.setStasiun_persinggahan(rs.getString("stasiun_persinggahan"));
            r.setTujuan(rs.getString("tujuan"));

            this.arrRute.add(r);

        }
        return this.arrRute;
    }

    public ArrayList<Kereta> getDataKereta(int idKereta) throws SQLException {
        this.arrKereta.clear();
        ResultSet rs;
        if (idKereta != 0) {
            rs = this.koneksi.GetData("select * from o7014_kereta where id_kereta =" + idKereta);
        } else {
            rs = this.koneksi.GetData("select * from o7014_kereta");
        }

        while (rs.next()) {

            Kereta k = new Kereta();
            k.setId_kereta(rs.getInt("id_kereta"));
            k.setJadwal(rs.getString("jadwal"));
            k.setNama_kereta(rs.getString("nama_kereta"));
            k.setNomor_kursi(rs.getInt("nomor_kursi"));
            this.arrKereta.add(k);

        }
        return this.arrKereta;
    }

    public void deleteKereta(int id) {
        this.koneksi.ManipulasiData("delete kereta where id_kereta=" + id);
    }

    public void deleteRute(int id) {
        this.koneksi.ManipulasiData("delete rute where id_rute=" + id);
    }

    public void deleteTiket(int id) {
        this.koneksi.ManipulasiData("delete tiket where id_tiet=" + id);
    }

    public void insertTiket(Tiket t) {
        try {
            if (t.getId_tiket() > 0) {
                System.out.println("UPDATE");
                this.koneksi.ManipulasiData("");
            } else {
                System.out.println("INSERT");
                this.koneksi.ManipulasiData("");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertRute(Rute r) {
        try {
            if (r.getId_rute() > 0) {
                System.out.println("UPDATE");
                this.koneksi.ManipulasiData("");
            } else {
                System.out.println("INSERT");
                this.koneksi.ManipulasiData("");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertKereta(Kereta k) {
        try {
            if (k.getId_kereta() > 0) {
                System.out.println("UPDATE");
                this.koneksi.ManipulasiData("");
            } else {
                System.out.println("INSERT");
                this.koneksi.ManipulasiData("");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

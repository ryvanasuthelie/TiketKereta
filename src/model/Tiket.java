/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author USER
 */
public class Tiket {
 
    private int id_tiket;
    private int id_kereta;
    private int id_rute;
    private int harga_tiket;
    private String tanggal_keberangkatan;

    public int getId_tiket() {
        return id_tiket;
    }

    public void setId_tiket(int id_tiket) {
        this.id_tiket = id_tiket;
    }

    public int getId_kereta() {
        return id_kereta;
    }

    public void setId_kereta(int id_kereta) {
        this.id_kereta = id_kereta;
    }

    public int getId_rute() {
        return id_rute;
    }

    public void setId_rute(int id_rute) {
        this.id_rute = id_rute;
    }

    public int getHarga_tiket() {
        return harga_tiket;
    }

    public void setHarga_tiket(int harga_tiket) {
        this.harga_tiket = harga_tiket;
    }

    public String getTanggal_keberangkatan() {
        return tanggal_keberangkatan;
    }

    public void setTanggal_keberangkatan(String tanggal_keberangkatan) {
        this.tanggal_keberangkatan = tanggal_keberangkatan;
    }
    
    
}

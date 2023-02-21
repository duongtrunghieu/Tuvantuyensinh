/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Duong Hieu
 */
public class NhomNguoi {
    private int id;
    private String ten;
    private String mota;
    private String nghe_phu_hop;

    public NhomNguoi() {
    }

    public NhomNguoi(int id, String ten, String mota, String nghe_phu_hop) {
        this.id = id;
        this.ten = ten;
        this.mota = mota;
        this.nghe_phu_hop = nghe_phu_hop;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getNghe_phu_hop() {
        return nghe_phu_hop;
    }

    public void setNghe_phu_hop(String nghe_phu_hop) {
        this.nghe_phu_hop = nghe_phu_hop;
    }
    
    @Override
    public String toString(){
        return id+""+ten+" "+mota+" "+nghe_phu_hop;
    }
}

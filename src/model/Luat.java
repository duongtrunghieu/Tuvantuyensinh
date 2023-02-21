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
public class Luat {
    private int id;
    private NhomNguoi nn;
    private DiemDuKien diem;
    private HocPhi hp;
    private KhoiThi kt;
    private KhuVuc kv;
    private String ketQua;
    public Luat() {
    }

    public Luat(int id, NhomNguoi nn, DiemDuKien diem, HocPhi hp, KhoiThi kt, KhuVuc kv, String ketQua) {
        this.id = id;
        this.nn = nn;
        this.diem = diem;
        this.hp = hp;
        this.kt = kt;
        this.kv = kv;
        this.ketQua = ketQua;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public NhomNguoi getNn() {
        return nn;
    }

    public void setNn(NhomNguoi nn) {
        this.nn = nn;
    }

    public DiemDuKien getDiem() {
        return diem;
    }

    public void setDiem(DiemDuKien diem) {
        this.diem = diem;
    }

    public HocPhi getHp() {
        return hp;
    }

    public void setHp(HocPhi hp) {
        this.hp = hp;
    }

    public KhoiThi getKt() {
        return kt;
    }

    public void setKt(KhoiThi kt) {
        this.kt = kt;
    }

    public KhuVuc getKv() {
        return kv;
    }

    public void setKv(KhuVuc kv) {
        this.kv = kv;
    }

    public String getKetQua() {
        return ketQua;
    }

    public void setKetQua(String ketQua) {
        this.ketQua = ketQua;
    }

   
    @Override
    public String toString(){
        return id+"\n"+ nn.toString()+"\n" + diem.toString()+ "\n"+ hp.toString()+"\n"+ kt.toString()+"\n"+kv.toString()+"\n"+ketQua+"\n";
                
                
    }
}

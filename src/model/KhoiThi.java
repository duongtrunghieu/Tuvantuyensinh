
package model;


public class KhoiThi {
    private int id;
    private String ten;

    public KhoiThi() {
    }

    public KhoiThi(int id, String ten) {
        this.id = id;
        this.ten = ten;
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
    
    public String toString(){
        return id+" "+ten;
    }
}

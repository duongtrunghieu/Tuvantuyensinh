
package model;


public class HocPhi {
    private int id;
    private String loai;

    public HocPhi() {
    }

    public HocPhi(int id, String loai) {
        this.id = id;
        this.loai = loai;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }
    
    public String toString(){
        return id+" "+loai;
    }
}

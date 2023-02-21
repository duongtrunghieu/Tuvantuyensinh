
package model;

public class Case {
    private int id;
    private int[] dac_diem  = new int[37];
    private NhomNguoi nhom_nguoi;

    public Case() {
    }

    public Case(int id, int[] dac_diem, NhomNguoi nhom_nguoi) {
        this.id = id;
        this.dac_diem = dac_diem;
        this.nhom_nguoi = nhom_nguoi;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int[] getDac_diem() {
        return dac_diem;
    }

    public void setDac_diem(int[] dac_diem) {
        this.dac_diem = dac_diem;
    }

    public NhomNguoi getNhom_nguoi() {
        return nhom_nguoi;
    }

    public void setNhom_nguoi(NhomNguoi nhom_nguoi) {
        this.nhom_nguoi = nhom_nguoi;
    }
    
    public String toString(){
        String str = id+" ";
        for( int i=1 ; i<=36 ; i++ ){
            str += dac_diem[i]+"\n";
        }
        str+= nhom_nguoi.getTen();
        return str;
    }
    
    
}

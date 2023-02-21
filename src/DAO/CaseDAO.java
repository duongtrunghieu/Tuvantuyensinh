package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Case;
import model.NhomNguoi;

public class CaseDAO extends DAO {

      public NhomNguoi getNhomNguoiByID( int id){
           String sql = "select * from nhom_nguoi where id=?";
        NhomNguoi n = new NhomNguoi();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if ( rs.next()) {
                n.setId(rs.getInt("id"));
                n.setTen(rs.getString("ten_nhom"));
                n.setMota(rs.getString("mo_ta"));
                n.setNghe_phu_hop(rs.getString("nghe_phu_hop"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return n;      
      }
      public ArrayList<NhomNguoi> getAllNhomNguoi(){
           String sql = "select * from nhom_nguoi";
         ArrayList<NhomNguoi> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while ( rs.next()) {
                NhomNguoi n = new NhomNguoi();
                n.setId(rs.getInt("id"));
                n.setTen(rs.getString("ten_nhom"));
                n.setMota(rs.getString("mo_ta"));
                n.setNghe_phu_hop(rs.getString("nghe_phu_hop"));
                list.add(n);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;      
      }
      public ArrayList<Case> getAll(){
           String sql = "select * from case_dac_diem";
           CaseDAO  cd  = new CaseDAO();
        ArrayList<Case> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while ( rs.next()) {
                Case c = new Case();
                c.setId(rs.getInt("id"));
                int[] a = new int[37];
                for( int i=1 ; i<=36 ; i++ ){
                    String str = "dd"+i;
                    a[i] = rs.getInt(str);
                }
                c.setDac_diem(a);
                int n = rs.getInt("nhom_nguoi_id");
                NhomNguoi nhom_nguoi = cd.getNhomNguoiByID(n);
                c.setNhom_nguoi(nhom_nguoi);
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;      
      }
      
    public boolean add(Case c) {
        String sql = "insert into case_dac_diem(dd1,dd2,dd3,dd4,dd5,dd6,dd7,dd8,dd9,dd10,dd11,dd12,"
                + "dd13,dd14,dd15,dd16,dd17,dd18,dd19,dd20,dd21,dd22,dd23,dd24,"
                + "dd25,dd26,dd27,dd28,dd29,dd30,dd31,dd32,dd33,dd34,dd35,dd36,nhom_nguoi_id) values("
                + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"
                + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            for( int i=1 ; i<=36; i++){
                ps.setInt(i, c.getDac_diem()[i]);
            }
             ps.setInt(37, c.getNhom_nguoi().getId());
            ps.execute();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    
    }
    
    public static void main(String[] args) {
       // Contact c = new Contact(1, "An Dinh", "06727721", "Ha Noi");
        CaseDAO cd = new CaseDAO();
        ArrayList<Case> list = cd.getAll();
        for( Case c:list){
            System.out.println(c.toString());
        }

    }
}

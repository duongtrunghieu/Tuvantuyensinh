package DAO;

import static DAO.DAO.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.HocPhi;
import model.HocPhi;
import model.NhomNguoi;

/**
 *
 * @author Duong Hieu
 */
public class HocPhiDAO extends DAO{

    public HocPhi getHocPhiByID(int id) {
        String sql = "select * from hoc_phi where id=?";
        HocPhi i = new HocPhi();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                i.setId(rs.getInt("id"));
                i.setLoai(rs.getString("loai"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
     public ArrayList<HocPhi> getList(){
        ArrayList<HocPhi> list = new ArrayList<>();
        String sql = "select * from hoc_phi";
       
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                HocPhi i = new HocPhi();
                i.setId(rs.getInt("id"));
                i.setLoai(rs.getString("loai"));
                list.add(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
        
        
    }
    public static void main(String[] args) {
        HocPhiDAO i= new HocPhiDAO();
        System.out.println(i.getHocPhiByID(1).toString());
        ArrayList<HocPhi> list = i.getList();
        for( HocPhi d: list){
            System.out.println(d.toString());
        }
    }
}

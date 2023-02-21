package DAO;

import static DAO.DAO.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.DiemDuKien;
import model.NhomNguoi;

/**
 *
 * @author Duong Hieu
 */
public class DiemDuKienDAO extends DAO{

    public DiemDuKien getDiemDuKienByID(int id) {
        String sql = "select * from diem_du_kien where id=?";
        DiemDuKien i = new DiemDuKien();
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
    
    public ArrayList<DiemDuKien> getList(){
        ArrayList<DiemDuKien> list = new ArrayList<>();
        String sql = "select * from diem_du_kien";
       
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DiemDuKien i = new DiemDuKien();
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
        DiemDuKienDAO i= new DiemDuKienDAO();
        ArrayList<DiemDuKien> list = i.getList();
        for( DiemDuKien d: list){
            System.out.println(d.toString());
        }
    }
}

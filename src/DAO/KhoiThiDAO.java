package DAO;

import static DAO.DAO.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.KhoiThi;
import model.KhoiThi;
import model.NhomNguoi;

/**
 *
 * @author Duong Hieu
 */
public class KhoiThiDAO extends DAO{

    public KhoiThi getKhoiThiByID(int id) {
        String sql = "select * from khoi_thi where id=?";
        KhoiThi i = new KhoiThi();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                i.setId(rs.getInt("id"));
                i.setTen(rs.getString("ten"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
     public ArrayList<KhoiThi> getList(){
        ArrayList<KhoiThi> list = new ArrayList<>();
        String sql = "select * from khoi_thi";
       
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                KhoiThi i = new KhoiThi();
                i.setId(rs.getInt("id"));
                i.setTen(rs.getString("ten"));
                list.add(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
        
        
    }
    public static void main(String[] args) {
        KhoiThiDAO i= new KhoiThiDAO();
        System.out.println(i.getKhoiThiByID(1).toString());
        ArrayList<KhoiThi> list = i.getList();
        for( KhoiThi d: list){
            System.out.println(d.toString());
        }
    }
}

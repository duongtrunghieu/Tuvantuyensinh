package DAO;

import static DAO.DAO.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.KhuVuc;
import model.KhuVuc;
import model.NhomNguoi;

/**
 *
 * @author Duong Hieu
 */
public class KhuVucDAO extends DAO{

    public KhuVuc getKhuVucByID(int id) {
        String sql = "select * from khu_vuc where id=?";
        KhuVuc i = new KhuVuc();
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
     public ArrayList<KhuVuc> getList(){
        ArrayList<KhuVuc> list = new ArrayList<>();
        String sql = "select * from khu_vuc";
       
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                KhuVuc i = new KhuVuc();
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
        KhuVucDAO i= new KhuVucDAO();
        System.out.println(i.getKhuVucByID(1).toString());
        ArrayList<KhuVuc> list = i.getList();
        for( KhuVuc d: list){
            System.out.println(d.toString());
        }
    }
}

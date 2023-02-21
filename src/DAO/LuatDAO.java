/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.DAO.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Case;
import model.Luat;
import model.NhomNguoi;

public class LuatDAO extends DAO {

    public boolean add(int nn_id, int kt_id, int diem_id, int hp_id , int kv_id, String kq) {
        String sql = "insert into luat(nhom_nguoi_id, khoi_thi_id,hoc_phi_id, diem_du_kien_id, khu_vuc_id, ket_qua) values(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, nn_id);
            ps.setInt(2, kt_id);
            ps.setInt(3, diem_id);
            ps.setInt(4, hp_id );
            ps.setInt(5, kv_id);
            ps.setString(6, kq);
            ps.execute();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public ArrayList<Luat> retrieve(int nn_id, int kt_id, int diem_id, int hp_id , int kv_id){
         String sql = "select * from luat where nhom_nguoi_id=? and khoi_thi_id=? and hoc_phi_id=? and diem_du_kien_id=? and khu_vuc_id=? ";
         DiemDuKienDAO ddkDAO = new DiemDuKienDAO();
         HocPhiDAO hpDAO = new HocPhiDAO();
         KhoiThiDAO ktDAO  = new KhoiThiDAO();
         KhuVucDAO kvDAO = new KhuVucDAO();
         CaseDAO cDAO = new CaseDAO(); 
        ArrayList<Luat> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, nn_id);
            ps.setInt(2, kt_id);
            ps.setInt(4, diem_id);
            ps.setInt(3, hp_id );
            ps.setInt(5, kv_id);
            ResultSet rs = ps.executeQuery();
            while ( rs.next()) {
                Luat luat = new Luat();
                luat.setId(rs.getInt("id"));
                luat.setDiem(ddkDAO.getDiemDuKienByID(rs.getInt("diem_du_kien_id")));
                luat.setHp(hpDAO.getHocPhiByID(rs.getInt("hoc_phi_id")));
                luat.setNn(cDAO.getNhomNguoiByID(rs.getInt("nhom_nguoi_id")));
                luat.setKetQua(rs.getString("ket_qua"));
                luat.setKt(ktDAO.getKhoiThiByID(rs.getInt("khoi_thi_id")));
                luat.setKv(kvDAO.getKhuVucByID(rs.getInt("khu_vuc_id")));
            list.add(luat);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;      
      }
    
    public static void main(String[] args) {
        LuatDAO ld = new LuatDAO();
        ArrayList<Luat> list = ld.retrieve(1, 1, 2, 3, 1);
        System.out.println(list.size());
        for( Luat i: list){
            System.out.println(i.toString());
        }
    }
}

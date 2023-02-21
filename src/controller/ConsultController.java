package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DiemDuKienDAO;
import DAO.HocPhiDAO;
import DAO.KhoiThiDAO;
import DAO.KhuVucDAO;
import DAO.LuatDAO;
import model.Case;
import model.DiemDuKien;
import model.HocPhi;
import model.KhoiThi;
import model.KhuVuc;
import model.Luat;

/**
 * Servlet implementation class ConsultController
 */
@WebServlet("/consult")
public class ConsultController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //get List value of Khoi Thi
        KhoiThiDAO ktd = new KhoiThiDAO();
        ArrayList<KhoiThi> listKt = ktd.getList();
        request.setAttribute("listKt", listKt);
        
        //get List value of Diem du kiem 
        DiemDuKienDAO ddkd = new DiemDuKienDAO();
        ArrayList<DiemDuKien> listDiem = ddkd.getList();
        request.setAttribute("listDiem", listDiem);
        
        //get value of Hoc Phi
        HocPhiDAO hpd = new HocPhiDAO();
        ArrayList<HocPhi> listHp = hpd.getList();
        request.setAttribute("listHp", listHp);
        
        //get value of Khu Vuc
        KhuVucDAO kvd = new KhuVucDAO();
        ArrayList<KhuVuc> listKv = kvd.getList();
        request.setAttribute("listKv", listKv);
        
        
        
        request.getRequestDispatcher("tuvan.jsp").forward(request, response);
    
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get nhom nguoi
		Case c = (Case)request.getSession().getAttribute("c");
		int nhom_nguoi_id = c.getNhom_nguoi().getId();
		System.out.println("Nhom nguoi: "+nhom_nguoi_id);
	
		
//		//get khoi thi
		int khoi_thi_id = Integer.parseInt( request.getParameter("kt") );
		System.out.println("Kt: "+khoi_thi_id);
		
//		// get hoc phi
		int hoc_phi_id = Integer.parseInt( request.getParameter("hp") );
		System.out.println("HP : "+hoc_phi_id);
////		
////	//get diem du kien
		int diem_du_kiem_id = Integer.parseInt( request.getParameter("diem") );
		System.out.println("Diem: "+diem_du_kiem_id);
////		
////	//get khu vuc
		int khu_vuc_id = Integer.parseInt( request.getParameter("kv") );
		System.out.println("Khu vuc: "+khu_vuc_id);
		
		
		// truy xuat
		LuatDAO ld = new LuatDAO();
        ArrayList<Luat> list = ld.retrieve(nhom_nguoi_id, khoi_thi_id, diem_du_kiem_id, hoc_phi_id, khu_vuc_id);
        
        //
        request.setAttribute("list", list);
        
        
        request.getRequestDispatcher("result.jsp").forward(request, response);
        
       
        
		
		
	}

}

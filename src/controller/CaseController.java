package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CaseDAO;
import model.Case;

/**
 * Servlet implementation class CaseController
 */
@WebServlet("/timNhomNguoi")
public class CaseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Case c = new Case();
	private float do_tuong_tu;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CaseController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("timNhomNguoi.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int[] a = c.getDac_diem();
		try {
			for (int i = 1; i <= 36; i++) {
				a[i] = Integer.parseInt(request.getParameter("tt" + i));
			}
			
		} catch (Exception e) {
			request.setAttribute("msg", "Vui lòng nhập nhập đúng giá trị!!!");
			request.getRequestDispatcher("timNhomNguoi.jsp").forward(request, response);
		}

		// check nhập giá trị từ 0 đến 4
		if (!check(a)) {
			request.setAttribute("msg", "Vui lòng nhập nhập đúng giá trị!!!");
			request.getRequestDispatcher("timNhomNguoi.jsp").forward(request, response);
		} else {
			//set dac diem
			c.setDac_diem(a);
			Case case_tuong_tu = timCaseGiongNhat();
			System.out.println("id " + case_tuong_tu.getId());
			
			//set nhom nguoi
			c.setNhom_nguoi(case_tuong_tu.getNhom_nguoi());
			if (do_tuong_tu != 1) {
				CaseDAO cd = new CaseDAO();
				cd.add(c);
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("c", c);
			
			
			//redirect to  tuvan.jsp
			response.sendRedirect(request.getContextPath() + "/consult");
			
		}
	}

	public boolean check(int[] a) {
		for (int i = 1; i <= 36; i++) {
			if (a[i] < 0 || a[i] > 4) {
				return false;
			}
		}
		return true;
	}

	private Case timCaseGiongNhat() {
		
		CaseDAO cd = new CaseDAO();
		// laasy tat ca case trong CSDL
		ArrayList<Case> list = cd.getAll();
		Case res = new Case();
		float s = -99;
		// duyet tat ca cac case
		for (Case i : list) {
			System.out.println(tinhDoTuongTu(c, i));
			if (tinhDoTuongTu(c, i) > s) {
				res = i;
				s = tinhDoTuongTu(c, i);
			}

		}
		do_tuong_tu = s;
		return res;
	}

	public float tinhDoTuongTu(Case c1, Case c2) {
		float res = 0;
		int[] trongSo = new int[37];
	
		
		// set trong so
		for (int i = 1; i <= 12; i++) {
			trongSo[i] = 3;
		}
		for (int i = 13; i <= 24; i++) {
			trongSo[i] = 2;
		}
		for (int i = 25; i <= 36; i++) {
			trongSo[i] = 1;
		}
		int[] a1 = c1.getDac_diem();
		int[] a2 = c2.getDac_diem();
		for (int i = 1; i <= 36; i++) {
			res += (float) trongSo[i] * (1 - abs(a1[i], a2[i]) / (float) 4);
		}
		return res / 72;
	}

	public int abs(int a, int b) {
		if (a > b) {
			return a - b;
		} else {
			return b - a;
		}
	}

}

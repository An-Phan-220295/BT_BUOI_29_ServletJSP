package quanLySanPham;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "QLSP", urlPatterns = { "/qlsp" })
public class QLSP extends HttpServlet {
	List<SanPham> list = new ArrayList<SanPham>();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("QLSP.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String tensp = "";
		int soLuong = 0;
		int giaBan = 0;
		
		if (req.getParameter("clear") != null) {
			 list.clear();
		}
		if (req.getParameter("delete") != null) {
			 list.remove(list.size()-1);
		}
		
//		if(req.getParameter("edit") != null)
			
		else
		{	try {
				tensp = req.getParameter("tensp");
				soLuong = Integer.valueOf(req.getParameter("soLuong"));
				giaBan =  Integer.valueOf(req.getParameter("giaBan"));
					
				SanPham sanPham = new SanPham();
				sanPham.setTen(tensp);
				sanPham.setSoLuong(soLuong);
				sanPham.setGiaBan(giaBan);
				list.add(sanPham);
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		req.setAttribute("ListSanPham", list);
		req.getRequestDispatcher("QLSP.jsp").forward(req, resp);
		
	}
}

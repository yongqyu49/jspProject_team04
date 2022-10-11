package service.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.CommandProcess;
import dao.ReviewBoardDAO;

public class ReviewDeleteProService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("QADeleteProService Start ... ");
		
		
		try {
			int rb_id = Integer.parseInt(request.getParameter("rb_id"));
			int product_id = Integer.parseInt(request.getParameter("product_id"));
			int gender = Integer.parseInt(request.getParameter("gender"));
			String show = request.getParameter("show");
			String pageNum = request.getParameter("pageNum");
			
			ReviewBoardDAO rbd = ReviewBoardDAO.getInstance();
			
			int result = rbd.delete(rb_id);
			
			request.setAttribute("rb_id", rb_id);
			request.setAttribute("result", result);
			request.setAttribute("show", show);
			request.setAttribute("product_id", product_id);
			request.setAttribute("gender", gender);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "reviewDeletePro.jsp";
	}

}

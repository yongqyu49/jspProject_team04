package service.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import control.CommandProcess;

public class MypageUpdateFormService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 로그인 여부
		HttpSession session = request.getSession();
				if(session.getAttribute("mem_id") == null) {
					return "/member/loginCheck.jsp";
		}

		
		request.setAttribute("active", "update");
		request.setAttribute("display", "myPagePrivateInfo.jsp");
		
		return "/mypage/myPage.jsp";
	}
	
}
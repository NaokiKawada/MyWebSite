package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UserDataBeans;

/**
 * Servlet implementation class MyPageUpdateConfirm
 */
@WebServlet("/MyPageUpdateConfirm")
public class MyPageUpdateConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*文字化け対策*/
		request.setCharacterEncoding("UTF-8");

		//セッション開始
		HttpSession session = request.getSession();
		try {
			//エラーメッセージを格納する変数
			String validationMessage = "";

			UserDataBeans udb = new UserDataBeans();
			udb.setUpdateUserDataBeansInfo(request.getParameter("name"),request.getParameter("loginid"),request.getParameter("address"), (int) session.getAttribute("userId"));

			//バリデーションエラーメッセージがないなら確認画面へ
			if(validationMessage.length() == 0){
				//確認画面へ
				request.setAttribute("udb",udb);
			  	  RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/mypageupdateconfirm.jsp");
			        dispatcher.forward(request, response);
			        }else {
				//セッションにエラーメッセージを持たせてユーザー画面へ
				session.setAttribute("validationMessage", validationMessage);
				response.sendRedirect("UserData");
			}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

}

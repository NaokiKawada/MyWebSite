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
import dao.UserDAO;

/**
 * Servlet implementation class LoginResult
 */
@WebServlet("/LoginResult")
public class LoginResult extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*文字化け対策*/
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		try {
			//パラメーターから取得
			String loginId = request.getParameter("login_id");
			String password = request.getParameter("password");

			//ユーザーIDを取得
			int userId = UserDAO.getUserId(loginId, password);


			UserDataBeans userInfo = UserDAO.getInstance().getUserDataBeansByUserId(userId);

			//ユーザーIDが取得できたなら
			if (userId != 0) {
				session.setAttribute("isLogin", true);
				session.setAttribute("userId", userId);
			    session.setAttribute("userInfo", userInfo);

				String returnStrUrl = (String) EcHelper.cutSessionAttribute(session, "returnStrUrl");

				//ログイン前ページにリダイレクト。指定がない場合Index
				response.sendRedirect(returnStrUrl!=null?returnStrUrl:"Index");
			} else {
				session.setAttribute("loginId", loginId);
				session.setAttribute("errormessa", "IDまたはパスワードが違います。");

			  	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
			    dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

}

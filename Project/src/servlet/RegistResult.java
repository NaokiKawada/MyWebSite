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
 * Servlet implementation class RegistResult
 */
@WebServlet("/RegistResult")
public class RegistResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		try {

			String inputUserName = request.getParameter("name");
			String inputUserAddress = request.getParameter("address");
			String inputLoginId = request.getParameter("loginid");
			String inputPassword = request.getParameter("password");
			UserDataBeans udb = new UserDataBeans();
			udb.setName(inputUserName);
			udb.setAddress(inputUserAddress);
			udb.setLoginId(inputLoginId);
			udb.setPassword(inputPassword);

			// 登録が確定されたかどうか確認するための変数
			String confirmed = request.getParameter("confirm_button");

			switch (confirmed) {
			case "cancel":
				session.setAttribute("udb", udb);
				response.sendRedirect("Regist");
				break;

			case "regist":
				UserDAO.getInstance().insertUser(udb);
				request.setAttribute("udb", udb);
			  	  RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/registresult.jsp");
			        dispatcher.forward(request, response);
			        break;
			}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}
}
package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserDataBeans;
import dao.UserDAO;

/**
 * Servlet implementation class UserDetail
 */
@WebServlet("/UserDetail")
public class UserDetail extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int UserId = Integer.parseInt(request.getParameter("id"));


		UserDAO dao = new UserDAO();
		UserDataBeans User;
		try {
			User = dao.getUserDataBeansByUserId(UserId);


        request.setAttribute("user", User);

  	  	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/userdetail.jsp");
        dispatcher.forward(request, response);
	  }
	catch (SQLException e) {
		// TODO 自動生成された catch ブロック
		e.printStackTrace();
	}
	}
}
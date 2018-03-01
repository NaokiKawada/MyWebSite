package servlet;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class UserList
 */
@WebServlet("/UserList")
public class UserList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();


		UserDAO dao = new UserDAO();
        List<UserDataBeans> userList = dao.findAll();


		// 取得したリストをリクエストスコープに保存

        request.setAttribute("userList", userList);

  	  	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/userlist.jsp");
        dispatcher.forward(request, response);
	}
}

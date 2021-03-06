package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ItemDataBeans;
import dao.ItemDAO;

/**
 * Servlet implementation class ItemDetail
 */
@WebServlet("/ItemDetail")
public class ItemDetail extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int itemId = Integer.parseInt(request.getParameter("id"));


		ItemDAO dao = new ItemDAO();
		ItemDataBeans item;
		try {
			item = dao.getItemByItemID(itemId);


        request.setAttribute("item", item);

  	  	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/itemdetail.jsp");
        dispatcher.forward(request, response);
	  }
	catch (SQLException e) {
		// TODO 自動生成された catch ブロック
		e.printStackTrace();
	}
	}
}

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
 * Servlet implementation class ItemUpDate
 */
@WebServlet("/ItemUpDate")
public class ItemUpDate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int itemId = Integer.parseInt(request.getParameter("id"));


		ItemDAO dao = new ItemDAO();
		ItemDataBeans item;
		try {
			item = dao.getItemByItemID(itemId);


        request.setAttribute("item", item);

  	  	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/itemupdate.jsp");
        dispatcher.forward(request, response);
	  }
	catch (SQLException e) {
		// TODO 自動生成された catch ブロック
		e.printStackTrace();
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

		int itemId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String detail = request.getParameter("detail");
        String img = request.getParameter("img");

        ItemDAO.itemupdate(itemId,name,detail,img);
        response.sendRedirect("ItemList");
      }

}

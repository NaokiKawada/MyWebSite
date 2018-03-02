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

import beans.ItemDataBeans;
import dao.ItemDAO;

/**
 * Servlet implementation class ItemList
 */
@WebServlet("/ItemList")
public class ItemList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();


		ItemDAO dao = new ItemDAO();
        List<ItemDataBeans> itemList = dao.findAll();


		// 取得したリストをリクエストスコープに保存

        request.setAttribute("itemList", itemList);

  	  	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/itemlist.jsp");
        dispatcher.forward(request, response);
	}


}

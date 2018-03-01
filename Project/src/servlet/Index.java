package servlet;

import java.io.IOException;
import java.util.ArrayList;

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
 * EC
 *
 * トップ画面　　ランダムに9つのアイテムを表示する
 *
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {

			//商品情報を取得
			ArrayList<ItemDataBeans>itemList = ItemDAO.getRandItem(9);

			//リクエストスコープにセット
			request.setAttribute("itemList", itemList);

			//セッションにsearchWordが入っていたら破棄する
			String searchWord = (String)session.getAttribute("searchWord");
			if(searchWord != null) {
				session.removeAttribute("searchWord");
			}

		  	  RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/index.jsp");
		        dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

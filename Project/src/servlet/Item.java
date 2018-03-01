package servlet;

/*
 *
 * ユニフォーーーム
 *
 *
 */


import java.io.IOException;

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
 * Servlet implementation class Item
 */
@WebServlet("/Item")
public class Item extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 商品詳細画面   ユニフォーーーム
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			//選択された商品のIDを型変換し利用
			int id = Integer.parseInt(request.getParameter("item_id"));
			//戻るページ表示用
			int pageNum = Integer.parseInt(request.getParameter("page_num")==null?"1":request.getParameter("page_num"));
			//対象のアイテム情報を取得
			ItemDataBeans item = ItemDAO.getInstance().getItemByItemID(id);
			//リクエストパラメーターにセット
			request.setAttribute("item", item);
			request.setAttribute("pageNum", pageNum);

		  	  RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/item.jsp");
		        dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

}

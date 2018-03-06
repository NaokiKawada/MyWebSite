package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ItemDAO;

/**
 * Servlet implementation class NewItem
 */
@WebServlet("/NewItem")
public class NewItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();


	  	  RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newitem.jsp");
	        dispatcher.forward(request, response);
	        }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");




		int itemid = Integer.parseInt(request.getParameter("itemid"));
        String name = request.getParameter("name");
        String detail = request.getParameter("detail");
        int price = 15000;
        String img = request.getParameter("img");

        ItemDAO.itemadd(itemid,name,detail,price,img);
        response.sendRedirect("ItemList");
      }

	}


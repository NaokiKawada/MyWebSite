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

/**
 * Servlet implementation class Regist
 */
@WebServlet("/Regist")
public class Regist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * ユーザー登録画面へ遷移
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		//入力内容に誤りがある、確認画面で戻るボタン押し下げでアクセスしてきたときはセッションから入力情報を取得
		UserDataBeans udb = session.getAttribute("udb") != null?(UserDataBeans) EcHelper.cutSessionAttribute(session, "udb"):new UserDataBeans();
		String validationMessage = (String) EcHelper.cutSessionAttribute(session, "validationMessage");

		request.setAttribute("udb", udb);
		request.setAttribute("validationMessage",validationMessage);

	  	  RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/regist.jsp");
	        dispatcher.forward(request, response);	}



}


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	<div class="container ">
		<br /> <br />
		<div align="center">
			<h1>ユーザ削除確認</h1>
		</div>
		<br /> <a>ログインID :${user.loginid}<br /> を本当に削除してもよろしいでしょうか。
		</a>
		<form action="UserDeleteServlet" method="post">

			<br />
			<div style="float: left;">
				<a class="btn bg-dark text-white" href="file:///C:/Users/naoki/Documents/git/MyWebSite/Mock/itemlist.html" role="button">
					キャンセル </a>
			</div>
			<div style="float: left;">
				<a>　</a>
			</div>

			<div style="float: left;">
				<input type="submit" class="btn bg-dark text-white"
					 role="button" value="　　OK　　"> <input
					type="hidden" name="loginid" value="${user.loginid}">
			</div>

		</form>

	</div>
   </body>
  </html>
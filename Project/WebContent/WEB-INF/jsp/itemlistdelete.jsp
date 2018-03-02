<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

<div class="container">
<br><br>
					<h3 class=" col s12 light" align="center">ユーザ削除確認</h5>

					<br><br>
    <div class="row">
    	<div class="col">
    	</div>
    	<div class="col-8">
					<br /> <a>アイテムID : ${item.id}<br>
		                     アイテム名 : ${item.name}<br>を本当に削除してもよろしいでしょうか。
		</a>
		<form action="ItemDelete" method="post">

			<br />
			<div style="float: left;">
				<a class="btn bg-dark text-white" href="ItemList" role="button">
					キャンセル </a>
			</div>

			<div style="float: left;" class="marginleft">
				<input type="submit" class="btn bg-dark text-white"
					 role="button" value="　　OK　　"> <input
					type="hidden" name="loginid" value="${item.id}">
			</div>

		</form>
		</div>


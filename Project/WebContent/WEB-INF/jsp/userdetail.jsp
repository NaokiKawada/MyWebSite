<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

<div class="container">
<br><br>
					<h3 class=" col s12 light" align="center">アイテム詳細</h5>

					<br><br>
    <div class="row">
    	<div class="col">
    	</div>
    	<div class="col-8">
			<form>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">ユーザID</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="${user.id}">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">ユーザ名</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="${user.name}">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">住所</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="${user.address}">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="staticEmail" class="col-sm-2 col-form-label">ログインID</label>
			    <div class="col-sm-10">
			      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="${user.loginId}">
			    </div>
			  </div>
			</form>
		</div>

	</div>
	<div class="container">
	<br><br>
			<div class="marginleft5">
      	  <a class="btn bg-dark text-white btn-sm" href="UserList" role="button">戻る</a>
	    </div>
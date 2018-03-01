<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	  <div class="container "><br/><br/>

	    <div align="center">
	    <h1>ユーザ新規登録</h1></div><br/>


<br>
<form action="RegistConfirm" method="post">
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">名前</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="Name" name="name">
    </div>
  </div>
    <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">住所</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="address" name="address">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">ログインID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="Login ID" name = "loginid">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">パスワード</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword" placeholder="Password" name = "password">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">パスワード(確認)</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword" placeholder="Password" name = "password2">
    </div>
  </div>
<br>
<br/>
  <div align="center">
  <button type="submit" name="action" class="btn btn-dark">　　確　認　　</button>
  </div>
</form>


			<br><br>
  <div align="left">
  <a href="Index" class="btn btn-dark">トップへ戻る</a>
  </div>
<br><br>
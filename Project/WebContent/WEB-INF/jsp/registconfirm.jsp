<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	  <div class="container "><br/><br/>

	    <div align="center">
	    <h1>ユーザ新規登録</h1></div><br/>


<br>
<form action="RegistResult" method="post">
  <div class="form-group row marginleft4">
    <label for="inputPassword" class="col-sm-2 col-form-label">名前</label>
    <div class="col-sm-10">
      <input type="" class="form-control-plaintext" value="${udb.name}"  name="name">
    </div>
  </div>
    <div class="form-group row marginleft4">
    <label for="inputPassword" class="col-sm-2 col-form-label">住所</label>
    <div class="col-sm-10">
      <input type="" class="form-control-plaintext" value="${udb.address}" name="address">
    </div>
  </div>
  <div class="form-group row marginleft4">
    <label for="inputPassword" class="col-sm-2 col-form-label">ログインID</label>
    <div class="col-sm-10">
      <input type="" class="form-control-plaintext" value="${udb.loginId}" name = "loginid">
    </div>
  </div>
  <div class="form-group row marginleft4">
    <label for="inputPassword" class="col-sm-2 col-form-label">パスワード</label>
    <div class="col-sm-10">
      <input type="" class="form-control-plaintext" value="${udb.password}" name = "password">
    </div>
  </div>

<br>
							<div class="row">
								<div class="col s12">
									<p align="center">上記内容で登録してよろしいでしょうか?</p>
								</div>
							</div>
							 <div align="center">
							<div class="row">
								<div class="col s6 center-align">
									<button hlef="Regist" class="btn btn-dark marginleft3" type="submit" name="confirm_button" value="cancel"> 修　正 </button>
								</div>
								<div class="col s6 center-align">
									<button class="btn btn-dark marginright3" type="submit" name="confirm_button" value="regist"> 登　録 </button>
								</div>

							</div>
  </div>
</form>


			<br><br>
  <div align="left">
  <a href="Index" class="btn btn-dark">トップへ戻る</a>
  </div>
<br><br>
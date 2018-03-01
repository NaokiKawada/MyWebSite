<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	  <div class="container "><br/><br/>

	    <div align="center">
	    <h1>ユーザ新規登録完了</h1></div><br/>


<br>
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

<br>
							<div class="row">
								<div class="col s12">
									<p align="center">上記内容で登録しました。</p>
								</div>
							</div>
							 <div align="center">
								<div align="center">
									<a href="Login" class="btn btn-dark" type="submit" name="confirm_button" value="cancel">ログイン画面へ </a>
								</div>


  </div>
<br><br>
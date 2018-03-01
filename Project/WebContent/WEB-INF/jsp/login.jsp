<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	<body>
	  <div class="container "><br/><br/>
	    <div align="center"><br>
	    <h1>ログイン</h1></div><br>
<form action="LoginResult" method="POST">
<br/>
  <div class="form-group">
    <label for="exampleInputEmail1">ログインID</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Login ID" name="login_id">
  </div>
  <br><br>
  <div class="form-group">
    <label for="exampleInputPassword1">パスワード</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
  </div>
  <br/><br>
  <div align="center">
  <button class="btn btn-primary" type="submit" name="action">Login</button>
  </div>
</form>
	  </div>



  </body>

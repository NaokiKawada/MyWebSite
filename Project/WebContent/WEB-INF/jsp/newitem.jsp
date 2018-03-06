<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	  <div class="container "><br/><br/>

	    <div align="center">
	    <h1>アイテム新規登録</h1></div><br/>

	    		<p class="text-danger">
  			${error}
		</p>

<form action="NewItem" method="post">
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">アイテムID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="Item ID" name = "itemid">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">アイテム名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="Item Name" name="name">
    </div>
  </div>

  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">商品説明</label>
    <div class="col-sm-10">
      <textarea name="detail" rows="5" cols="123" placeholder="  detail"></textarea>
    </div>
  </div>

<div>
<a>画像</a>
  <a class="marginleft6"><input type='file' name="img"></a>
</div>
<br>
<br/>
  <div align="center">
  <button type="submit" name="action" class="btn btn-dark">　　登 録　　</button>
  </div>
</form>
<br/>
<br/>

<div align="left">
      	  <a class="btn bg-dark text-white btn-sm" href="ItemList" role="button">戻る</a>
	    </div>
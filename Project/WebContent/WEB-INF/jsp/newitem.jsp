<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	  <div class="container "><br/><br/>

	    <div align="center">
	    <h1>ユーザ新規登録</h1></div><br/>

	    		<p class="text-danger">
  			${error}
		</p>

<form action="NewUserServlet" method="post">
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">アイテムID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="Item ID" name = "loginid">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">アイテム名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="Item Name" name="name">
    </div>
  </div>
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-2 col-form-label">サイズ</label><a>
					</a><a>　</a>
				<div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
  <label class="form-check-label" for="exampleRadios1">
    S
  </label>
</div>
				<a>　</a><div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
  <label class="form-check-label" for="exampleRadios1">
    M
  </label>
</div>
				<a>　</a><div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
  <label class="form-check-label" for="exampleRadios1">
    L
  </label>

</div></div>

  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">商品説明</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="Detail" name = "Detail">
    </div>
  </div>

    <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">タグ</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword" placeholder="ex) #real.madrid #レアル #ロナウド  #CR7" name = "tagu">
    </div>
  </div>

<div>
  <input type='file' />
</div>
<br>



<div class="btn-group-toggle" data-toggle="buttons"  align="center">
  <input type="submit" class="btn bg-dark text-white" role="button" value="　　登　録　　">
</div>
</form>
<br/>
<br/>

<div align="left">
      	  <a class="btn bg-dark text-white btn-sm" href="file:///C:/Users/naoki/Documents/git/MyWebSite/Mock/itemlist.html" role="button">戻る</a>
	    </div>
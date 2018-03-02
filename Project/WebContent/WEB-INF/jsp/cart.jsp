<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

<div class="container">
<br><br>
					<h3 class=" col s12 light" align="center">ショッピングカート</h5>
<form action="ItemDelete" method="POST">
 <div align="left">
  <button type="submit" name="action" class="btn btn-dark">削除する</button>

<a>　　</a>
  <a href="Buy" class="btn btn-dark">レジに進む</a>
 </div>
			<br> <br>
<div class="row">
<c:forEach var="cart" items="${cart}">
<div class="col-sm-4">
<div class="card marginunder2" style="width: 18rem;">
  <a href="Item?item_id=${cart.id}">
  <img class="card-img-top" src="img/${cart.fileName}" alt="Card image cap">
  </a>
  <div class="card-body">
    <p class="card-text">${cart.name}
						<br>${cart.price}円
						<br>${cart.size}サイズ</p>

<div class="custom-control custom-checkbox">
  <input type="checkbox" class="custom-control-input" id="${cart.id}" name="delete_item_id_list" value="${cart.id}">
  <label class="custom-control-label" for="${cart.id}">削除する</label>
</div>
</div>
</div>
</div>
</c:forEach>
</div>
</form>



			<br><br>
  <div align="left">
  <a href="Index" class="btn btn-dark">戻る</a>
  </div>
<br><br>
  </div>

</div>




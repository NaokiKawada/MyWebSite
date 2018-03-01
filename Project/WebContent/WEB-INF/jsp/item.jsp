<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

<div class="container">
<br><br>
					<h3 class=" col s12 light" align="center">商品詳細</h5>

			<br> <br>
			<div class="container">
			<div class="row">
				<div class="col s6">
					<div class="card">
						<div class="card-image">
							<img src="img/${item.fileName}" >
						</div>
					</div>
				</div>
				<div class="col s6">
					<h4>${item.name}</h4>
					<h5>${item.price}円</h5>
					<p>${item.detail}</p>
					<p>【お届け納期】<br>
   					ご注文いただいてから、最短翌日～1週間程度でお届け予定です。
   					</p>
<form action="ItemAdd" method="POST">


<div class="custom-control custom-radio marginunder">
  <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
  <label class="custom-control-label" for="customRadio1">S  (150cm ～ 165cm)</label>
</div>
<div class="custom-control custom-radio marginunder">
  <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
  <label class="custom-control-label" for="customRadio2">M (160cm ～ 175cm)</label>
</div>
<div class="custom-control custom-radio">
  <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
  <label class="custom-control-label" for="customRadio3">L  (170cm ～ 185cm)</label>
</div>
<br>

						<input type="hidden" name="item_id" value="${item.id}">
						<button class="btn btn-dark" type="submit" name="action" align="left">
							カートへ入れる
						</button>
					</form>
			</div>
			</div>
			<br><br>
  <div align="left">
  <a href="Index" class="btn btn-dark">戻る</a>
  </div>
<br><br>

  </body>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

<div class="container">
<br><br>
					<h3 class=" col s12 light" align="center">購入完了</h5>

			<br> <br>

<table class="table table-bordered">
  <thead>
    <tr>
      <td scope="col" align=center >購入日時</td>
      <td scope="col" align=center >配送方法</td>
      <td scope="col" align=center >合計金額</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>${resultBDB.formatDate}</td>
      <td align=right>${resultBDB.deliveryMethodName}</td>
      <td align=right>${resultBDB.totalPrice}円</td>
    </tr>
  </tbody>
</table>

<br><br>

<table class="table table-bordered">
  <thead>
    <tr>
      <td scope="col" align=center >商品名</td>
      <td scope="col" align=center >単価
      </td>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="buyIDBList" items="${buyIDBList}">
    <tr>
      <td>${buyIDBList.name}</td>
      <td align=right>${buyIDBList.price}円</td>
    </tr>
    </c:forEach>
        <tr>
      <td>${resultBDB.deliveryMethodName}</td>
      <td align=right>${resultBDB.deliveryMethodPrice}円</td>
    </tr>
  </tbody>
</table>


			<br>
  <a href="Index" class="btn btn-dark marginright2">トップへ戻る</a>
  <a href="MyPage" class="btn btn-dark">マイページへ進む</a>
<br><br>
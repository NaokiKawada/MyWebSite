<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

<div class="container">

<h3 class=" col s12 light titleArea" align="center">注文内容の確認</h3>

<table class="table table-bordered">
  <thead>
    <tr>
      <td scope="col" align=center >商品名</td>
      <td scope="col" align=center >単価</td>
      <td scope="col" align=center >小計</td>
    </tr>
  </thead>
  <tbody>

  <c:forEach var="cartIDBList" items="${cartIDBList}">
    <tr>
      <td>${cartIDBList.name}</td>
      <td align=right>${cartIDBList.price}円</td>
      <td align=right>${cartIDBList.price}円</td>
    </tr>
  </c:forEach>
    <tr>
      <td>${bdb.deliveryMethodName}</td>
      <td align=right></td>
      <td align=right>${bdb.deliveryMethodPrice}円</td>
    </tr>
    <tr>
      <td></td>
      <td align=right>合計</td>
      <td align=right>${bdb.totalPrice}円</td>
    </tr>
    <tr>
      <td  align=center colspan="3" >
     	<form action="BuyResult" method="post">
      <button type="submit" name="action" class="btn btn-dark">注文を確定する</button>
      　   </form>
      </td>
       </tr>
  </tbody>
</table>


<br>
  <div align="left">
  <a href="Buy" class="btn btn-dark">1つ前に戻る</a>
  </div>
<br><br>


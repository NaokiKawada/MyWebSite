<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

<div class="container">

<h3 class=" col s12 light titleArea" align="center">注文内容・配送方法の選択</h3>
<form action="Buyconfirm" method="POST">

<table class="table table-bordered">
  <thead>
    <tr>
      <td scope="col" align=center >商品名</td>
      <td scope="col" align=center >単価</td>
      <td scope="col" align=center >小計</td>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="cartInItem" items="${cart}">
    <tr>
      <td>${cartInItem.name}</td>
      <td align=right>${cartInItem.price}円</td>
      <td align=right>${cartInItem.price}円</td>
    </tr>
  </c:forEach>

    <tr>
      <td  align=right colspan="3" >
      <div class="btn-group">

<select class="custom-select custom-select " name="delivery_method_id">
  <option selected>配送方法</option>
  <option value="1">即日配送（＋500円）※昼の12時までなら本日中に配送</option>
  <option value="2">日付指定配送（＋300円）※お好きな日時で配送</option>
  <option value="3">通常配送（0円）※１週間程度で配送</option>
</select>
	  </div>
      </td>
       </tr>
    <tr>
      <td  align=center colspan="3" >
      <button type="submit" name="action" class="btn btn-dark">注文内容を確認する</button>
      </td>
       </tr>
  </tbody>
</table>

</form>

<br>
  <div align="left">
  <a href="Cart" class="btn btn-dark">カートへ戻る</a>
  </div>
<br><br>


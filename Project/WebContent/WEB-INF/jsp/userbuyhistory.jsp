<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />


	  <div class="container "><br/><br/>

	    <div align="center">
	    <h2 class="marginunder3">購入履歴詳細</h2></div><br/>

<div style="padding: 10px; margin-bottom: 10px; border: 5px double #333333; background-color: btn-dark;">
<table class="table">
  <thead class="thead-dark">
								<tr>
									<th class="center" style="width: 20%;"><div align="center">購入日時</div></th>
									<th class="center　marginleft3"><div align="center">配送方法</div></th>
									<th class="center" style="width: 20%"><div align="center">合計金額</div></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="center">${UserhistoryDataList.formatDate}</td>
									<td class="center　marginleft3"><div align="center">${UserhistoryDataList.deliveryMethodName}</div></td>
									<td class="center"><div align="center">${UserhistoryDataList.totalPrice}円</div></td>
								</tr>
							</tbody>
</table>
</div>


				</div>

		<br>
		<!--  購入履歴 -->

			  <div class="container "><br/><br/>

<div style="padding: 10px; margin-bottom: 10px; border: 5px double #333333; background-color: btn-dark;">
<table class="table">
  <thead class="thead-dark">
								<tr>
									<th align="center"><div align="center">商品名</div></th>
									<th align="center" style="width: 20%"><div align="center">単価</div></th>
								</tr>
							</thead>
							<tbody>
		<c:forEach var="detail" items="${UserHistoryList}">

								<tr>
									<td class="center"><div align="center">${detail.name}</div></td>
									<td class="center"><div align="center">${detail.price}円</div></td>
								</tr>
		</c:forEach>
								<tr>
									<td class="center"><div align="center">${UserhistoryDataList.deliveryMethodName}</div></td>
									<td class="center"><div align="center">${UserhistoryDataList.deliveryMethodPrice}円</div></td>
								</tr>
							</tbody>
						</table>
</div>

			<br><br>
  <div align="left">
  <a href="Index" class="btn btn-dark">買い物を続ける</a>
  <a>　　</a>
  <a href="MyPage" class="btn btn-dark">マイページへ</a>
  </div>
  			<br><br>

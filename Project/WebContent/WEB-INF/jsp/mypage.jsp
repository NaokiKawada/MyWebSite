<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />


	  <div class="container "><br/><br/>

	    <div align="center">
	    <h2 class="marginunder3">会員情報の更新・購入履歴</h2></div><br/>

<div style="padding: 10px; margin-bottom: 10px; border: 5px double #333333; background-color: btn-dark;">
<form action="MyPageUpdateConfirm" method="POST">
  <div class="form-row marginunder2">
    <div class="col">
      <label for="validationDefault01">name</label>
      <input type="text" class="form-control" id="validationDefault01" name="name" placeholder="First name" value="${udb.name}" required>
    </div>
    <div class="col">
      <label for="validationDefault02">Login ID</label>
      <input type="text" class="form-control" id="validationDefault02" name="loginid" placeholder="Last name" value="${udb.loginId}" required>
    </div>
  </div>
  <div class="form-row">
    <div class="col">
      <label for="validationDefault02">Address</label>
      <input type="text" class="form-control" id="validationDefault02" name="address" placeholder="Last name" value="${udb.address}" required>
    </div>
  </div>
  <br>
  <div align="center">
  <button  class="btn btn-primary marginunder2" type="submit" name="action">　更　新　</button>
  </div></form>


					</div>
				</div>
			</div>
		</div>
</div>
		<br>
		<!--  購入履歴 -->

			  <div class="container "><br/><br/>

<div style="padding: 10px; margin-bottom: 10px; border: 5px double #333333; background-color: btn-dark;">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col"></th>
      <th scope="col"align=center ><div align="center">購入日時</div></th>
      <th scope="col"align=center ><div align="center">配送方法</div></th>
      <th scope="col"align=center ><div align="center">合計金額</div></th>
    </tr>
  </thead>
  <tbody>
   <c:forEach var="userItem" items="${UserDataList}">
    <tr>
        <td scope="row" align="center"><a href="UserBuyHistoryDetail?buy_id=${userItem.id}" class="bt-samp41">▽</a></td>
		<td class="center">${userItem.formatDate}</td>
		<td class="center"><div align="center">${userItem.deliveryMethodName}</div></td>
		<td class="center"><div align="center">${userItem.totalPrice}円</div></td>
    </tr>
   </c:forEach>
  </tbody>
</table>
</div>

			<br><br>
  <div align="left">
  <a href="Index" class="btn btn-dark">買い物を続ける</a>
  </div>
  			<br><br>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />


	<br>
	<div class="container ">
		<br />
		<br />

		<div align="center">
			<h1>アイテム一覧</h1>
			<br />
			<div align="right">
				<a class="btn bg-dark text-white btn-sm" href="file:///C:/Users/naoki/Documents/git/MyWebSite/Mock/newitem.html" role="button">新規登録</a>
			</div>
			<br />
	<form action="UserList" method="post">
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-2 col-form-label">アイテムID</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputPassword" placeholder="Item ID" name="id">
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
</div>
				</div>

			<div  align="right">
						<input type="submit" class="btn bg-dark text-white"  role="button" value="　検　索　">
			</div>
	</form>

			<Hr class="text-light bg-dark">

			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div align="center">ID</div></th>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div align="center">アイテム名</div></th>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div align="center">詳細</div></th>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div align="center">価格</div></th>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div align="center">ファイル名</div></th>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div id="wrapper"></div></th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="itemList" items="${itemList}">
					<tr>
						<th scope="row">${itemList.id}</th>
						<td>${itemList.name}</td>
						<td>${itemList.detail}</td>
						<td>${itemList.price}円</td>
						<td>${itemList.fileName}</td>
						<td>
							<div align="center">
								<a class="btn bg-dark text-white btn-sm" href="ItemDetail?id=${itemList.id}"
									role="button"> 詳細 </a>

							    <a class="btn bg-dark text-white btn-sm" href="ItemUpDate?id=${itemList.id}"
									role="button"> 更新 </a>


								<a class="btn bg-dark text-white btn-sm" href="ItemListDelete?id=${itemList.id}"
									role="button"> 削除 </a>

							</div>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
</body>
</html>
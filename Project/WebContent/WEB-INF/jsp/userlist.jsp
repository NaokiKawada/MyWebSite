<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />


	<br>
	<div class="container ">
		<br />
		<br />

		<div align="center">
			<h1>ユーザ一覧</h1>
			<br />
			<div align="right">
				<a class="btn bg-dark text-white btn-sm" href="NewUserServlet?loginid=${user.loginid}" role="button">新規登録</a>
			</div>
			<br />
	<form action="UserList" method="post">
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-2 col-form-label">ユーザ名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputPassword" placeholder="User Name" name="name">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-2 col-form-label">住所</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputPassword" placeholder="User Adrress" name="Adrress">
					</div>
				</div>

				<div class="form-group row">
					<label for="inputPassword" class="col-sm-2 col-form-label">ログインID</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputPassword" placeholder="Login ID" name="Loginid">
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
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div align="center">ユーザ名</div></th>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div align="center">住所</div></th>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div align="center">ログインID</div></th>
						<th scope="col" class="p-3 mb-2 bg-dark text-white"><div id="wrapper"></div></th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="userList" items="${userList}">
					<tr>
						<th scope="row">${userList.name}</th>
						<td>${userList.address}</td>
						<td>${userList.loginId}</td>
						<td>
							<div align="center">
								<a class="btn bg-dark text-white btn-sm" href="UserDetail?id=${userList.id}"
									role="button"> 詳細 </a>

							    <a class="btn bg-dark text-white btn-sm" href="UserUpDate?id=${userList.id}"
									role="button"> 更新 </a>

								<a class="btn bg-dark text-white btn-sm" href="UserListDelete?id=${userList.id}"
									role="button"> 削除 </a>

							</div>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<br><br>
</body>
</html>
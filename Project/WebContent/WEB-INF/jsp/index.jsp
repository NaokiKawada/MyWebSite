<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	<br>
	<div class="text-center">
  <img src="img/header.jpg" class="rounded" alt="...">
</div>

	<Hr>

<div class="container">

<table class="table">

<h1 align="center">UNIFORM   SELECTION</h1>
<br><br>
 <tbody>
  <div class="row">
  <c:forEach var="item" items="${itemList}">

      <div class="col-sm-4">
        <p align="center"><a href="Item?item_id=${item.id}"><img src="img/${item.fileName}" class="rounded" width="200" height="200"></a>
      <br>${item.name}
      <br>${item.price}円
      </p>
      </div>

  </c:forEach>
  </div>

  </tbody>
</table>
 </body>
 <br/>

</div>
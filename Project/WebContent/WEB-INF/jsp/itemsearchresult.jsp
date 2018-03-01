<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="beans.ItemDataBeans" %>
<jsp:include page="/baselayout/head.jsp" />

	  <div class="container "><br/><br/>

	    <div align="left">
	    <h3>対象商品</h1></div>
	    			<p>
				検索結果${itemCount}件
			</p>


<br><br>
 <tbody>
  <div class="row">
  <c:forEach var="item" items="${searchResultItemList}">

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

 			<br><br>
  <div align="left">
  <a href="Index" class="btn btn-dark">戻る</a>
  </div>
<br><br>

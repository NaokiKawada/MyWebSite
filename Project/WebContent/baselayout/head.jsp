<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html lang="ja">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./css/bootstrap.css">

    <!-- original CSS -->
    <link rel="stylesheet" href="./css/original/common.css">

    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>



<nav class="navbar navbar-dark bg-dark">
<div class="container">
<a class="text-white" ><font size="2"></font><a align="right"class="text-white"><font size="2">Welcome!
<c:if test="${userInfo.name != null}">
${userInfo.name}様
</c:if>

<c:if test="${userInfo.name == null}">
ゲスト様
</c:if>

</td></font></a></nav></div>



<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
  <u><a class="navbar-brand" href="Index"><font size="6">UNITY</font></a></u>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


 <ul id="dropmenu"><br>
  <li><a class="bg-light">Team ▼</a>
    <ul>
      <li><a>Premier</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL TEAM</a></li>
          <li><a href="ItemSearchResult?search_word=Arsenal">Arsenal</a></li>
          <li><a href="ItemSearchResult?search_word=Chelsea">Chelsea</a></li>
          <li><a href="ItemSearchResult?search_word=Liverpool">Liverpool</a></li>
          <li><a href="ItemSearchResult?search_word=Manchester C">Manchester C</a></li>
          <li><a href="ItemSearchResult?search_word=Manchester U">Manchester U</a></li>
        </ul>
      </li>
      <li><a>Serie A</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL TEAM</a></li>
          <li><a href="ItemSearchResult?search_word=AC Milan">AC Milan</a></li>
          <li><a href="ItemSearchResult?search_word=Inter">Inter</a></li>
          <li><a href="ItemSearchResult?search_word=Juventus">Juventus</a></li>
          <li><a href="ItemSearchResult?search_word=Napoli">Napoli</a></li>
          <li><a href="ItemSearchResult?search_word=Roma">AS Roma</a></li>
        </ul>
      </li>
      <li><a>Liga</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL TEAM</a></li>
          <li><a href="ItemSearchResult?search_word=Barcelona">Barcelona</a></li>
          <li><a href="ItemSearchResult?search_word=Rea.Madrid">Rea.Madrid</a></li>
          <li><a href="ItemSearchResult?search_word=Atl.Madrid">Atl.Madrid</a></li>
          <li><a href="ItemSearchResult?search_word=Eibar">Eibar</a></li>
        </ul>
      </li>
      <li><a>Bundes</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL TEAM</a></li>
          <li><a href="ItemSearchResult?search_word=Bayern">Bayern</a></li>
          <li><a href="ItemSearchResult?search_word=Dortmund">Dortmund</a></li>
          <li><a href="ItemSearchResult?search_word=Leipzig">Leipzig</a></li>
          <li><a href="ItemSearchResult?search_word=Schalke">Schalke</a></li>
        </ul>
      </li>
      <li><a>Ligue 1</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL TEAM</a></li>
          <li><a href="ItemSearchResult?search_word=PSG">PSG</a></li>
          <li><a href="ItemSearchResult?search_word=Monaco">Monaco</a></li>
          <li><a href="ItemSearchResult?search_word=Marseille">Marseille</a></li>
          <li><a href="ItemSearchResult?search_word=Lyonnais">Lyonnais</a></li>
        </ul>
      </li>
    </ul>
  </li>
  <li><a class="bg-light">Player ▼</a>
    <ul>
      <li><a>Premier</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL Players</a></li>
          <li><a href="ItemSearchResult?search_word=Eden Hazard">Eden Hazard (CHE)</a></li>
          <li><a href="ItemSearchResult?search_word=Kane">Harry Kane (TOT)</a></li>
          <li><a href="ItemSearchResult?search_word=Pogba">Paul Pogba (MAU)</a></li>
          <li><a href="ItemSearchResult?search_word=Agüero">Sergio Agüero (MAC)</a></li>
          <li><a href="ItemSearchResult?search_word=Aubameyang">Aubameyang (ARS)</a></li>
        </ul>
      </li>
      <li><a>Serie A</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL Players</a></li>
          <li><a href="ItemSearchResult?search_word=Dybala">Paulo Dybala (JUV)</a></li>
          <li><a href="ItemSearchResult?search_word=Icardi">Mauro Icardi (INT)</a></li>
          <li><a href="ItemSearchResult?search_word=Bonucci">Leonardo Bonucci (ACM)</a></li>
          <li><a href="ItemSearchResult?search_word=Mertens">Dries Mertens (NAP)</a></li>
          <li><a href="ItemSearchResult?search_word=Džeko">Edin Džeko (ROM)</a></li>
        </ul>
      </li>
      <li><a>Liga</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL Players</a></li>
          <li><a href="ItemSearchResult?search_word=Ronaldo">Cristiano Ronaldo (REA)</a></li>
          <li><a href="ItemSearchResult?search_word=Messi">Lionel Messi (BAR)</a></li>
          <li><a href="ItemSearchResult?search_word=Griezmann">Antoine Griezmann (ATL)</a></li>
          <li><a href="ItemSearchResult?search_word=Inui">Takashi Inui (EIB)</a></li>
        </ul>
      </li>
      <li><a>Bundes</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL Players</a></li>
          <li><a href="ItemSearchResult?search_word=Lewandowski">Robert Lewandowski (FCB)</a></li>
          <li><a href="ItemSearchResult?search_word=James Rodríguez">James Rodríguez (FCB)</a></li>
          <li><a href="ItemSearchResult?search_word=Kagawa">Shinji Kagawa (BVB)</a></li>
          <li><a href="ItemSearchResult?search_word=Werner">Timo Werner (RBL)</a></li>
          <li><a href="ItemSearchResult?search_word=Thorgan Hazard">Thorgan Hazard (BMG)</a></li>
        </ul>
      </li>
      <li><a>Ligue 1</a>
        <ul>
          <li><a href="ItemSearchResult?search_word=">ALL Players</a></li>
          <li><a href="ItemSearchResult?search_word=Neymar">Neymar JR (PSG)</a></li>
          <li><a href="ItemSearchResult?search_word=Mbappé">Kylian Mbappé (PSG)</a></li>
          <li><a href="ItemSearchResult?search_word=Falcao">Radamel Falcao (ASM)</a></li>
          <li><a href="ItemSearchResult?search_word=Balotelli">Mario Balotelli (OGC)</a></li>
          <li><a href="ItemSearchResult?search_word=Sakai">Hiroki Sakai (MRS)</a></li>
        </ul>
      </li>
    </ul>
  </li>
  <li><a class="bg-light">Menu ▼</a>
    <ul>
<c:if test="${userInfo.name != null}">
      <li><a href="Logout">Logout</a></li>
</c:if>

<c:if test="${userInfo.name == null}">
      <li><a href="Login">Login</a></li>
</c:if>

      <li><a href="Cart">Cart</a></li>
      <li><a href="Regist">Sign up</a></li>

<c:if test="${userInfo.name != null}">
      <li><a href="MyPage">My Page</a></li>
</c:if>

<c:if test="${userInfo.name == '管理者'}">
       <li><a href="#">Management</a>
        <ul>
          <li><a href="ItemList">ItemList</a></li>
          <li><a href="UserList">UserList</a></li>
        </ul>
      </li>
</c:if>
    </ul>
  </li>
</ul>
  <form class="form-inline" action="ItemSearchResult">
    <input class="form-control mr-sm-2" type="search" placeholder="Player or Team" aria-label="Search" name="search_word">
    <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>
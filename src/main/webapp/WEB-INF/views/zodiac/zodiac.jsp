<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<style>
*{
font-family: 'Nanum Myeongjo', serif;
}
body{
  background: #F7E600;
  
}
.nav{
	display:flex;
	width:cale(1280px- 300px);
	color:black;
	justify-content: flex-end
}
.nav > li{
	margin-left:84px;
}
.nav > li > a {
	color:black;
}
ul{
list-style:none;
}
input{
width: 200px;
padding: .8em .5em;
border: 1px solid #999;
font-family: inherit;
background: url('arrow.jpg') no-repeat 95% 50%;
border-radius: 0px;
-webkit-appearance: none;
-moz-appearance: none;
appearance: none;
}
</style>
</head>
<body>
	<header><p style="font-size : 70px;">띠별운세</p></header>
		<ul class="nav">
			<li><a href="/fortune/result">오늘운세</a></li>
			<li><a href="/fortune/zodiac">띠별운세</a></li>
		</ul>
	 <div >
	
		<c:forEach var="item" items="${list}" varStatus="status">
			<a href = "#"><img  src="/resources/image/animal${status.index}.png"></a> <p>${item.content}</p>
		</c:forEach>
	</div>
	<form action="/" method="post">
		<input type="submit" value="처음으로">
	</form>
</body>
</html>
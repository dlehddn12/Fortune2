<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


canvas{
	position:absolute;
	top:0;
	left:0;
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
.intro_text > h1,
.intro_text > h5{
	color:black;
}
.intro_text{
	text-align: center;
}
select {
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

select::-ms-expand {
    display: none;
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
}

</style>
</head>
<body>
 	<div>
		<c:if test="${msg != null}">
			<div><h3>${msg}</h3></div>
		</c:if>
		
		<c:if test="${sessionScope.member != null}">
		<div>
			<span>${sessionScope.member.id}</span><span>님 환영합니다</span>
			</div>
			<div>
				<a href="logout">로그아웃</a>
			</div>
		</c:if>
		
		
 	</div>
	
    <header><p style="font-size : 70px;">오늘의 운세</p></header>
 
	<div>
	<ul class="nav">
		<li><a href="login">로그인</a></li>
		<li><a href="signup">회원가입</a><li>
		<li><a href="/">오늘운세</a>
		<li><a href="/zodiac/zodiac">띠별운세</a>
		
	</ul>
	</div>
	<p style= "font-size:100px;  text-align:center;" >오늘의 운세</p>
   <div style="border:3px solid blue; text-align: center; width: 100%; height: 50px; ">
   <form action="/fortune/result" method="post">
     <select name ="gender">
     <option value="0" selected="selected" >성별</option>
     <option value="1">남자</option>
     <option value="2">여자</option>
    </select>
    
    생년월일시
    <input type="text" maxlength="8" name="birth" placeholder="예)19870207"  style="width:400px; height: 30px">
    
    <select name ="calendar">
     <option value="0" selected="selected" >양력.음력</option>
     <option value="1">양력</option>
     <option value="2">음력</option>
    </select>
   
    
	<Select name="time">
      <option value="1" selected="selected" >모름</option>
	      <option value="2">子 (자) 23:30 ~ 01:29</option>
	       <option value="3">丑 (축) 01:30 ~ 03:29</option>
	        <option value="4">寅 (인) 03:30 ~ 05:29</option>
	         <option value="5">卯 (묘) 05:30 ~ 07:29</option>
	          <option value="6">辰 (진) 07:30 ~ 09:29</option>
	           <option value="7">巳 (사) 09:30 ~ 11:29</option>
	            <option value="8">午 (오) 11:30 ~ 13:29</option>
	             <option value="9">未 (미) 13:30 ~ 15:29</option>
	              <option value="10">申 (신) 15:30 ~ 17:29</option>
	               <option value="11">酉 (유) 17:30 ~ 19:29</option>
	                <option value="12">戌 (술) 19:30 ~ 21:29</option>
	                 <option value="13">亥 (해) 21:30 ~ 23:29</option>

</Select>
		
		<input type="submit" value="결과 보기" >
  		
   </form>
   </div>
  	<div class ="intro_text">
  		
  		<h5>한번 재밌게 하시고 기분 좋은 하루 시작하세요!</h5>
  	</div>

</body>
</html>
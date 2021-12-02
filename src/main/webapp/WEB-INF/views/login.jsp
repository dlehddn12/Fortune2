<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">

  <style>

  #main-title {
  color:#050099;
  font-size:70pt;
  margin-top:20%;
  }

	  .se {font-family: serif;}
      .sa {font-family: sans-serif;}
      .cu {font-family: cursive;}
      .fa {font-family: fantasy;}
      .mo {font-family: monospace;}


  </style>

</head>
<body bgcolor="#FFDF24">
		<form name="loginform" method="post">
		<table align="center" height="90">
	<tr>
		<td><div id="main-title">LOGIN<div></td>
	</tr>
  </table>

	<table align="center" height="40" width="430" border="0" style="border:solid 4px #050099; margin-top:4%">
		<tr>
			<td><input type="text" name="id" value="" placeholder="아이디" style="height:40px; width:430px;"></td>
		</tr>
		</table>
	<table align="center" height="40" width="430" border="0" style="border:solid 4px #050099; margin-top:1%">
		<tr>
			<td><input type="password" name="pw" value=""  placeholder="비밀번호" style="height:40px; width:430px"></td>
		</tr>
	</table>
	<table align="center" height="40" style="margin-top:1%">
	<tr>
		<td><input type="submit" name="login" value="로그인" style="height:50px; width:430px;  background-color:#050099; color:white; font-size:16px; border:solid 1px #050099; " ></td>	
	</tr>
	
	</form>
</body>
</html>
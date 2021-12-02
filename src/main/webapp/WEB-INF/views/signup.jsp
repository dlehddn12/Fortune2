<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
#main-title {
	color: #050099;
	font-size: 70pt;
	margin-top: 20%;
	
}

.se {
	font-family: serif;
}

.sa {
	font-family: sans-serif;
}

.cu {
	font-family: cursive;
}

.fa {
	font-family: fantasy;
}

.mo {
	font-family: monospace;
}
</style>
<script>
	function check_id_Async() {
		const form = document.getElementById("signup_form");
		const xhr = new XMLHttpRequest();

		xhr.onreadystatechange = function() {
			console.log(xhr.readyState);

			if (xhr.readyState == XMLHttpRequest.DONE) {
				if (xhr.status == 200) {
					const result = xhr.responseText;

					if (result == "OK") {
						alert(` \${form.id.value} 는 사용가능한 아이디 입니다`);
						form.checkId.value = form.id.value;
					} else
						alert(` \${form.id.value} 는 이미 사용중인 아이디 입니다`);
				}
			}
		}

		xhr.open("GET", `checkId?id=\${form.id.value}`, true);

		xhr.send();
	}

	function signup() {
		const form = document.getElementById("signup_form");
		const regx = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;


		if (form.checkId.value != form.id.value) {
			alert("아이디 중복검사를 해 주세요");
			return;
		}

		if (form.id.value == "") {
			alert("아이디를 입력 해 주세요");
			form.id.focus();
			return;
		}

		if (form.passwd.value == "") {
			alert("비밀번호를 입력 해 주세요");
			form.passwd.focus();
			return;
		}

		if (!regx.test(form.passwd.value)) {
			alert("비밀번호 형식을 확인 해 주세요");
			form.passwd.focus();
			return;
		}

		if (form.passwd_confirm.value == "") {
			alert("비밀번호 확인을 입력 해 주세요");
			form.passwd_confirm.focus();
			return;
		}

		if (form.passwd.value != form.passwd_confirm.value) {
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다");
			form.passwd.value = "";
			form.passwd_confirm.value = "";
			form.passwd.focus();
			return;
		}

		if (form.address.value == "") {
			alert("주소를 입력 해 주세요");
			form.address.focus();
			return;
		}

		if (form.tel.value == "") {
			alert("전화번호를 입력 해 주세요");
			form.tel.focus();
			return;
		}
		
		if (form.birth.value == "") {
			alert("생일을 입력 해 주세요");
			form.tel.focus();
			return;
		}
		
		if (form.gender.value == "0") {
			alert("성별을 선택 해 주세요");
			form.tel.focus();
			return;
		}
		
		if (form.calendar.value == "0") {
			alert("음력.양력을 선택 해주세요");
			form.tel.focus();
			return;
		}
		
		if (form.time.value == "0") {
			alert("시간을 선택해주세요");
			form.tel.focus();
			return;
		}

		form.submit();
	}
</script>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">



</head>
<body bgcolor="#FFDF24">
	<div class="container">
		<form id="signup_form" method="post">
			<table align="center" >
				<tr>
					<td><div id="main-title">
							SIGNUP
							<div></td>
				</tr>
			</table>

			<table align="center" height="40" width="430" border="0"
				style="border: solid 4px #050099; margin-top: 4%">
				<tr>
				<input type="hidden" id="checkId">
					<td><input type="text" name="id" value="" placeholder="아이디"
						style="height: 40px; width: 430px;">
						<button type="button" onclick="check_id_Async()">중복확인</button></td>

				</tr>
			</table>
			<div></div>

			<table align="center" height="40" width="430" border="0"
				style="border: solid 4px #050099; margin-top: 1%">
				<tr>
					<td><input type="password" name="passwd" value=""
						placeholder="비밀번호" style="height: 40px; width: 430px"> <span>(특수문자,
							문자, 숫자 포함 형태의 8~15자리 이내)</span></td>
				</tr>
			</table>

			<table align="center" height="40" width="430" border="0"
				style="border: solid 4px #050099; margin-top: 1%">
				<tr>
					<td><input type="password" name="passwd_confirm" value=""
						placeholder="비밀번호확인" style="height: 40px; width: 430px"></td>
				</tr>
			</table>

			<table align="center" height="40" width="430" border="0"
				style="border: solid 4px #050099; margin-top: 1%">
				<tr>
					<td><input type="text" name="address" value=""
						placeholder="주소" style="height: 40px; width: 430px"></td>
				</tr>
			</table>

			<table align="center" height="40" width="430" border="0"
				style="border: solid 4px #050099; margin-top: 1%">
				<tr>
					<td><input type="text" name="tel" value="" placeholder="전화번호"
						style="height: 40px; width: 430px"></td>
				</tr>
			</table>



			<table align="center" height="40" width="430" border="0"
				style="border: solid 4px #050099; margin-top: 1%">
				<tr>
					<td><input type="text" name="birth" value="" placeholder="생일"
						style="height: 40px; width: 430px"></td>
				</tr>
			</table>




			<table align="center" height="40" width="440" border="0"
				style="border: solid 4px #050099; margin-top: 1%">
				<tr>
					<td><select style="width: 440px; height: 40px;" name="gender">
							<option value="0" selected="selected">성별</option>
							<option value="1">남자</option>
							<option value="2">여자</option>
					</select></td>

				</tr>
			</table>



			<table align="center" height="40" width="430" border="0"
				style="border: solid 4px #050099; margin-top: 1%">
				<tr>
					<td><select style="width: 440px; height: 40px;" name="calendar">
							<option value="0" selected="selected">음력.양력</option>
							<option value="1">음력</option>
							<option value="2">앙력</option>
					</select></td>
				</tr>
			</table>


			<table align="center" height="40" width="430" border="0"
				style="border: solid 4px #050099; margin-top: 1%">
				<tr>
					<td><select style="width: 440px; height: 40px;" name="time">
							<option value="0" selected="selected">시간</option>
							<option value="1" selected="selected">모름</option>
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
						</select></td>
				</tr>
			</table>



			<table align="center" height="40" style="margin-top: 1%">
				<tr>
					<td><input type="button" onclick="signup()"
						value="가입하기"style="height: 50px; width: 430px; background-color: #050099; color: white; font-size: 16px; border: solid 1px #050099";></td>
				</tr>
				</form>
				</div>
</body>
</html>
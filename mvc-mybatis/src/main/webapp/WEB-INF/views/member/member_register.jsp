<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 등록</title>
	<link rel="stylesheet" href="../resources/bootstrap.min.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header>회원 정보 등록</header>
		<form name=form1 action="http://localhost:8080/myweb/member/register/" method="post">
		<table>	
			<tr><th>LoginID</th><td><input type="text" name="mem_userid" autofocus placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>LoginPWD</th><td><input type="text" name="mem_passwd" placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>YourName</th><td><input type="text" name="mem_username"  placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>EnglishName</th><td><input type="text" name="mem_engname" placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>MobileNumber</th><td><input type="text" name="mem_mobile" placeholder="***-****-****"></td></tr>
			<tr><th>EmailAddress</th><td><input type="text" name="mem_email" placeholder="****@****.***"></td></tr>
			<tr><th>YourRole</th>
				<td>
				<select name="mem_role">
				    <option value="player" selected="selected">선수</option>
				    <option value="staff">스탭</option>
				    <option value="webadmin">웹 관리자</option>
				</select>
				</td>
			</tr>
			
		</table>
		<dl>
			<dd><input type="submit" name="submit" value="보내기"></dd>
			<dd><input type="reset" name="reset" value="다시 작성"></dd>
		</dl>
		</form>
	</div>
</body>
</html>
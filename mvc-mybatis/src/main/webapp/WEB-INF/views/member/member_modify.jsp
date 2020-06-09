<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>정보 수정</title>
	<link rel="stylesheet" href="../resources/member.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header>회원 정보 수정</header>
		<form name=form1 action="http://localhost:8080/myweb/member/modify/" method="post">
		<input TYPE="hidden" NAME="mem_id" value='${member.mem_id}'>
		<table>
			<tr><th>LoginID</th><td><input type="text" name="mem_userid" autofocus value="${member.mem_userid}"></td></tr>
			<tr><th>LoginPWD</th><td><input type="text" name="mem_passwd" value="${member.mem_passwd}"></td></tr>
			<tr><th>YourName</th><td><input type="text" name="mem_username"  value="${member.mem_username}"></td></tr>
			<tr><th>EnglishName</th><td><input type="text" name="mem_engname" value="${member.mem_engname}"></td></tr>
			<tr><th>MobileNumber</th><td><input type="text" name="mem_mobile" value="${member.mem_mobile}"></td></tr>
			<tr><th>EmailAddress</th><td><input type="text" name="mem_email" value="${member.mem_email}"></td></tr>
			<tr><th>YourRole</th>
				<td>
				<select name="mem_role">
				    <option value="player" <c:if test="${mem_role eq 'player'}">selected</c:if>>선슝</option>
				    <option value="staff" <c:if test="${mem_role eq 'staff'}">selected</c:if>>스탭</option>
				    <option value="webadmin" <c:if test="${mem_role eq 'webadmin'}">selected</c:if>>웹 관리자</option>
				    <!--조건문이 안된다 나중에 할 것-->
				</select>
				</td>
			</tr>
			
		
		</table>
		<br>
		
		
			<input type="submit" name="submit" value="최종 수정">
			<input type="reset" name="reset" value="다시작성">
		</form>
	</div>
</body>
</html>
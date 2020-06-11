<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>정보 수정</title>
	<link rel="stylesheet" href="../resources/bootstrap.min.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header><br><h3>회원 정보 수정</h3><br></header>
		<form name=form1 action="http://localhost:8080/myweb/member/modify/" method="post">
		<input TYPE="hidden" NAME="mem_id" value='${member.mem_id}'>
		<table>
			<tr><th class="table-primary">LoginID</th><td class="table-secondary"><input type="text" name="mem_userid" autofocus value="${member.mem_userid}"></td></tr>
			<tr><th class="table-primary">LoginPWD</th><td class="table-secondary"><input type="text" name="mem_passwd" value="${member.mem_passwd}"></td></tr>
			<tr><th class="table-primary">YourName</th><td class="table-secondary"><input type="text" name="mem_username"  value="${member.mem_username}"></td></tr>
			<tr><th class="table-primary">EnglishName</th><td class="table-secondary"><input type="text" name="mem_engname" value="${member.mem_engname}"></td></tr>
			<tr><th class="table-primary">MobileNumber</th><td class="table-secondary" ><input type="text" name="mem_mobile" value="${member.mem_mobile}"></td></tr>
			<tr><th class="table-primary">EmailAddress</th><td class="table-secondary"><input type="text" name="mem_email" value="${member.mem_email}"></td></tr>
			<tr><th class="table-primary">YourRole</th>
				<td class="table-secondary">
				<select name="mem_role"  style="width:100%">
				    <option value="player" <c:if test="${mem_role eq 'player'}">selected</c:if>>선수</option>
				    <option value="staff" <c:if test="${mem_role eq 'staff'}">selected</c:if>>스탭</option>
				    <option value="webadmin" <c:if test="${mem_role eq 'webadmin'}">selected</c:if>>웹 관리자</option>
				    <!--조건문이 안된다 나중에 할 것-->
				</select>
				</td>
			</tr>
			
		
		</table>
		<br>
		
		
			<input type="submit" class = "btn btn-success" name="submit" value="수정">
			<input type="reset" class = "btn btn-success" name="reset" value="초기화">
		</form>
	</div>
</body>
</html>
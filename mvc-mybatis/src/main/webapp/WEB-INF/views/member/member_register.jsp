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
		<header><br><h3>회원 정보 등록</h3></header><br>
		<form name=form1 action="http://localhost:8080/myweb/member/register/" method="post">
		<table class="table-secondary" >	
			<tr><th class="table-primary">LoginID</th><td><input type="text" name="mem_userid" autofocus placeholder="공백없이 입력하세요"></td></tr>
			<tr><th class="table-primary">LoginPWD</th><td><input type="text" name="mem_passwd" placeholder="공백없이 입력하세요"></td></tr>
			<tr><th class="table-primary">YourName</th><td><input type="text" name="mem_username"  placeholder="공백없이 입력하세요"></td></tr>
			<tr><th class="table-primary">EnglishName</th><td><input type="text" name="mem_engname" placeholder="공백없이 입력하세요"></td></tr>
			<tr><th class="table-primary">MobileNumber</th><td><input type="text" name="mem_mobile" placeholder="***-****-****"></td></tr>
			<tr><th class="table-primary">EmailAddress</th><td><input type="text" name="mem_email" placeholder="****@****.***"></td></tr>
			<tr><th class="table-primary">YourRole</th>
				<td>
				<select name="mem_role">
				    <option value="player" selected="selected">선수</option>
				    <option value="staff">스탭</option>
				    <option value="webadmin">웹 관리자</option>
				</select>
				</td>
			</tr>
			
		</table>
		<br>
		<dl>
			<dd><input type="submit" class = "btn btn-success" name="submit" value="저장"></dd>
			<dd><input type="reset" class = "btn btn-success" name="reset" value="초기화"></dd>
		</dl>
		</form>
	</div>
</body>
</html>
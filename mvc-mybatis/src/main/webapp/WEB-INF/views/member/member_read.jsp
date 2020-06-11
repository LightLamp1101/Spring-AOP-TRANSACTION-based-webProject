<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 정보</title>
	<link rel="stylesheet" href="../resources/bootstrap.min.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header><br><h3>회원 정보</h3></header><br>
		<table class="table-secondary" >
		    <tr><th class="table-primary"> LoginID </th><td><c:out value="${member.mem_userid}"/></td></tr>
			<tr><th class="table-primary"> LoginPWD </th><td><c:out value="${member.mem_passwd}"/></td></tr>
			<tr><th class="table-primary"> YourName </th><td><c:out value="${member.mem_username}"/></td></tr>
			<tr><th class="table-primary"> EnglishName </th><td><c:out value="${member.mem_engname}"/></td></tr>
			<tr><th class="table-primary"> Mobile </th><td><c:out value="${member.mem_mobile}"/></td></tr>
			<tr><th class="table-primary"> EmailNumber </th><td><c:out value="${member.mem_email}"/></td></tr>
			<tr><th class="table-primary"> YourRole </th><td><c:out value="${member.mem_role}"/></td></tr>
			
		</table>
		<br>
		<c:url value="/member/list" var="url"/>
		<button type="button" class = "btn btn-success" onclick="location.href='${url}'">회원 목록 보기</button>
	</div>
</body>
</html>
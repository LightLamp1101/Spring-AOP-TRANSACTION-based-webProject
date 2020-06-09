<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>학생 정보</title>
	<link rel="stylesheet" href="../resources/member.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header>학생 정보</header><br>
		<table>
		    <tr><th> LoginID </th><td><c:out value="${member.mem_userid}"/></td></tr>
			<tr><th> LoginPWD </th><td><c:out value="${member.mem_passwd}"/></td></tr>
			<tr><th> YourName </th><td><c:out value="${member.mem_username}"/></td></tr>
			<tr><th> EnglishName </th><td><c:out value="${member.mem_engname}"/></td></tr>
			<tr><th> Mobile </th><td><c:out value="${member.mem_mobile}"/></td></tr>
			<tr><th> EmailNumber </th><td><c:out value="${member.mem_email}"/></td></tr>
			<tr><th> YourRole </th><td><c:out value="${member.mem_role}"/></td></tr>
			
		</table>
		<c:url value="/member/list" var="url"/><a href="${url}">회원 목록 보기</a>
	</div>
</body>
</html>
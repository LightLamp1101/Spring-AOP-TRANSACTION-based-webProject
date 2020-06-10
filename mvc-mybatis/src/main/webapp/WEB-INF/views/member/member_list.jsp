<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Student List</title>
	<link rel="stylesheet" href="../resources/bootstrap.min.css" type="text/css"></link>
	<!-- 
	<style type="text/css">
		#tds th { border: 1px solid lightgray;
		height: 30px;
		padding: 5px; }
		#tds td { border: 1px solid lightgray;
		height: 30px;
		padding: 5px; }
	</style>
	 -->
	
</head>
<body>
	<div align=center>
		<header>회원 목록</header><br>
		<c:url value="/member/register" var="url"/><a href="${url}">회원 등록</a><br><br>
		<table style="text-align:center; margin:auto;">
		  <tr class="table-primary">
		    <th>NUM</th><th>ID</th><th>PWD</th><th>USERNAME</th><th>ENGNAME</th><th>MOBILE</th><th>EMAIL</th><th>ROLE</th><th></th>
		  </tr>
		  <c:forEach var="member" items="${members}" >
			  <tr class="table-secondary">
			    <td><c:out value="${member.mem_id}"/></td>
			    <td><c:out value="${member.mem_userid}"/></td>
			    <td><c:out value="${member.mem_passwd}"/></td>
			    <td><c:out value="${member.mem_username}"/></td>
			    <td><c:out value="${member.mem_engname}"/></td>
			    <td><c:out value="${member.mem_mobile}"/></td>
			    <td><c:out value="${member.mem_email}"/></td>
			    <td><c:out value="${member.mem_role}"/></td>
			    <td>
			      <c:url value="/member/read?id=${member.mem_id}" var="url"/><a href="${url}">정보 보기</a>
			      <c:url value="/member/modify?id=${member.mem_id}" var="url"/><a href="${url}">정보 수정</a>
			    </td>
			  </tr>
		  </c:forEach>
		</table>
	</div>
</body>
</html>
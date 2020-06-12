<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Member List</title>
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

	
		<div style="float:left;position: relative;left: 10%;">
			
			<header><br><br><h3>회원 목록</h3></header><br>
			
			<table style="text-align:center; margin:auto;">
			  <tr class="table-primary">
			    <th>Num</th><th>ID</th><th>Password</th><th>UserName</th><th>Mobile</th><th>Team</th><th>Role</th><th>View INFO</th><th>Modify INFO</th><th>Delete INFO</th>
			  </tr>
			  <c:forEach var="member" items="${members}" >
				  <tr class="table-secondary">
				    <td><c:out value="${member.mem_id}"/></td>
				    <td><c:out value="${member.mem_userid}"/></td>
				    <td><c:out value="${member.mem_passwd}"/></td>
				    <td><c:out value="${member.mem_username}"/></td>
				    <td><c:out value="${member.mem_mobile}"/></td>
				    <td><c:out value="${member.mem_team}"/></td>
				    <td><c:out value="${member.mem_role}"/></td>
				    <td>
				      <c:url value="/member/read?id=${member.mem_id}" var="url"/>
				      <button type="button" class="btn btn-outline-info" onclick="location.href='${url}'">정보 보기</button>
				     </td>
				     <td>
				      <c:url value="/member/modify?id=${member.mem_id}" var="url"/>
				      <button type="button" class="btn btn-outline-warning" onclick="location.href='${url}'">정보 수정</button>
				    </td>
				    <td>
				      <c:url value="/member/delete?id=${member.mem_id}" var="url"/>
				      <button type="button" class="btn btn-outline-danger" onclick="location.href='${url}'">정보 삭제</button>
				    </td>
				  </tr>
			  </c:forEach>
			</table>
			
			<br>
			<c:url value="/member/register" var="url"/>
			<button type="button" class = "btn btn-success" onclick="location.href='${url}'">회원 추가 등록</button>
			<br>
			<!-- <a href="${url}">회원  추가등록</a><br><br> -->
			
		</div>
		<div style="float:right; position: relative;left: -10%">
		<header><br><br><h3>회원 현황</h3></header><br><br>
			<table style="text-align:center; margin:auto;">
			<tr class="table-primary">
			    <th>회원 종류</th><th>회원 수</th>
			  </tr>
			  <c:forEach var="count" items="${counts}" >
				  <tr class="table-secondary">
				    <td><c:out value="${count.role}"/></td>
				    <td><c:out value="${count.count}"/> 명</td>
				  </tr>
			  </c:forEach>
			</table>
		</div>

</body>
</html>
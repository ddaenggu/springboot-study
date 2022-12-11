<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<style>
* {
	margin: auto;
}

.tablezone {
	margin-top: 200px;
	text-align: center;
	width: 600px;
}

table {
	width: 600px;
	border: 1px solid #8C8C8C;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #8C8C8C;
	padding: 10px;
}

b {
font-size: 20pt;
}
</style>
<body>
	<div class="tablezone">
		<b>게시판 목록</b>
		<table>
			<tr>
				<td width="70"></td>
				<td width="100">작성자</td>
				<td width="300">제목</td>
				<td width="100">작성날짜</td>
				<td width="70">조회수</td>
			</tr>
			<c:forEach items="${list}" var="boardDTO">
			<tr>
				<td width="70">${boardDTO.board_num }</td>
				<td width="100">${boardDTO.name }</td>
				<td width="300"><a href="#">${boardDTO.title }</a></td>
				<td width="100">${boardDTO.regdate }</td>
				<td width="70">${boardDTO.view_count }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.registzone {
	margin-top: 200px;
	width: 500px;
}

b {
	font-size: 20pt;
}

input[type="text"] {
	border: 1px solid #8C8C8C;
}

.title {
	width: 500px;
	height: 30px;
	padding: 5px;
	margin-bottom: 5px;
}

.content {
	border: 1px solid #8C8C8C;
	width: 500px;
	height: 300px;
	padding: 5px;
	resize: none;
}

.name {
	width: 150px;
	height: 30px;
	padding: 5px;
	margin-bottom: 5px;
}

.regist_btn {
	border: 1px solid #8C8C8C;
	width: 100px;
	height: 35px;
}

.btn_right {
	margin-right: 3px;
	float: right;
}

.regist_btn:hover {
	opacity: 0.5;
}
</style>
<body>
	<div class="registzone">
		<form method="post">
			<input type="text" name="title" class="title" value="${boardDTO.title }" readonly="readonly">
			<input type="text" name="name" class="name" value="작성자 : ${boardDTO.name }" readonly="readonly">
			<input type="text" name="name" class="name" value="작성날짜 : ${boardDTO.regdate }" readonly="readonly">
			<input type="text" name="name" class="name" value="조회 수 : ${boardDTO.view_count }" readonly="readonly">
			<textarea name="content" class="content" readonly="readonly">
			${boardDTO.content }
			</textarea>
			<input type="hidden" name="board_num" class="name" value="${boardDTO.board_num }">
			<input type="hidden" name="password" class="name" value="${boardDTO.password }">
			<button type="submit" formaction="list" formmethod="get" class="regist_btn">목록</button>
			<button type="submit" formaction="delete" formmethod="get" class="regist_btn btn_right">삭제</button>
			<button type="submit" formaction="modify" formmethod="get" class="regist_btn btn_right">수정</button>
		</form>
	</div>
</body>
</html>
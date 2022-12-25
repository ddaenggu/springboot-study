<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
	width: 100px;
	height: 30px;
	padding: 5px;
}

.regist_btn {
	border: 1px solid #8C8C8C;
	width: 100px;
	height: 35px;
	float: right;
}

.regist_btn:hover {
	opacity: 0.5;
}
</style>

<script type="text/javascript">
function fn_modify() {
	if ($('input[name=title]').val() == "") {
		alert("제목을 입력하세요.");
		return false;
	}
	if (board.content.value == "") {
		alert("내용을 입력하세요.");
		return false;
	}
	
}
</script>
<body>
<div class="registzone">
	<b>글 수정하기</b>
		<form action="modify" method="post" name="board">
			<input type="text" name="title" class="title" placeholder="제목을 입력하세요." value="${boardDTO.title }">
			<textarea name="content" class="content" placeholder="내용을 입력하세요.">${boardDTO.content }</textarea>
			<input type="hidden" name="board_num" value="${boardDTO.board_num }">
			<input type="submit" value="수정" class="regist_btn" onclick="return fn_modify()">
		</form>
	</div>
</body>
</html>
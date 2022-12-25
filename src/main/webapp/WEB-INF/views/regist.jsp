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
function fn_regist() {
	if ($('input[name=title]').val() == "") {
		alert("제목을 입력하세요.");
		return false;
	}
	if (board.content.value == "") {
		alert("내용을 입력하세요.");
		return false;
	}
	if ($('input[name=name]').val() == "") {
		alert("작성자를 입력하세요.");
		return false;
	}
	if ($('input[name=password]').val() == "") {
		alert("비밀번호 4자리를 입력하세요.");
		return false;
	}
	
}
</script>
<body>
	<div class="registzone">
	<b>글 작성하기</b>
		<form method="post" name="board">
			<input type="text" name="title" class="title" placeholder="제목을 입력하세요.">
			<textarea name="content" class="content" placeholder="내용을 입력하세요."></textarea>
			<input type="text" name="name" class="name" placeholder="작성자">
			<input type="text" name="password" class="name" placeholder="비밀번호 4자리" maxlength="4">
			<input type="submit" value="등록" class="regist_btn" onclick="return fn_regist()">
		</form>
	</div>
</body>
</html>
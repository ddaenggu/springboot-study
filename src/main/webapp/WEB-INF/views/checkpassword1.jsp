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

input[type="text"] {
	border: 1px solid #8C8C8C;
}

.pwzone {
	text-align: center;
}

.name {
	width: 300px;
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
<script type="text/javascript">
function fn_delete() {
	if (confirm("정말 삭제하시겠습니까?") == true) { // 예를 누를 시 삭제되도록
		location.href = "delete?board_num="+board.board_num.value+"&checkpassword="+board.checkpassword.value;
	} else {
		return false;
	}
}
</script>
<body>
<div class="registzone">
<form name="board">
<div class="pwzone">
<input type="text" name="checkpassword" class="name" placeholder="비밀번호를 입력해주세요." maxlength="4">
<input type="hidden" name="board_num" class="name" value="${boardDTO.board_num }">
<input type="hidden" name="password" class="name" value="${boardDTO.password }">
</div>
<div>
<button type="submit" formaction="list" formmethod="get" class="regist_btn">목록</button>
<button type="button" class="regist_btn btn_right" onclick="return fn_delete()">삭제</button>
</div>
</form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>삭제 확인</title>
	</head>
	<body>
		<form action="./delete.jsp" method="post">
			<label for="pass">비밀번호</label>
			<input type="password" id="pass" name="password" value="">
			<button type="submit">확인</button>
			<input type="hidden" name="no" value="<%=request.getParameter("no") %>">
		</form>
		<a href="./addList.jsp">메인으로 돌아가기</a>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>


</head>
<body>



	<form method="POST" enctype="multipart/form-data" action="${pageContext.request.contextPath }/api/up">
		文件1: <input type="file" name="upfile"><br /> 
		文件2: <input type="file" name="upfile"><br /> 
		文本1: <input type="text" name="note"><br />
		<input type="submit" value="上传"> 
	</form>
</body>
</html>

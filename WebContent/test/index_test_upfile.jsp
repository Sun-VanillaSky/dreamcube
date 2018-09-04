<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/js/jquery-3.3.1.min.js"></script>


</head>
<body>



	<form id="up1" method="POST" enctype="multipart/form-data" action="${pageContext.request.contextPath }/api/up">
		文件1: <input type="file" name="upfile"><br /> 
		文件2: <input type="file" name="upfile"><br /> 
		文本1: <input type="text" name="note"><br />
		<input type="submit" value="上传"> 
	</form>
	
	/////////////////////////////////////////////////
	<form id="uploadForm" method="POST" enctype="multipart/form-data" >
		文件1:<input id="upfile" type="file" name="upfile"><br /> 
		<button  type="button"   onclick="douploadfile()" >上传</button>
	</form>

	<script type="text/javascript">
	
	function douploadfile(){

	    var form = new FormData(document.getElementById("uploadForm"));  
        $.ajax({
            url: "${pageContext.request.contextPath }/api/up",
            type: 'POST',
            cache: false,
            data: form,
            processData: false,
            contentType: false,
            dataType:"json",
            beforeSend: function(){
                //alert("beforeSend");
            },
            success : function(data) {
                console.log(data);
                alert(data.id);
            },
            error:function(e){  
                alert("失败，请重试！！");  
            }  
            
        });
        
	}
	
	
	</script>
	

</body>
</html>

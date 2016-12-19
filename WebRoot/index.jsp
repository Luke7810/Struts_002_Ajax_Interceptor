<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Struts Login App</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="Struts,Login,Java">
<meta http-equiv="description" content="Struts Login App">

	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
</head>

<body >
	<div class="container">
	<h2>User Infromation</h2>
		<button type="button" class="btn btn-success btn-lg" id="btn">Get User List (Ajax)</button>
		<button type="button" class="btn btn-danger btn-lg" onclick="add();">Add 3 New Users (Batch)</button>
		<br/>
		<br/>
		<br/>
		
		<table class="table"><thead><tr><th>Name</th><th>Age</th></tr>
			</thead><tbody id="content"></tbody>
		</table>
		
	</div>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
<script type="text/javascript">
$(function() {
  			$("#btn").click(function() {
  				$.post("user/json.action", function(data) {
  					console.info(data);
  					var html = "";
  					for(var i = 0; i <data.length; i++) {
  						html += "<tr><td>"+data[i].name+"</td><td>"+data[i].age+"</td></tr>"
  					}
  					$("#content").html(html);
  				});
  			});
  		});
  		
function add() {
	window.location.href='addInfor.jsp';
}
</script>
</html>

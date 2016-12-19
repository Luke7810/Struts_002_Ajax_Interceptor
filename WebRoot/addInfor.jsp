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

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
</head>

<body>

<div class="container">
    <h1>Add User Infromation</h1><br/>
    <form id="defaultForm" method="post" class="form-horizontal" action="batch.action">
                <div class="form-group">
                    <label class="col-lg-3 control-label">User1 name</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="user.name" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Password 1</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="user.age"/>
                    </div>
                </div>
                
                <br/><br/><br/>
                <div class="form-group">
                    <label class="col-lg-3 control-label">User2 name</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="user.name" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Password 2</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="user.age"/>
                    </div>
                </div>
                <br/><br/><br/>
                
                 <div class="form-group">
                    <label class="col-lg-3 control-label">User3 name</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="user.name" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Password 3</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="user.age"/>
                    </div>
                </div>
                
                

                <div class="form-group">
                    <div class="col-lg-9 col-lg-offset-3">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </form>
</div>

 <!-- 
 <form action="batch.action" method="post">
  		用户名：<input name="user.name" />年龄：<input name="user.age"/><br/>
  		用户名：<input name="user.name" />年龄：<input name="user.age"/><br/>
  		用户名：<input name="user.name" />年龄：<input name="user.age"/><br/>
  		<input type="submit" value="提交">
  	</form>
 -->
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</html>

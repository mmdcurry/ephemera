<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="myOrder.LoginProcessor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>yummy</title>
<link href="Css/login.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="Js/login.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.1.min.js"></script>
</head>
<body>
<table>
	<tr>
		<th colspan="2" id="tablename"><marquee direction="Left" >欢迎点餐</marquee></th>
	</tr>
	<tr>
		<td><label><div id="lab">用户名:</div></label></td>
		<td><input type="text" id="userid"></td>
	</tr>
	<tr>
		<td><label><div id="lab">密&nbsp;&nbsp;&nbsp;码:</div></label></td>
		<td><input type="password" id="pwd"></td>
	</tr>
	<tr>
		<td colspan="2">
			<div id="btn">
				<input type="button" id="submit" onclick="loglog()" value="登录(Ent)">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" id="register" onclick="reg()" value="注册(R)">
			</div>
			
		</td>
	</tr>
	<tr>
		<td colspan="2"><div id="forget"><a href="">@ made by ephemera</a></div></td>
	</tr>
</table>
</body>
</html>
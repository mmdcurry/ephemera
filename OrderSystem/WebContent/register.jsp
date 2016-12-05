<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
<link href="Css/register.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="Js/register.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.1.min.js"></script>
</head>
<body>
	<table>
	<tr>
		<th colspan="2"><marquee direction="Left"  id="tit">用户注册</marquss></th>
	</tr>
	<tr>
		<td><label><div id="lab">用户名：</div></label></td>
		<td><input type="text" id="userid" ></td>
		<td><b>限字母与数字组合，且第一位为字母</b></td>
	</tr>
	<tr>
		<td><label><div id="lab">密码：</div></label></td>
		<td><input type="password" id="pwd"></td>
		<td><b></b></td>
	</tr>
	<tr>
		<td><label><div id="lab">密码确认：</div></label></td>
		<td><input type="password" id="pwd_confirm" ></td>
		<td><b></b></td>
	</tr>
	<tr>
		<td><label><div id="lab">手机号码：</div></label></td>
		<td><input type="text" id="phone"></td>
		<td><b>'*限11位~*'</b></td>
	</tr>
	<tr>
		<td><label><div id="lab">验证问题：</div></label></td>
		<td><input type="text" id="question"></td>
	</tr>
	<tr>
		<td><label><div id="lab">答案：</div></label></td>
		<td><input type="text" id="answer"></td>
		<td><b>'*一定不能忘记哦~*'</b></td>
	</tr>
	<tr>
		<td colspan="2" >
		<input type="submit" value="确认(Ent)" id="sub" onclick="turn()">
		<input type="button" value="我有账号(I)" id="btn" onclick="cancel()">
		</td>
	</tr>
</table>
</body>
</html>
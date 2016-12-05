<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="myOrder.MainMetroProcessor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.1.min.js"></script>
<!-- <script type="text/javascript" src="Js/mainMetro.js"></script> -->
<script type="text/javascript" > <%@ include file="Js/mainMetro.js" %> </script>
<link href="Css/mainMetro.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="firstline">
	<span>Hi,</span>
	<%=request.getParameter("userid") %>
	<a href="history.jsp?id=<%=request.getParameter("userid")%>" id="history">历史纪录</a>
	<a href="" id="change">修改密码(waiting)</a>
	<a href="login.jsp" id="change">退出</a>
</div>

	<table id="dad" >
		<tr>
			<th></th>
		</tr>
		<tr>
			<td><img src="Image/food01.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food1">甜橙盖饭&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td><div id="price1">21元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
					</tr>
					<tr>
						<td>
							<button id="sub1" onclick="sub(spinner1)"><div id="calc">-</div></button>
							<input type="text" id="spinner1" value=0 onchange="num(this)"> 
							<button id="plus1" onclick="plus(spinner1)"><div id="calc">+</div></button>
						</td>
					</tr>
				</table>
			</td>
			<td><img src="Image/food02.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food2">荔枝炒饭&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td><div id="price2">22元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td>
							<button id="sub2" onclick="sub(spinner2)"><div id="calc">-</div></button>
							<input type="text" id="spinner2" value=0 onchange="num(this)"> 
							<button id="plus2" onclick="plus(spinner2)"><div id="calc">+</div></button>
						</td>
					</tr>
				</table>
			</td>
			<td><img src="Image/food03.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food3">黄桃烩饭&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
					</tr>
					<tr>
						<td><div id="price3">23元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
					</tr>
					<tr>
						<td>
							<button id="sub3" onclick="sub(spinner3)"><div id="calc">-</div></button>
							<input type="text" id="spinner3" value=0 onchange="num(this)"> 
							<button id="plus3" onclick="plus(spinner3)"><div id="calc">+</div></button>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><img src="Image/food04.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food4">苹果汤面&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
					</tr>					
					<tr>
						<td><div id="price4">24元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td>
							<button id="sub4" onclick="sub(spinner4)"><div id="calc">-</div></button>
							<input type="text" id="spinner4" value=0 onchange="num(this)"> 
							<button id="plus4" onclick="plus(spinner4)"><div id="calc">+</div></button>
						</td>			
					</tr>
				</table>
			</td>
			<td><img src="Image/food05.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food5">奇异果焖饭&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
					</tr>
					<tr>
						<td><div id="price5">25元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td>
							<button id="sub5" onclick="sub(spinner5)"><div id="calc">-</div></button>
							<input type="text" id="spinner5" value=0 onchange="num(this)"> 
							<button id="plus5" onclick="plus(spinner5)"><div id="calc">+</div></button>
						</td>
					</tr>
				</table>
			</td>
			<td><img src="Image/food06.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food6">超赞的未知水果泡面&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td><div id="price6">26元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td>
							<button id="sub6" onclick="sub(spinner6)"><div id="calc">-</div></button>
							<input type="text" id="spinner6" value=0 onchange="num(this)"> 
							<button id="plus6" onclick="plus(spinner6)"><div id="calc">+</div></button>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><img src="Image/food07.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food7">哈密瓜炒拉条&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td><div id="price7">27元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td>
							<button id="sub7" onclick="sub(spinner7)"><div id="calc">-</div></button>
							<input type="text" id="spinner7" value=0 onchange="num(this)"> 
							<button id="plus7" onclick="plus(spinner7)"><div id="calc">+</div></button>
						</td>		
					</tr>
				</table>
			</td>
			<td><img src="Image/food08.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food8">石榴炒面&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td><div id="price8">28元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td>
							<button id="sub8" onclick="sub(spinner8)"><div id="calc">-</div></button>
							<input type="text" id="spinner8" value=0 onchange="num(this)"> 
							<button id="plus8" onclick="plus(spinner8)"><div id="calc">+</div></button>
						</td>
			
					</tr>
				</table>
			</td>
			<td><img src="Image/food09.jpg"></td>
			<td>
				<table>
					<tr>
						<td><div id="food9">橙汁拌面&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td><div id="price9">29元&nbsp;&nbsp;&nbsp;&nbsp;</div></td>			
					</tr>
					<tr>
						<td>
							<button id="sub9" onclick="sub(spinner9)"><div id="calc">-</div></button>
							<input type="text" id="spinner9" value=0 onchange="num(this)"> 
							<button id="plus9" onclick="plus(spinner9)"><div id="calc">+</div></button>
						</td>			
					</tr>
				</table>
			</td>
		</tr>
		
		

	</table>
	<table id="two">
		<tr>
			<td width="850px"><div id="det">订单详情：</div></td>
			<td width="60px"><input type="button" id="over" value="我点完了(I)" onclick="order()"></td>
		</tr>
		<tr>
			<td width="850px" rowspan=2 id="td3"><span id="detail"></span></td>
			<td width="60px"><br><br></td>
		</tr>
		<tr>
			<td width="60px"><input type="button" id="smt" value="提交订单(S)" onclick="confirming()"></td>
		</tr>
		<tr></tr>
	</table>
</body>
</html>
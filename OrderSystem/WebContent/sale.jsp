<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="myOrder.SaleProcessor,myOrder.DataBaseSet" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="Css/sale.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="Js/sale.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.1.min.js"></script>
</head>
<body>
	<table>
		<tr><td><input type="button" id="fre" value="刷新(R)" onclick="fresh()"></td></tr>
		<tr>
			<th width="100px">用户</th>
			<th width="400px"><span >详情</span></th>
			<th width="100px"><span >总价(元)</span></th>
			<th width="100px"><span >时间</span></th>
			<th width="100px"><span >状态</span></th>
			<th><input type="button" id="deli" onclick="delivery()" value="确认配送(C)"></th>
		</tr>
		<%
			try{
				String userid=request.getParameter("id");
				DataBaseSet dbs = new DataBaseSet();
				String sql = "select * from theorder where status='等待配餐'";
				ResultSet result = dbs.execQuery(sql);
				while(result.next()){
		%>
		<tr>
			<td width="100px"><span id="user"><%=result.getString(1) %></span></td>
			<td width="400px"><span id="detail"><%=result.getString(2) %></span></td>
			<td width="100px"><span id="money"><%=result.getString(3) %></span></td>
			<td width="100px"><span id="ordertime"><%=result.getString(4) %></span></td>
			<td width="100px"><span id="status"><%=result.getString(5) %></span></td>
			
		</tr>
		<%
				}
			}catch(Exception x){
				x.printStackTrace();
			}
		%>
	</table>
</body>
</html>
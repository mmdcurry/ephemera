<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="myOrder.HistoryProcessor,myOrder.DataBaseSet" %>
    <%@ page import="net.sf.json.JSONObject" %>
    <%@ page import="java.io.*,java.net.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="Css/history.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.1.min.js"></script>
<script type="text/javascript"><%@ include file="Js/history.js"%></script>
</head>
<body>
	<div id="didi">
		<input type="button" id="myhistory" value="最近历史订单(N)" onclick="myhistory()">
		<input type="button" id="cont" value="继续点餐(C)" onclick="cont()">
	</div>
	<table id="tab">
		<tr>
			<th width="400px"><span >详情</span></th>
			<th width="100px"><span >总价(元)</span></th>
			<th width="100px"><span >时间</span></th>
			<th width="100px"><span >状态</span></th>
		</tr>
		<%
			try{
				String userid=request.getParameter("id");
				DataBaseSet dbs = new DataBaseSet();
				String sql = "select * from theorder where userid='"+userid+"'";
				ResultSet result = dbs.execQuery(sql);
				while(result.next()){
		%>
		<tr>
			<td width="400px"><div id="detail"><%=result.getString(2) %></div></td>
			<td width="100px"><div id="money"><%=result.getString(3) %></div></td>
			<td width="100px"><div id="ordertime"><%=result.getString(4) %></div></td>
			<td width="100px"><div id="status"><%=result.getString(5) %></div></td>
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
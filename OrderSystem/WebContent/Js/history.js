//<%@ page language="java" contentType="text/html; charset=UTF-8"%>
//function myhistory1(){
//	var id='<%=request.getParameter("id")%>';
//	alert(id);
//	try{
//		$.ajax({
//			type:'POST',
//			dataType:'json',
//			data:{
//				userid:id
//			},
//		url:'src/HistoryProcessor',
//		success:function(data){
//		<%
//			Object obj = data.dataresult;
//			ResultSet result = (ResultSet)obj;
//		%>
//				
//		}
//		});
//			
//	}catch(x){
//		alert(x);
//	}
//}
function myhistory(){
	window.location.reload();
}
function cont(){
	var id='<%=request.getParameter("id")%>';
	window.location.href="mainMetro.jsp?userid="+id;
}
document.onkeyup = function (event) {
    var e = event || window.event;
    var keyCode = e.keyCode || e.which;
    switch (keyCode) {
        case 78:
        	if(event.altKey==true)
            $("#myhistory").click();
            break;
        case 67:
        	if(event.altKey==true)
            $("#cont").click();
            break;
        default:
            break;
    }
}

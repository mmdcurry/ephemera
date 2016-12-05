<%@ page language="java" contentType="text/html; charset=UTF-8"%>
var all1="",all="",total="";
function order(){
	var thing1="",thing2="",thing3="",thing4="",thing5="",thing6="",thing7="",thing8="",thing9="";
	if(spinner1.value>0)thing1="甜橙盖饭 * " + spinner1.value + ",";
	if(spinner2.value>0)thing2="荔枝炒饭 * " + spinner2.value + ",";
	if(spinner3.value>0)thing3="黄桃烩饭 * " + spinner3.value + ",";
	if(spinner4.value>0)thing4="苹果汤面 * " + spinner4.value + ",";
	if(spinner5.value>0)thing5="奇异果焖饭 * " + spinner5.value + ",";
	if(spinner6.value>0)thing6="超赞的未知水果泡面 * " + spinner6.value + ",";
	if(spinner7.value>0)thing7="哈密瓜炒拉条 * " + spinner7.value + ",";
	if(spinner8.value>0)thing8="石榴炒面 * " + spinner8.value + ",";
	if(spinner9.value>0)thing9="橙汁拌面 * " + spinner9.value + ",";
	 total=parseInt(spinner1.value)*21+
			parseInt(spinner2.value)*22+
			parseInt(spinner3.value)*23+
			parseInt(spinner4.value)*24+
			parseInt(spinner5.value)*25+
			parseInt(spinner6.value)*26+
			parseInt(spinner7.value)*27+
			parseInt(spinner8.value)*28+
			parseInt(spinner9.value)*29;
	all1 = thing1+thing2+thing3+thing4+thing5+thing6+thing7+thing8+thing9;
	all=all1+" 总价："+total+"元";
	if(total==0){
		all="";
		alert("请点餐~");
	}
		
	document.getElementById("detail").innerHTML=all;
	
}

function sub(spinner){
		spinner.value = spinner.value-1;
		if(spinner.value<0)spinner.value=0;
	}
	function plus(spinner){
		spinner.value=parseInt(spinner.value)+1;
	}
	function num(con){
		var cont=parseInt(con.value);
		if(isNaN(cont))con.value=0;
		else con.value=parseInt(con.value);
	}
	function confirming(){
		var time=getNowFormatDate();
		var id='<%=request.getParameter("userid")%>';
		if(all!=""){
			var r = confirm("您的餐点如下： "+"\n"+"             "+all+"\n"+"是否确认点餐？");
			if(r==true){
				try{
					$.ajax({
						type: "POST",
				        dataType: 'json',
				        data: {
				        	userid:id,
				        	order_info:all1,
				        	money:total,
				        	times:time 
				        },
				        url: "src/MainMetroProcessor",
				        success:function(data){
				        	alert(data.info);
				        	window.location.reload();
				        }
				    });
				}
				catch(x){
				    alert(x);
				}
				
			}
		}else{
			alert("请点餐~");
		}
	}
	function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();

        if (month >= 1 && month <= 9)
        {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9)
        {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
        return currentdate;
    }
	document.onkeyup = function (event) {
	    var e = event || window.event;
	    var keyCode = e.keyCode || e.which;
	    switch (keyCode) {
	        case 73:
	        	if(event.altKey==true)
	            $("#over").click();
	            break;
	        case 83:
	        	if(event.altKey==true)
	            $("#smt").click();
	            break;
	        default:
	            break;
	    }
	}
function loglog(){
	if(userid.value==""||pwd.value=="")
		alert("用户名或密码不为空！");
	else{
		try{
			$.ajax({
				type: "POST",
		        dataType: 'json',
		        data: {
		        	userid:userid.value,
		        	pwd:pwd.value
		        },
		        url: "src/LoginProcessor",
		        success:function(data){
		        	if(parseInt(data.bool)==5){
		        		alert(data.info);
		        		window.location.href="sale.jsp";
		        	}
		        	else if(parseInt(data.bool)==0){
		        		alert(data.info);
		        		window.location.href="register.jsp";
		        	}
		        	else if(parseInt(data.bool)==2){
		        		alert(data.info);
		        	}
		        	else if(parseInt(data.bool)==1){
		        		alert(data.info);
		        		window.location.href="mainMetro.jsp?userid="+userid.value;
		        	}
		        }
		    });
		}
		catch(x){
		    alert(x);
		}


	}
}
function reg(){
	window.location.href="register.jsp";
}
document.onkeyup = function (event) {
    var e = event || window.event;
    var keyCode = e.keyCode || e.which;
    switch (keyCode) {
        case 13:
            $("#submit").click();
            break;
        case 82:
        	if(event.altKey==true)
            $("#register").click();
            break;
        default:
            break;
    }
}

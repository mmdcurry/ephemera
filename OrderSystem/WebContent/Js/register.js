function turn(){
	if(userid.value==""){
		alert("用户名不能为空");
	}else if(pwd.value==""){
		alert("密码不能为空");
	}else if(pwd_confirm.value==""){
		alert("密码确认不能为空");
	}else if(phone.value==""){
		alert("电话号码不能为空");
	}else if(question.value==""){
		alert("问题不能为空");
	}else if(answer.value==""){
		alert("答案不能为空");
	}else if(pwd.value!=pwd_confirm.value){
		alert("前后密码不一致");
	}else{
		try{
			$.ajax({
				type: "POST",
		        dataType: 'json',
		        data: {
		        	userid:userid.value,
		        	pwd:pwd.value,
		        	phone:phone.value,
		        	question:question.value,
		        	answer:answer.value
		        },
		        url:"src/RegisterProcessor",
		        success:function(data){
		        	alert(data.info);
		        	window.location.href="login.jsp";
		        }
		    });
		}catch(x){
			alert(x);
		}
	}
}
function cancel(){
	window.location.href="login.jsp";
}
document.onkeyup = function (event) {
    var e = event || window.event;
    var keyCode = e.keyCode || e.which;
    switch (keyCode) {
        case 13:
            $("#sub").click();
            break;
        case 73:
        	if(event.altKey==true)
            $("#btn").click();
            break;
        default:
            break;
    }
}
//function pwdlegal(){
//	
//}
//function new_password(){
//    var new_pwd=$('#new_pwd').val();
//    var new_pwd_confirm= $('#confirm_pwd').val();
//    if (isRegisterUserName(new_pwd))
//    {
//        if(!new_pwd.match("[A-Za-z]"))
//        {
//            alert("密码必须包含字母");
//            return 0;
//        }
//        else if(!new_pwd.match("[0-9]"))
//        {
//            alert("密码必须包含数字");
//            return 0;
//        }
//        else
//        {
//            return 1;
//        }
//    }
//}
//function isRegisterUserName(th)
//{
//    if(th.length>20)
//        return false
//    var patrn=/^[a-zA-Z0-9]{1}([a-zA-Z0-9]|[!@#$%^&*()_+-/?]){7,20}$/;
//    if (!patrn.exec(th)) return false
//    return true
//}
//function userlegal(){
//	
//}
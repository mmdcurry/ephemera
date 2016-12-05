function fresh(){
	window.location.reload();
}
function delivery(){
	var user=document.getElementById("user").innerHTML;
	var ordertime=document.getElementById("ordertime").innerHTML;
	try{
		$.ajax({
			type: "POST",
	        dataType: 'json',
	        data: {
	        	userid:user,
	        	ordertime:ordertime
	        },
	        url: "src/SaleProcessor",
	        success:function(data){
	        	if(parseInt(data.bool)==2){
	        		alert(data.info);
	        		window.location.reload();
	        	}
	        }
	    });
	}catch(x){
		alert(x);
	}
}
document.onkeyup = function (event) {
    var e = event || window.event;
    var keyCode = e.keyCode || e.which;
    switch (keyCode) {
        case 82:
        	if(event.altKey==true)
            $("#fre").click();
            break;
        case 67:
        	if(event.altKey==true)
            $("#deli").click();
            break;
        default:
            break;
    }
}
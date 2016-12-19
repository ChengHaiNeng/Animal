$(function(){
$('#changeName').click(function(){
	var patt = /^\w{3,11}$/;
		if(!patt.test($('#inputName').val())){
			$('#errVerName').html('用户名位数不对');
		}else{
		//利用Ajax实现：验证码是否正确
		alert(111);
			var url = '/index.php/Home/Verify/verifyName/username'+$('#inputName').val();
			/*alert(url);*/	
			$.get(url,function(res){
				if(res == 1){
					alert(111);
				}
			});
		}
}
});

$('#changeName').submit(function(){
	alert(1111);
});
});
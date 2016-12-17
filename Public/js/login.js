
$(function(){
	//点击刷新验证码
	var verifyUrl = $('#verifyImg').attr('src');
	var verifyUrl = verifyUrl.substring(0, 27);
	/*alert(a);*/
	$('#verifyImg').click(function(){
		$(this).attr('src',verifyUrl);
    });		

	
	//用户名验证
	$('#userid').blur(function(){
		//查询用户名是否合法
		var patt = /^\d{3,11}$/;
		if(!patt.test(this.value)){
			$('#errUid').html('用户名请在3到11位之间哦');
		}else{		
			$('#errUid').html('');
		}
	});


	//验证password是否合法
	$('#password').blur(function(){
		var patt = /^\d{3,11}$/;
		if(!patt.test(this.value)){
			$('#errPass').html('密码请在3到11位之间哦');
		}else{
			$('#errPass').html('');
		}
	});


	//验证码
	$('#verifyCode').blur(function(){
		//查询验证码位数是否正确
		var patt = /^\w{4}$/;
		if(!patt.test(this.value)){
			$('#errVer').html('验证码位数不对');
		}else{		
		//利用Ajax实现：验证码是否正确
			var url = '/index.php/Home/User/checkVerify/verifyCode/'+this.value;
			/*alert(url);	*/	
			$.get(url,function(res){

				if(res.indexOf('rue') >=0){
					$('#errVer').html('验证码正确');
				}else{
					$('#errVer').html('验证码错误');
				}
				console.log(res);
			});
		}
	});



});

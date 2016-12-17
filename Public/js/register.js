
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
		var patt = /^\w{3,11}$/;
		if(!patt.test(this.value)){
			$('#errUid').html('用户名请在3到11位之间哦');
		}else{		
		//利用Ajax实现用户名查询是否存在
			var url = '/index.php/Home/User/checkUidExist/uid/'+this.value;
			/*alert(url);*/		
			$.get(url,function(res){
				if(res == 1){
					$('#errUid').html('用户名已被占用');
				}else{
					$('#errUid').html('');
				}
			});
		}
	});


	//验证password是否合法
	$('#password').blur(function(){
		var patt = /^\w{3,11}$/;
		if(!patt.test(this.value)){
			$('#errPass').html('密码请在3到11位之间哦');
		}else{
			$('#errPass').html('');
		}
	});

	//验证两次输入密码是否一致
	$('#rePassword').blur(function(){
		var password = $('#password').val();
		if(password != this.value){
			$('#errPass2').html('两次密码输入不一致');
		}else{
			$('#errPass2').html('');
		}
	});

	//邮箱验证
	$('#email').blur(function(){
		//查询邮箱是否合法
		var patt = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(!patt.test(this.value)){
			$('#errEmail').html('邮箱格式不对');
		}else{		
		//利用Ajax实现查询邮箱是否存在
			var url = '/index.php/Home/User/checkEmailExist/email/'+this.value;
			/*alert(url);*/		
			$.get(url,function(res){
				if(res == 1){
					$('#errEmail').html('邮箱已被注册');
				}else{
					$('#errEmail').html('');
				}
			});
		}
	});


	//手机号验证
	$('#mobile').blur(function(){
		//查询手机号是否合法
		var patt = /^[1][3,4,5,8][0-9]{9}$/;
		if(!patt.test(this.value)){
			$('#errMob').html('手机号格式不对');
		}else{		
		//利用Ajax实现查询手机号是否存在
			var url = '/index.php/Home/User/checkMobExist/mobile/'+this.value;
			/*alert(url);*/		
			$.get(url,function(res){
				if(res == 1){
					$('#errMob').html('手机号已被注册');
				}else{
					$('#errMob').html('');
				}
			});
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

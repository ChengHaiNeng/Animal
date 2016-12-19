function checkUser(oo){
	var patt = /^\w{3,11}$/;
		if(!patt.test(oo.value)){
			$('#errUid').html('用户名请在3到11位之间哦');
			return false;
		}else{		
		//利用Ajax实现用户名查询是否存在
			var url = '/Home/User/checkUidExist/uid/'+oo.value;
			/*alert(url);*/		
			$.get(url,function(res){
				if(res == 1){
					$('#errUid').html('用户名已被占用');
					return false;
				}else{
					$('#errUid').html('');
				}
			});
		}
		return true;
}

function  checkPassword(oo){
	var patt = /^\w{3,11}$/;
		if(!patt.test(oo.value)){
			$('#errPass').html('密码请在3到11位之间哦');
			return false;
		}else{
			$('#errPass').html('');
		}
		return true;
}

function checkRepassword(oo){
	var password = $('#password').val();
		if(password != oo.value){
			$('#errPass2').html('两次密码输入不一致');
			return false;
		}else{
			$('#errPass2').html('');
		}
		return true;
}

function  checkEmail(oo){
	var patt = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(!patt.test(oo.value)){
			$('#errEmail').html('邮箱格式不对');
			return false;
		}else{		
		//利用Ajax实现查询邮箱是否存在
			var url = '/index.php/Home/User/checkEmailExist/email/'+oo.value;
			/*alert(url);*/		
			$.get(url,function(res){
				if(res == 1){
					$('#errEmail').html('邮箱已被注册');
					return false;
				}else{
					$('#errEmail').html('');
				}
			});
		}
		return true;
}

function checkMobile(oo){
	var patt = /^[1][3,4,5,8][0-9]{9}$/;
		if(!patt.test(oo.value)){
			$('#errMob').html('手机号格式不对');
			return false;
		}else{		
		//利用Ajax实现查询手机号是否存在
			var url = '/index.php/Home/User/checkMobExist/mobile/'+oo.value;
			/*alert(url);*/		
			$.get(url,function(res){
				if(res == 1){
					$('#errMob').html('手机号已被注册');
					return false;
				}else{
					$('#errMob').html('');
				}
			});
		}
		return true;
}

function checkCode(oo){
	var patt = /^\w{4}$/;
		if(!patt.test(oo.value)){
			$('#errVer').html('验证码输入不对');
			return false;
		}else{		
		//利用Ajax实现：验证码是否正确
			var url = '/index.php/Home/User/checkVerify/verifyCode/'+oo.value;
			/*alert(url);	*/	
			$.get(url,function(res){
				if(res==true){
					$('#errVer').html('');
				}else{
					$('#errVer').html('验证码错误,请刷新验证码');
					return false;
				}
			});
		}
		return true;
}

$(function(){
	$('#userid').blur(function(){
		//查询用户名是否合法
		checkUser(this);
	});


	//验证password是否合法
	$('#password').blur(function(){
		checkPassword(this);
	});

	//验证两次输入密码是否一致
	$('#rePassword').blur(function(){
		checkRepassword(this);
	});

	//邮箱验证
	$('#email').blur(function(){
		//查询邮箱是否合法
		checkEmail(this);
	});


	//手机号验证
	$('#mobile').blur(function(){
		//查询手机号是否合法
		checkMobile(this);
	});


	//验证码
	$('#verifyCode').blur(function(){
		//查询验证码位数是否正确
		checkCode(this);
	});


	//如果提交成功的话,那么就进入后端进行处理
	$('#submits').click(function(){
		if(!checkUser($('#userid')[0])){
			return false;
		}
		if(!checkPassword($('#password')[0])){
			return false;
		}
		if(!checkRepassword($('#rePassword')[0])){
			return false;
		}
		if(!checkEmail($('#email')[0])){
			return false;
		}
		if(!checkMobile($('#mobile')[0])){
			return false;
		}
		if(!checkCode($('#verifyCode')[0])){
			return false;
		}
		return true;
	});
});

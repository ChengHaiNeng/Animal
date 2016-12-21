$(function(){	

//判断长度
 function strlen(str) {
        var len = 0;
        for (var i = 0; i < str.length; i++) {
            var c = str.charCodeAt(i);
            //单字节加1 
            if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
                len++;
            }
            else {
                len += 1;
            }
        }
        return len;
    }

function checkUser(oo){
	if(strlen(oo.value)<3 || strlen(oo.value)>11){
					$('#errVerName').html("<span style='color:red'>用户名请在3到11位之间哦</span>");
					return false;
		}else{
			$('#errUid').html('');
		}
		return true;
}

function  checkPassword(oo){
	var patt = /^[\w\d]{3,11}$/;
		if(!patt.test(oo.value)){
			$('#errPass').html('密码请在3到11位之间哦');
			return false;
		}else{
			$('#errPass').html('');
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


	$('#userid').blur(function(){
		//查询用户名是否合法
		checkUser(this);
	});


	//验证password是否合法
	$('#password').blur(function(){
		checkPassword(this);
	});

	//验证码
	$('#verifyCode').blur(function(){
		//查询验证码位数是否正确
		checkCode(this);
	});



	$('#submits').click(function(){
		if(!checkUser($('#userid')[0])){
			return false;
		}
		if(!checkPassword($('#password')[0])){
			return false;
		}

		if(!checkCode($('#verifyCode')[0])){
			return false;
		}
		return true;
	});



});

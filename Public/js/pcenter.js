//普通用户和高级用户用更新用户名
function checkUser(oo){
				if(strlen(oo.value)<3 || strlen(oo.value)>11){
					$('#errVerName').html("<span style='color:red'>用户名请在3到11位之间哦</span>");
					return false;
				}else{		
				//利用Ajax实现用户名查询是否存在
				          $('#errVerName').html('');
					var url = '/Home/User/checkUidExist/uid/'+oo.value;
					/*alert(url);*/		
					$.get(url,function(res){
						if(res){
							$('#errVerName').html("<span style='color:red'>用户名已被占用");
							return false;
						}else{
							$('#errVerName').html('');
							updateUser(oo);
						}
					});
				}
		}
function updateUser(oo){
				var tname=$('#cookieusername').html();
				var url = '/Home/User/updateUser/tid/'+tname+'/uid/'+oo.value;
					/*alert(url);*/		
					$.get(url,function(res){
						if(res){
							$('#xianshi').html("<span style='color:red'>恭喜您,用户名修改成功");
							$('#pusername').html(res.username);
							$('#cookieusername').html(res.username);
							$('#xusername').html(res.username);
						}else{
							$('#errVerName').html('用户名修改失败');
						}
					},'json');
}

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

//修改用户简介
function changSelf(oo){
			if(strlen(oo.value)>30 || strlen(oo.value)<10){
				$('#erojieshao').html('<span style="color:red">长度必须在10到30位之间</span>');
				return false;
			}else{
				$('#erojieshao').html('');
				var url='/Home/User/updateIntro';
				var data={
					'intro':oo.value
				};
				$.post(url,data,function(res){
					$('#xianshi').html("<span style='color:red'>恭喜您,自我介绍修改成功");
					$('#gself').html(oo.value);
				});
			}
		}

	

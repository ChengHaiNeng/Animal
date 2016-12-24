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


function ajaxFileUpload() {
            $.ajaxFileUpload (
                {
                    url: '/Home/User/editIcon', //用于文件上传的服务器端请求地址
                    secureuri: false, //是否需要安全协议，一般设置为false
                    fileElementId: 'icon', //文件上传域的ID
                    dataType: 'json', //返回值类型 一般设置为json
                    success: function (data, status)  //服务器成功响应处理函数
                    {
                        $("#imgoo").attr("src",data.imgurl);
                        $('#xianshi').html("<span style='color:red'>头像修改成功");
                        if (typeof (data.error) != 'undefined') {
                            if (data.error != '') {
                                alert(data.error);
                            } else {
                                alert(data.msg);
                            }
                        }
                    },
                    error: function (data, status, e)//服务器响应失败处理函数
                    {
                        alert(e);
                    }
                }
            )
            return false;
        }
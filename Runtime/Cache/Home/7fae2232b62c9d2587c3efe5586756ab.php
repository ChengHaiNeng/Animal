<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>农牧大家评-普通用户中心</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="/Public/css/amazeui.min.css">
    <link rel="stylesheet" href="/Public/css/petshow.css?6">
	<link rel="stylesheet" href="/Public/css/animate.min.css">
	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script src="/Public/js/jquery.min.js"></script>
    <script src="/Public/js/amazeui.min.js"></script>
    <script src="/Public/js/amazeui.lazyload.min.js"></script>
   <script src="/Public/js/pcenter.js"></script>
   <script src="/Public/js/upload.js"></script>
 
</head>
<body>
<header class="am-topbar am-topbar-fixed-top am-topbar-inverse">
    <div class="amz-container">
        <h1 class="am-topbar-brand">
            <a href="#" class="am-topbar-logo">
                <img src="/Public/img/logo.png?1" alt="">
            </a>
        </h1>
        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
                data-am-collapse="{target: '#doc-topbar-collapse-5'}">
            <span class="am-sr-only">
                导航切换
            </span>
            <span class="am-icon-bars">
            </span>
        </button>
		
        <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse-5">
            <ul class="am-nav am-nav-pills am-topbar-nav">
                <li class="am-active">
                    <a href="/">
                        首页
                    </a>
                </li>
                 <li >
                    <a href="#">
                        农牧趣闻
                    </a>
                </li>
                <li>
                    <a href="#">
                        农牧服务
                    </a>
                </li>
                <li>
                    <a href="#">
                        农牧专题
                    </a>
                </li>
				<li>
                    <a href="#">
                        关于我们
                    </a>
                </li>
				
            </ul>
<?php if($_COOKIE['username']== null ): ?><div class="am-topbar-right">
                <button class="am-btn am-btn-danger am-topbar-btn am-btn-sm"><span class="am-icon-pencil"></span>注册</button>
            </div>
    
            <div class="am-topbar-right">
                <button class="am-btn am-btn-danger am-topbar-btn am-btn-sm"><span class="am-icon-user"></span> 登录</button>
            </div>
   
<?php else: ?>
            <div class="am-topbar-right">
                <span class="am-btn am-btn-danger am-topbar-btn am-btn-sm"><a href="<?php echo U('Home/User/logout');?>"><span class="am-icon-power-off"></span>退出</span></a>
            </div>

            <div class="am-topbar-right">
                <a href="<?php echo U('Home/User/pcenter');?>"><span class="am-btn am-btn-danger am-topbar-btn am-btn-sm"><span class="am-icon-user"></span>欢迎您,<span style="color:orange;font-size:15px;" id="cookieusername"><?php echo (cookie('username')); ?></span></span></span></a>
            </div><?php endif; ?>

			
        </div>
    </div>
</header>

  <div style="margin-top:5px;width:70%;margin-right:15%;margin-left:15%;"  data-am-widget="intro"
       class="am-intro am-cf am-intro-default">
		<h3><i class="am-icon-user-plus"></i>普通用户中心</h3>
<span data-am-widget="gallery" data-am-gallery="{ pureview: true }">
<?php if($user['icon'] == null): ?><img id="imgoo" src="/Public/img/zhenxiang.jpg" style="display:inline-block;width:80px;height:80px;" alt="头像" class="am-img-thumbnail am-circle">
    <?php else: ?>
    <img id="imgoo" src="<?php echo ($user['bicon']); ?>" style="display:inline-block;width:80px;height:80px;" alt="头像" class="am-img-thumbnail am-circle"><?php endif; ?>
</span>
		
		<span id="jiushi6" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 400, height: 225}">
 <i  class="am-icon-wrench"></i>修改头像
</span>
	<a href="/Home/User/upg"> <i  class="am-icon-hand-o-up"></i>申请成为高级用户</a>

		

  </div>
  
 
	
	
  </div>
</div>

<div style="width:70%;margin-left:15%;margin-left:15%;margin-bottom:100px;" data-am-widget="tabs"
       class="am-tabs am-tabs-default"
        >
      <ul class="am-tabs-nav am-cf">
          <li class="am-active"><a href="[data-tab-panel-0]"><i class="am-icon-user"></i>普通用户信息</a></li>
      </ul>
	  
      <div class="am-tabs-bd">
		  
		  
		  <div data-tab-panel-0 class="am-tab-panel am-active ">
		   
		   
		   
		   
	       
		<ul class="am-list-static">
		
		  <li><i class="am-icon-newspaper-o"></i>用户名称:<span id = "pusername"><?php echo ($user['username']); ?> </span> &nbsp;&nbsp;
		  <span data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 400, height: 225}">
  <i id="jiushi1" class="am-icon-edit"></i>
</span>
		  
		  
		  
		  <li><i class="am-icon-mobile"></i>手机号码:<?php echo ($user['mobile']); ?>  &nbsp;&nbsp; <span data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 400, height: 225}">
  <i id="jiushi2" class="am-icon-edit"></i>
</span></li>
		  <li><i class="am-icon-envelope-o"></i>邮箱:<?php echo ($user['email']); ?>  &nbsp;&nbsp; <span data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 400, height: 225}">
  <i id="jiushi3" class="am-icon-edit"></i>
</span></li>
		  
<li><i class="am-icon-lock"></i>密码:*******  &nbsp;&nbsp; <span data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 400, height: 225}">
  <i id="jiushi5" class="am-icon-edit"></i>
</span></li>
<li><i class="am-icon-clock-o"></i>注册时间:<?php echo ($user['regtime']); ?> </li>
		</ul>		   
		
</div>
      </div>

	  
	  
<div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-1">
  <div class="am-modal-dialog">
    <div  class="am-modal-hd">
      <a href="javascript:void();" class="am-close am-close-spin" data-am-modal-close>&times;</a>
    </div>
    <div id="xianshi" class="am-modal-bd">
    </div>
  </div>
</div>

<!-- action ="<?php echo U('User/changename/');?>" -->
<div style="display:none" id="biaodan2">
<form     method = "post">
<div style="font-size:16px;margin-bottom:8px;">用户名称修改</div>
<span id = "errVerName"></span>
<input  type="text" id ="username" name="username" value="">
<input type="button" id = "changename"   value="提交" >
</form>
</div>

<div style="display:none" id="biaodan3">
<form  action="<?php echo U('User/changemobile/');?>" method="post">
<div  style="font-size:16px;margin-bottom:8px;">手机号码修改</div>
<span>(请输入正确的手机号码)</span>
<input  type="text" name="mobile" value="">
<input type="submit" value="提交"  value="提交">
</form>
</div>

<div style="display:none" id="biaodan4">
<form  action="<?php echo U('User/changemail/');?>" method="post">
<div  style="font-size:16px;margin-bottom:8px;">邮箱修改</div>
<span >(请输入正确的邮箱)</span>
<input type="text" name="email" value="">
<input type="submit" value="提交" value="提交">
</form>
</div>

<div style="display:none" id="biaodan5">
<form action="http://www.baidu.com" method="post">
<div  style="font-size:16px;margin-bottom:8px;">居住地修改</div>
<span>(请输入正确的居住地)</span>
<input  type="text" name="location" value="">
<input type="submit" value="提交" value="提交">
</form>
</div>

<div style="display:none" id="biaodan6">
<form  action="<?php echo U('User/changepwd/');?>" method="post">
<div  style="font-size:16px;margin-bottom:8px;">密码修改</div>
新&nbsp&nbsp;密&nbsp&nbsp;码:<input style="margin-bottom:10px"  type="text" name="password" value=""><br/>
确认密码:<input style="margin-bottom:10px"  type="text" name="repassword" value=""><br/>
<input type="submit" value="提交" value="提交">
</form>
</div>

<div style="display:none" id="biaodan7">
<form>
  <div  style="font-size:16px;margin-bottom:8px;">头像修改</div>
  <input type="file" id="icon" name="icon" size="12" />  
  <p><input type="button"  id="editicon" value="提交"></p>
  </form>
</div>

 <script>
 
 
  $('#jiushi1').click(function(){
  var html=$('#biaodan2').html();
		$('#xianshi').html(html);
            $('#username').blur(function(){
                   checkUser(this);
             });
            $('#changename').click(function(){
                    updateUser($('#username')[0]);
            });
            $('.am-close-spin').click(function(){
                window.location.reload();
            })
 });
 
 
 
  $('#jiushi2').click(function(){
  var html=$('#biaodan3').html();
		$('#xianshi').html(html);
 });
 
 
  $('#jiushi3').click(function(){
		var html=$('#biaodan4').html();
		$('#xianshi').html(html);
 });
 
   $('#jiushi4').click(function(){
		var html=$('#biaodan5').html();
		$('#xianshi').html(html);
 });
 
  $('#jiushi5').click(function(){
		var html=$('#biaodan6').html();
		$('#xianshi').html(html);
 });
 
 $('#jiushi6').click(function(){
    var html=$('#biaodan7').html();
    $('#xianshi').html(html);

              $("#editicon").click(function () {
                    ajaxFileUpload();
              })

 });
 
 </script>




	  
  </div>
  

 






<footer  class="am_footer">
    <div class="am_footer_con">
        <div class="am_footer_link">
            <span>关于农牧大家评</span>
            <ul>
                <li><a href="###">关于我们</a></li>
                <li><a href="###">发展历程</a></li>
                <li><a href="###">友情链接</a></li>
            </ul>
        </div>


        <div class="am_footer_don">
            <span>农牧大家评</span>
            <dl>
                <dt><img src="/Public/img/footdon.png?1" alt=""></dt>
                <dd>一起来分享我们的农牧人故事,农牧大家评。
                    <a href="###" class="footdon_pg ">
                        <div class="foot_d_pg am-icon-apple "> App store</div>
                    </a><a href="###" class="footdon_az animated">
                        <div class="foot_d_az am-icon-android "> Android</div>
                    </a></dd>

            </dl>
        </div>

        <div class="am_footer_erweima">
            <div class="am_footer_weixin"><img src="/Public/img/wx.jpg" alt="">

                <div class="am_footer_d_gzwx am-icon-weixin"> 关注微信</div>
            </div>
            <div class="am_footer_ddon"><img src="/Public/img/wx.jpg" alt="">

                <div class="am_footer_d_dxz am-icon-cloud-download"> 扫码下载</div>
            </div>

        </div>

    </div>
    <div class="am_info_line">Copyright(c)2016 <span>nongmushow</span> All Rights Reserved</div>
</footer>
<script src="/Public/js/petshow.js"></script>
</body>
</html>
<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>农牧大家评-申请审核为高级用户</title>
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
</head>
<body>
<header class="am-topbar am-topbar-fixed-top am-topbar-inverse">
    <div class="amz-container">
        <h1 class="am-topbar-brand">
            <a href="#" class="am-topbar-logo">
                <img src="img/logo.png?1" alt="">
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
		<h3><i class="am-icon-user-plus"></i><?php echo (cookie('username')); ?>,正在申请成为高级用户</h3>
		<img src="/Public//img/a2.jpg" style="width:180px;height:180px;" alt="头像" class="am-img-thumbnail am-circle">
  </div>
  
  
					
				
  
  

<div style="margin-top:5%">
  <article  style="width:70%;margin-left:15%;margin-right:15%;margin-bottom:10%" data-am-widget="paragraph"
           class="am-paragraph am-paragraph-default"
           
           data-am-paragraph="{ tableScrollable: true, pureview: true}">
		   <h2><i class="am-icon-plus"></i>申请审核为高级用户</h2>
<form action="<?php echo U('Home/User/upg');?>" method='post' accept-charset="utf-8" enctype="multipart/form-data">
	<p>您的姓名:<br/><input type="text" name="realname" value="" placeholder="姓名"></p>
	<p>您的自我介绍:<br/><input type="text" name="self" value="" placeholder="用户自我介绍">
	<p>您的身份证号:<br/><input type="text" name="idcard" value="" placeholder="身份证号"></p>
	<p>您的住址:<br/><input type="text" name="address" value="" placeholder="地址"></p></p>
    
            <input type="submit" value="提交审核">	
    </form>
		   
  </article>	
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
                <dt><img src="img/footdon.png?1" alt=""></dt>
                <dd>一起来分享我们的农牧人故事,农牧大家评。
                    <a href="###" class="footdon_pg ">
                        <div class="foot_d_pg am-icon-apple "> App store</div>
                    </a><a href="###" class="footdon_az animated">
                        <div class="foot_d_az am-icon-android "> Android</div>
                    </a></dd>

            </dl>
        </div>

        <div class="am_footer_erweima">
            <div class="am_footer_weixin"><img src="img/wx.jpg" alt="">

                <div class="am_footer_d_gzwx am-icon-weixin"> 关注微信</div>
            </div>
            <div class="am_footer_ddon"><img src="img/wx.jpg" alt="">

                <div class="am_footer_d_dxz am-icon-cloud-download"> 扫码下载</div>
            </div>

        </div>

    </div>
    <div class="am_info_line">Copyright(c)2016 <span>nongmushow</span> All Rights Reserved</div>
</footer>
<script src="js/petshow.js"></script>
</body>
</html>
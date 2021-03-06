<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>农牧大家评-高级用户增加文章</title>
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
		<h3><i class="am-icon-user-plus"></i>高级用户中心</h3>
		<img src="/Public/img/a2.jpg" style="width:180px;height:180px;" alt="头像" class="am-img-thumbnail am-circle">
		<span style="margin-left:5%;">
					  <span><i class="am-icon-user"></i><span id="xusername"><?php echo ($user['username']); ?></span></span>&nbsp;
					  <span><i class="am-icon-thumbs-o-up"></i><span><?php echo ($user['zan']); ?>人喜欢</span></span>&nbsp;
					  <span><i class="am-icon-comments"></i><span>6 条评论</span></span>&nbsp;
					  <span><i class="am-icon-book"></i><span><?php echo ($user['article']); ?>篇文章</span></span>&nbsp;
					  <span><i class="am-icon-image"></i><span>20张图片 </span></span>&nbsp;
					  <span><i class="am-icon-eye"></i><span>126 次查看</span></span>&nbsp;
					 <span><i class="am-icon-clock-o"></i><span>注册时间:<?php echo ($user['regtime']); ?></span></span>
		</span>	
  </div>
  
  
					
				
  
  

<div style="margin-top:5%">
  <article  style="width:70%;margin-left:15%;margin-right:15%;margin-bottom:10%" data-am-widget="paragraph"
           class="am-paragraph am-paragraph-default"
           
           data-am-paragraph="{ tableScrollable: true, pureview: true}">
		   <h2><i class="am-icon-plus"></i>添加文章</h2>
		   	<form action="<?php echo U('Home/Publish/articleAdd');?>" method="post" enctype="multipart/form-data" >
		   	<input type="hidden" name='uid' value="<?php echo ($user['id']); ?>" />
					  <span style="margin-top:10px">文章主题:<input type="text" value="" name="title" />(不要超过20个字)</span>
					  <div style="margin-top:10px">文章内容(不要超过1000字):
					        <textarea class="lg" name="content" id="content"></textarea> 
					  </div>
					  <div style="margin-top:10px"><input type="submit" value="新增文章"></div>
					  </form>
		   
  </article>	
</div>  

<!--导入在线编辑器 -->
<link href="/Public/umeditor1_2_2-utf8-php/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="/Public/umeditor1_2_2-utf8-php/third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/umeditor1_2_2-utf8-php/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/Public/umeditor1_2_2-utf8-php/umeditor.min.js"></script>
<script type="text/javascript" src="/Public/umeditor1_2_2-utf8-php/lang/zh-cn/zh-cn.js"></script>
<script>
UM.getEditor('content', {
    initialFrameWidth : "100%",
    initialFrameHeight : 100,
});
</script>  










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
<script src="js/petshow.js"></script>
</body>
</html>
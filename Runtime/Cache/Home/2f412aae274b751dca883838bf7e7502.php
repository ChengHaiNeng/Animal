<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>农牧大家评-首页</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="/Public/css/amazeui.min.css">
    <link rel="stylesheet" href="/Public/css/petshow.css?6">
    <link rel="stylesheet" href="/Public/css/animate.min.css">
    <script src="/Public/js/jquery.min.js"></script>
    <script src="/Public/js/amazeui.min.js"></script>
    <script src="/Public/js/countUp.min.js"></script>
    <script src="/Public/js/amazeui.lazyload.min.js"></script>
    <script src="/Public/js/dianzan.js"></script>
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
                <a href="<?php echo U('Home/User/register');?>"><span class="am-btn am-btn-danger am-topbar-btn am-btn-sm"><span class="am-icon-pencil"></span>注册</span></a>
            </div>

            <div class="am-topbar-right">
                <a href="<?php echo U('Home/User/login');?>"><span class="am-btn am-btn-danger am-topbar-btn am-btn-sm"><span class="am-icon-user"></span> 登录</span></a>
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
<div class="get">
    <div class="am-g">
        <div class="am-u-lg-12">
            <div class="get-title">
                <div class="get_font_left"><span style="font-size:18px">已经有</span></div>
                <div class="get_font_center" id="banner_num"></div>
                <div class="get_font_rigth"><span style="font-size:18px">位农牧人</span></div>
            </div>

            <div style="margin-top:-18px;font-size:26px;filter:alpha(opacity=50); -moz-opacity:0.9; -khtml-opacity: 0.9; opacity: 0.9; " class="font_line">
			<span style="font-size:18px">农牧人自己的故事,农牧大家评</span>
			</div>
            <p>
                <a href="###" class="am-btn am-btn-sm get-btn  am-radius banner_ios am-icon-apple"> App store</a> <a
                    href="###" class="am-btn am-btn-sm  am-radius get-btn banner_android am-icon-android"> Android</a>
            </p>
        </div>
    </div>
</div>


<div class="am-g am-imglist">
    <ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
  am-avg-md-3 am-avg-lg-6 am-gallery-default">
    <?php if(is_array($data)): foreach($data as $key=>$v): ?><li>
            <div class="am-gallery-item am_list_block">
            
           <?php if($v['pic'] == null): ?><a href="<?php echo U('Home/Guser/index/',array('uid'=>$v['uid']));?>" class="am_img_bg">
                    <img class="am_img animated" src="/Public/img/loading.gif"
                         data-original="/Public/img/zhenxiang.jpg"
                         alt="远方 有一个地方 那里种有我们的梦想"/>
                </a>

           <?php else: ?>
                <a href="<?php echo U('Home/Guser/index/',array('uid'=>$v['uid']));?>" class="am_img_bg">
                    <img style="width:206px;height:206px;" class="am_img animated" src="/Public/img/loading.gif"
                         data-original="<?php echo ($v['pic']); ?>"
                         alt="远方 有一个地方 那里种有我们的梦想"/>
                </a><?php endif; ?>
                <div class="am_listimg_info"><a href="javascript:void(0);" title="点我点我" onclick="finger(<?php echo ($v['uid']); ?>);"><span class="am-icon-heart" id="finger<?php echo ($v['uid']); ?>" ><?php echo ($v['zan']); ?></span></a>
                <span class="am-icon-book">&nbsp;<?php echo ($v['article']); ?></span>
                <span class="am-icon-image">&nbsp;<?php echo ($v['tupian']); ?></span></div>
            </div>
            <a style="display:inline" class="am_imglist_user"><span class="am_imglist_user_ico">
            <script language="javascript">
if (screen.width>800 &&screen.width<1460 ) {
                $(".am_img").width(180);//此分辨率下你需要的操作
                $(".am_img").height(180);//此分辨率下你需要的操作
            }  else {
                 $(".am_img").width(206);//默认操作
                $(".am_img").height(206);//默认操作
            }
</script>
            <?php if($v['icon'] == null): ?><img id="imgoo"  src="/Public/img/zhenxiang.jpg" alt="头像" class="am-img-thumbnail am-circle">
    <?php else: ?>
    <img id="imgoo" src="<?php echo ($v['icon']); ?>"  alt="头像" class="am-img-thumbnail am-circle"><?php endif; ?>
            </span><span
            class="am_imglist_user_font"><?php echo ($v['username']); ?></span></a>
        </li><?php endforeach; endif; ?>
    </ul>
</div>
<footer class="am_footer">
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
<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
	//首页展示
    public function index(){
        //查Guser表,取出数据,展示
    	$guserModle = D('guser');
    	$guser = $guserModle->field('user.lastime,user.username,guser.*')->join('user on user.id=guser.uid')->select();
    	//获取高级用户的获得赞的总数的数组
    	foreach ($guser as $k => $v) {
    		$uid = $v['uid'];
    		$zan = D('Zan')->where("buid=$uid")->count();
    		$guser[$k]['zan']=$zan;
    	}

    	//print_r($zansum);
    	//print_r($guser);
    	//exit();
    	$this->assign('data',$guser);
    	$this->display();
    }
}
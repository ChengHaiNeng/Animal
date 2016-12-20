<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
	//首页展示
    public function index(){
        //查Guser表,取出数据,展示
    	$guserModle = D('Guser');
    	$guser = $guserModle->select();
    	$zans = [];
    	$zansum = [];
    	//获取高级用户的获得赞的总数的数组
    	foreach ($guser as $k => $v) {
    		$uid = $v['uid'];
    		$zan = $guserModle->table('Zan')->where("buid=$uid")->count();
    		$zans['count'] =$zan;
    		$zansum[] = $zans['count'];
    	}
    	$this->assign('data',$guser);
    	$this->assign('zan',$zansum);
    	$this->display();
    }
}
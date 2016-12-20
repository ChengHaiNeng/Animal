<?php 
namespace Home\Controller;
use Think\Controller;
class CenterController extends Controller{
	public function gcenter(){
		$uid = cookie('username');
		//获取高级用户的基本信息
		$guModle = D('Guser');
		$data = $guModle->where("uid=$uid")->select();
		$this->assign('data',$data);

		//获取文章列表
		$articleModle = D('Article');
		$count = $articleModle->count();
		$Page = new \Think\Page($count,5);
		$show = $Page->show();

		$article = $articleModle->where("uid=$uid")->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('page',$show);
		$this->assign('article',$$article);

		//取出用户的个人信息
		$userModle = D('User');
		$userinfo = $userModle->where("uid=$uid")->select();
		$this->assign('userinfo',$userinfo);

		//取出高级用户的图片信息
		$picModle = D('Pic');
		$pic = $picModle->where("uid=$uid AND aid=0")->limit(0,8)->select();
		$this->assign('pic',$pic);
		$this->display();
	}
}
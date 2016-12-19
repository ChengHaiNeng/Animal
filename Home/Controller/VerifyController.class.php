<?php 
namespace Home\Controller;
use Think\Controller;

class VerifyController extends Controller{
	public function verifyName(){
		$username = $_GET['username'];
		$userModel = D('user');
		$where  = array('username'=>"$username");
		$user = $userModel -> where($where)->find();
		if($user){
			echo 1;
		}else{
			//将username改变
			$uid = cookie('userid');
			$userModel = D('user');
			$data['username'] = $_GET['username'];
			$rs = $userModel ->data($data)-> where('id='.$uid)->save();
			if($rs){
				echo 0;
			}
		}	
	}
}


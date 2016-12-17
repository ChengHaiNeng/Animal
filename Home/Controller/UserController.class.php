<?php
namespace Home\Controller;
use Think\Controller;
use Think\Verify;
class UserController extends Controller{
	//用户登陆
	public function Login(){

	}

	//用户注册
	public function register(){
		$this->display();
	}

	//管理员登陆
	public function Manager(){

	}

	//用户中心
	public function Menter(){

	}

	//修改密码
	public function Changepwd(){

	}

	//修改手机号
	public function Changemobile(){

	}

	//修改邮箱
	public function Changemail(){

	}


	//生成验证码方法
	public function verify(){
		$Verify = new \Think\Verify();
		$Verify->length = 4;
		$Verify->useNoise = false;
		$Verify->entry();
	}

	//验证输入的用户名是否已存在
	public function checkUidExist(){
		$un =  $_GET['uid'];
		if($un == 111 ){
			echo 1;
		}
	}

	//验证输入的邮箱是否已存在
	public function checkEmailExist(){
		$un =  $_GET['email'];
		if($un == '111@11.com' ){
			echo 1;
		}
	}

	//验证输入的电话是否已存在
	public function checkMobExist(){
		$un =  $_GET['mobile'];
		if($un == '15888888888' ){
			echo 1;
		}
	}


	//验证码是否正确
	public function checkVerify(){
		$Verify = new \Think\Verify();
		$rs = $Verify->check($verify)
		
	}
}
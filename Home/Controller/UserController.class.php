<?php
namespace Home\Controller;
use Think\Controller;
use Think\Verify;
class UserController extends Controller{

	//用户登陆
	public function Login(){
		$this->display();
	}
	
	//用户注册
	public function register(){
		if(empty($_POST)){
			$this->display();
		}else{
			$userid = $_POST['userid'];
			$password = $_POST['password'];
			$email = $_POST['email'];
			$mobile = $_POST['mobile'];
			//判断用户名是否合法，不合法告知原因，并跳转至登录页
							
			//判断密码是否合法，不合法告知原因，并跳转至登录页
			

			//判断邮箱是否合法，不合法告知原因，并跳转至登录页
			

			////判断手机 是否合法，不合法告知原因，并跳转至登录页


		}		


		
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
		$userModel = M('user');
		$username =  $_GET['uid'];
		$where = array('username'=>"$username");
		$isExist = $userModel->where($where)->find();
		if($isExist){
			echo 1;
		}
	}

	//验证输入的邮箱是否已存在
	public function checkEmailExist(){
		$userModel = M('user');
		$email =  $_GET['email'];
		$where = array('email'=>"$email");
		$isExist = $userModel->where($where)->find();
		if($isExist){
			echo 1;
		}
	}

	//验证输入的电话是否已存在
	public function checkMobExist(){
		$userModel = M('user');
		$mobile =  $_GET['mobile'];
		$where = array('mobile'=>"$mobile");
		$isExist = $userModel->where($where)->find();
		if($isExist){
			echo 1;
		}
	}


	//验证码是否正确
	public function checkVerify(){
		$Verify = new \Think\Verify();
		$verifyCode = $_GET['verifyCode'];
		$rs = $Verify->check($verifyCode);
		$rs = json_encode($rs);
		var_dump($rs);		
	}
}
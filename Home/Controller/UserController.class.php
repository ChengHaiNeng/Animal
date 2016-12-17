<?php
namespace Home\Controller;
use Think\Controller;
use Think\Verify;
class UserController extends Controller{

	//用户登陆
	public function Login(){
		if(empty($_POST)){
			$this->display();
		}else{
			$username = $_POST['userid'];
			$password = $_POST['password'];
			$userModel = D('user');	
			$where = array('username'=>"$username");
			$user = $userModel->where($where)->find();
			if($user['password']==md5($password.C('salt'))){
				cookie('username',md5(C('salt').$username),3600*24*7);
				//进入到用户中心
				//$this->redirect('Home/Index/index');			
			}else{
				//返回登录页
				/*$this->redirect('Home/User/login', array('errtype'=>1), 1,'用户名或密码错误');
					exit();*/
					//var_dump($user);
					//echo md5(C('salt').$password);
			}

		}
	}

	//用户注册
	public function register(){
		if(empty($_POST)){
			$this->display();
		}else{
			$username = $_POST['userid'];
			/*echo $username;
			exit();*/
			$password = $_POST['password'];
			$rePassword = $_POST['rePassword'];
			$email = $_POST['email'];
			$mobile = $_POST['mobile'];
			
			//判断用户名是否合法，不合法告知原因，并跳转至登录页
			$patt = "/^\w{3,11}$/";	
			if(!preg_match($patt,$username)){
				echo "用户名格式不对，请重试!<br>";
				/*$this->redirect('Home/User/register', array('errtype'=>1), 1,'跳转中。。。');*/  
				$this->redirect('Home/User/register');
				exit();
			}				
			//判断密码是否合法，不合法告知原因，并跳转至登录页
			if(!preg_match($patt,$password)){
				$this->redirect('Home/User/register');
				exit();
			}	
			//判断密码和确认密码是否相同
			if($password!=$rePassword)	{
				$this->redirect('Home/User/register');
				exit();
			}
			//判断邮箱是否合法，不合法告知原因，并跳转至登录页
			$patt = "/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/";
			if(!preg_match($patt,$email)){
				$this->redirect('Home/User/register');
				exit();
			}	

			////判断手机 是否合法，不合法告知原因，并跳转至登录页
			$patt = "/^[1][3,4,5,8][0-9]{9}$/";
			if(!preg_match($patt,$mobile)){
				$this->redirect('Home/User/register');
				exit();
			}

			//给password加密
			$salt = C('salt');
			$password = md5($password.$salt);
			$userModel = D('user');			
			if($userModel->create()){
				$userModel->username = $username;
				$userModel->password = $password;
				$userModel->salt = $salt;
				$userModel->lastime = time();
				$userModel->regtime = time();
				if($userModel->add()){
					cookie('username',md5(C('salt').$username),3600*24*7);
					//$this->redirect('Home/Index/index');
					//跳转到用户中心
				}
			}else{
				echo "注册失败，请重试";
			}
		}				
	}


	public function logout(){
		cookie('username',null);
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
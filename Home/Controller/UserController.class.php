<?php
namespace Home\Controller;
use Think\Controller;
use Think\Verify;
class UserController extends Controller{
	//用户登陆
	//
	//static $isVerify = 0;
	
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
				cookie('username',/*md5(C('salt').$*/$user['id']/*)*/,3600*24*7);
				//进入到用户中心
				//$this->redirect('Home/Index/index');			
			}else{
				$this->redirect('Home/User/login');
				//返回登录页
				//$this->redirect('Home/User/login', array('errtype'=>1), 1,'用户名或密码错误');
					exit();
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
			$username = $_POST['username'];
			$password = $_POST['password'];

			$rePassword = $_POST['rePassword'];
			$email = $_POST['email'];
			$mobile = $_POST['mobile'];
			$verifyCode = $_POST['verifyCode'];
			// var_dump($_POST);
			//用一个数组记录错误类型
			/*echo 1;*/
			$errArr = [];
			
			//判断验证码是否正确
			
			/*if($this->$isVerify == 0){
				$errArr['verifyCode'] = "验证码错误";				
			}else{
				$this->$isVerify == 0;			
			}*/

			//判断用户名是否合法，不合法告知原因，并跳转至登录页
			$patt = '/^\w{3,11}$/';	
			// echo $username;
			// exit();
			// var_dump(preg_match_all($patt,$_POST['username']));
			// exit();
			if(!preg_match($patt,$username)){
				$errArr['errName'] = '用户名格式不对';
			}


			//判断用户名是否已存在
			$userModel = M('user');
			$where = array('username'=>"$username");
			$isExist = $userModel->where($where)->find();
			if($isExist){
				$errArr['errName'] = '用户名已被占用';
			}
// var_dump($errArr);exit;
			//判断密码是否合法，不合法告知原因，并跳转至登录页
			if(!preg_match($patt,$password)){
				$errArr['errPass'] = '密码格式不对';
			}	
			//判断密码和确认密码是否相同
			if($password!=$rePassword)	{
				$errArr['errRepass'] = '两次密码不一致';
			}
			//判断邮箱是否合法，不合法告知原因，并跳转至登录页
			$patt = "/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/";
			if(!preg_match($patt,$email)){
				$errArr['errEmail'] = 'email格式不对';
			}

			//判断邮箱是否已被注册
			$where = array('mobile'=>"$mobile");
			$isExist = $userModel->where($where)->find();
			if($isExist){
				$errArr['errEmail'] = 'email已被注册';
			}	

			////判断手机 是否合法，不合法告知原因，并跳转至登录页
			$patt = "/^[1][3,4,5,8][0-9]{9}$/";
			if(!preg_match($patt,$mobile)){
				$errArr['errMobile'] = '手机号格式不对';
			}

			//判断手机是否已被注册
			$where = array('mobile'=>"$mobile");
			$isExist = $userModel->where($where)->find();
			if($isExist){
				$errArr['errMobile'] = '手机号已被注册';
			}

			

			//如果错误数组 有内容，则返回内容，如果没有，直接进行处理数据
			if(count($errArr)>0){
				var_dump($errArr);
			}else{
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
						//cookie('username',/*md5(C('salt').*/$username/*)*/,3600*24*7);						
						/*$this->success('成功','register');*/
						echo 111;
					}else{
						//注册失败的处理
						echo 1;
						//
					}
				}
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
			
		if ($_GET['verifyCode']!=""&& $_GET['verifyCode']=="3333"){
			$rs = "true";
			var_dump("111111111");
			var_dump(C('veri'));

		}else{
			$verify = $_GET['verifyCode'];
			$rs = $Verify->check($verify);

			if($rs){

				C('veri',$verify);
				
			}
			
			$rs = json_encode($rs);
			var_dump($rs);
		}
				
	}


	//注册提交表单时候的Ajax异步验证方法
	public function checkSubmitReg(){
		var_dump($_POST);
	}
}
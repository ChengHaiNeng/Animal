<?php
namespace Home\Controller;
use Think\Controller;
use Think\Verify;
use JWT;
class UserController extends Controller{
	//用户登陆
	//
	//static $isVerify = 0;
	public function Login(){
		if(cookie('username')){
			$userModel = D('user');
			$username=cookie('username');
			$user = $userModel->where($where)->find();
			if($user['role']==0){
					$this->redirect('Home/User/pcenter');
				}else if($user['role']==1){
					//如果role==1进入到高级用户中心
				$this->redirect('Home/User/gcenter');
			}
		}
		if(empty($_POST)){
			$this->display();
		}else{
			$username = $_POST['userid'];
			$password = $_POST['password'];
			$userModel = D('user');	
			$where = array('username'=>"$username");
			$user = $userModel->where($where)->find();
			if($user['password']==md5($password.C('salt'))){
				cookie('username',/*md5(C('salt').$*/$username/*)*/,3600*24*7);
				
				//如果role==0进入到普通用户中心
				if($user['role']==0){
					$this->redirect('Home/User/pcenter');
				}else if($user['role']==1){
					//如果role==1进入到高级用户中心
					$this->redirect('Home/User/gcenter');
				}		
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


	//验证用户名是否合法
	public function checkUser($username){
		//判断用户名是否合法，不合法告知原因，并跳转至登录页
			$length=mb_strlen($username);
			if($length<3 || $length>11){
				$errArr['errName'] = '用户名必须在3到11位之间';
				exit();
			}


			//判断用户名是否已存在
			$userModel = M('user');
			$where = array('username'=>"$username");
			$isExist = $userModel->where($where)->find();
			if($isExist){
				$errArr['errName'] = '用户名已被占用';
				exit();
			}
	}

	

	//用户注册
	public function register(){
		if(cookie('username')){
			$userModel = D('user');
			$username=cookie('username');
			$user = $userModel->where($where)->find();
			if($user['role']==0){
					$this->redirect('Home/User/pcenter');
				}else if($user['role']==1){
					//如果role==1进入到高级用户中心
					$this->redirect('Home/User/gcenter');
				}
		}
		if(empty($_POST)){
			$this->display();
		}else{
			$username = $_POST['userid'];
			$password = $_POST['password'];

			$rePassword = $_POST['rePassword'];
			$email = $_POST['email'];
			$mobile = $_POST['mobile'];
			$verifyCode = $_POST['verifyCode'];
			// var_dump($_POST);
			//用一个数组记录错误类型
			/*echo 1;*/
			$errArr = [];

//暂停止此项目,待上线在做验证码验证
			// $Verify = new \Think\Verify();
		 //          $Verify->reset = false;
		 //          if(!$Verify->check(I('post.verifyCode'))){
			// 		$errArr['errName'] = '验证码错误';
					
			// 		exit();
			// 	}
			$userModel=D('user');
			$this->checkUser($username);
			
// var_dump($errArr);exit;
			$patt = '/^\w{3,11}$/';
			//判断密码是否合法，不合法告知原因，并跳转至登录页
			if(!preg_match($patt,$password)){
				$errArr['errPass'] = '密码格式不对';
				exit();
			}	
			//判断密码和确认密码是否相同
			if($password!=$rePassword)	{
				$errArr['errRepass'] = '两次密码不一致';
				exit();
			}
			//判断邮箱是否合法，不合法告知原因，并跳转至登录页
			$patt = "/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/";
			if(!preg_match($patt,$email)){
				$errArr['errEmail'] = 'email格式不对';
				exit();
			}

			//判断邮箱是否已被注册
			$where = array("email"=>"$email");
			$isExist = $userModel->where($where)->find();
			if($isExist){
				$errArr['errEmail'] = 'email已经被占用';
				exit();
			}	

			////判断手机 是否合法，不合法告知原因，并跳转至登录页
			$patt = "/^[1][3,4,5,8][0-9]{9}$/";
			if(!preg_match($patt,$mobile)){
				$errArr['errMobile'] = '手机号格式不对';
				exit();
			}

			//判断手机是否已被注册
			$where = array('mobile'=>"$mobile");
			$isExist = $userModel->where($where)->find();
			if($isExist){
				$errArr['errMobile'] = '手机号码已被注册';
				exit();
			}

			

			//如果错误数组 有内容，则返回内容，如果没有，直接进行处理数据
			if(count($errArr)>0){
				$this->error(var_dump($errArr),'/Home/User/register',100);
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
						$this->success('注册成功','/Home/User/login');
					}else{
						$this->error('注册失败','/Home/User/register');
					}
				}
			}				
		}
	}

	public function logout(){
		cookie('username',null);
		$this->redirect('Home/User/login');
	}
	//管理员登陆
	public function Manager(){

	}

	//普通用户中心
	public function pcenter(){
		if(empty($_POST)){
			//如果没有post则查询cookie
			if(cookie('username')){
				//cookie存在
				//跟userid查询数据库
				$username = cookie('username');
				$userModel = D('user');
				$user = $userModel->where("username='$username'")->find();	
				//assian到前台页面显示
				//var_dump($user);
				$user['regtime']=date("Y-m-d H:i:s",$user['regtime']);


				if($user['role']==0){
					//如果role==0进入到普通用户中心
					$this->assign('user',$user);
					$this->display('pcenter');
				}else if($user['role']==1){
					//如果role==1进入到高级用户中心
					$this->redirect('Home/User/gcenter');
				}


				
			}else{
				$this->redirect('Home/User/login');
			}			
		}		
	}


	//高级用户中心
	public function gcenter(){
		if(cookie('username')){
		//cookie存在
		//跟userid查询数据库
		$username = cookie('username');
		$userModel = D('user');
		$user = $userModel->where("username='$username'")->find();
		$zan = D('Zan')->where("buid=$user[id]")->count();

		//获取文章且分页显示
		$count=D('article')->where("uid=$user[id]")->count();
		$Page= new \Think\Page($count,6);// 实例化分页类 
		$Page -> setConfig('header','共%TOTAL_ROW%篇');
		$Page -> setConfig('first','首页');
		$Page -> setConfig('last','共%TOTAL_PAGE%页');
		$Page -> setConfig('prev','上一页');
		$Page -> setConfig('next','下一页');
		$Page -> setConfig('link','indexpagenumb');//pagenumb 会替换成页码
		$Page -> setConfig('theme','%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
		$show= $Page->show();

		
		//获取文章
		$article=D('article')->field('id,title,pubtime,uid')->where("uid=$user[id]")->order('pubtime desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		foreach ($article as $key => $value) {
			static $a=1;
			$article[$key]['pubtime']=date('Y/m/d H:i:s',$value['pubtime']);
			$p=I('get.p');
			if($p==null){
				$p=1;
			}
			$article[$key]['shunxu']=$a+($p-1)*6;
			$a++;
		}
		unset($a);

		//取出图片
		$matches=array();
		//取出所有文章中的所有图片地址
		$article1=D('article')->field('id,title,content,pubtime,uid')->where("uid=$user[id]")->order('pubtime desc')->select();
		foreach ($article1 as $key1 => $value1) {
			$patten="/(href|src)=([\"|']?)([^\"'>]+.(jpg|JPG|jpeg|JPEG|gif|GIF|png|PNG))/i";
			preg_match_all($patten,$article1[$key1]['content'],$matches[]);
			$article1[$key1]['pubtime']=date('Y/m/d H:i:s',$value1['pubtime']);
		}

		$arr=array();
		foreach ($matches as $key1 => $value1) {
			foreach ($value1 as $key2 => $value2) {
				foreach ($value2 as $key3 => $value3) {
					if (strlen($value3)>15) {
						if(substr($value3,0,4)=='src='){
							$value2[$key3]=substr($value3,5);
						}
						$arr[]=$value2[$key3];
					}
				}
			}
		}
		$arr=array_unique($arr);
		$this->assign('arr',$arr);
		$arrcount=count($arr);
		$this->assign('arrcount',$arrcount);
		//end

		$this->assign('show',$show);
		$this->assign('article',$article);
		$this->assign('count',$count);
		$this->assign('zan',$zan);
		//assian到前台页面显示
		//var_dump($user);
		$user['regtime']=date("Y/m/d H:i:s",$user['regtime']);
		
				if($user['role']==0){
							//如果role==0进入到普通用户中心
							$this->redirect('Home/User/pcenter');
				}else if($user['role']==1){
							//如果role==1进入到高级用户中心
							$guser=D('guser')->where("uid='$user[id]'")->find();
							$this->assign('guser',$guser);
							$this->assign('user',$user);
							$this->display('gcenter');
					}

		}else{
			$this->redirect('Home/User/login');
		}
	}


	//修改用户名
	public function updateUser(){
	      $username=I('get.uid');
	      $tname=I('get.tid');
	      $this->checkUser($username);
	      $userModel = D('user');
	      $where = array('username'=>$tname);
	      if($userModel->where($where)->save(array('username'=>"$username"))){
	      	$arr=array();
	      	$arr['username']=$username;
	      	cookie('username',$username,7*24*3600);

	      	echo json_encode($arr);
	      }else{
	      	echo  0;
	      }
	}

	//修改头像
	public function editIcon(){

		//tp中上传代码,仅供
	 //  $upload=new \Think\Upload();
  //            $upload->exts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
  //            $upload->rootPath = './Public/up/'; // 设置附件上传根目录
  //            $info = $upload->upload();
  //            if ($info) {
  //                $_POST['goods_img']="/Public/up/".$info['goods_img']['savepath'].$info['goods_img']['savename'];
  //                $thumb_img = new \Think\Image();
  //                $thumb_img->open('.'.$_POST['goods_img']);
  //                $thump_path="./Public/up/thumb/".$info['goods_img']['savename'];
  //                $thumb_img->thumb(230,230)->save($thump_path);
  //                $_POST['thumb_img']=$thump_path;
  //            }else{
  //               echo '图片上传失败';
  //            }
		// //当前是谁上传的头像
		$username=cookie('username');
		//获取上传的图片
		$icon=$_FILES['icon']['tmp_name'];
		//创建上传的图片的文件夹/Public/upload/icon/20161212
		$dirname="./Public/upload/icon/".date('Ym',time());
		//如果没有就重新创建
		if(!is_dir($dirname)) {
    			mkdir($dirname, 0777, true);
		}
		//上传图片的唯一名字id
		$name1=$this->oneymd();
		$name2=$this->oneymd();
		//上传图片的路径
		$imgurl1=$dirname.'/'.$name1.'_300x300.jpg';
		$imgurl2=$dirname.'/'.$name2.'_50x50.jpg';
		$thumb_img = new \Think\Image();
		$thumb_img->open($icon);
		$thump_path1=$imgurl1;
		$thump_path2=$imgurl2;
		$res1=$thumb_img->thumb(300,300)->save($thump_path1);
		$res2=$thumb_img->thumb(50,50)->save($thump_path2);
		if($res1&&$res2){
		    $user=D('user');
		    $user->where("username='$username'")->find();
		    //删除之前此用户上传的头像,节约空间
		    if(file_exists('.'.$user->icon)){
		    	unlink('.'.$user->icon);
		    }
		    if(file_exists('.'.$user->bicon)){
		    	unlink('.'.$user->bicon);
		    }
		    //去掉头片的空格,thinkphp中的bug
		     $imgurl1=ltrim($imgurl1, ".");
		     $imgurl2=ltrim($imgurl2, ".");
		      	//保存头像地址到user表中
		    	$res=$user->where("username='$username'")->save(['icon'=>$imgurl2,'bicon'=>$imgurl1]);
		    	if($res){
		    		//如果保存成功,返回头片路径,
		    		$data=array('imgurl'=>$imgurl1);
		    	}else{
		    		$data["error"] = "error";
		     	}
		   
		}else{
		    $data["error"] = "error";
		}
		//ajax告诉前端上传成功,并传图像地址
		echo json_encode($data);
	}
	
	//生成一个不重复的名字
	public  function  oneymd() {

	return (date('d')) . str_pad((time() - strtotime(date('Y-m-d'))), 5, 0, STR_PAD_LEFT) . substr(microtime(), 2, 6) . sprintf('%03d', rand(0, 999));

	}	

	//验证自我介绍是否合法
	public function checkIntro($intro){
		$length=mb_strlen($intro);
			if($length<10 || $length>30){
				$errArr['errName'] = '自我介绍必须在10到30位之间';
				exit();
			}
	}

	//修改简介
	public function updateIntro(){
		$intro=I('post.intro');
		$this->checkIntro($intro);
		$username=cookie('username');
		$userModle=D('user');
		if ($userModle->where("username='$username'")->save($_POST)) {
			echo 1;
		}else{
			echo 0;
		}
		
	}


	//申请成为高级用户
	public function upg(){
		//如果已经是高级用户
		$cookiename=cookie('username');
			$user=D('user')->where("username='$cookiename'")->find();
			if($user['role']==1){
				$this->redirect('Home/User/gcenter');
			}

		if(!IS_POST){
			$this->display('shenhe');
		}else{
			$_POST['uid']=$user['id'];
			if(D('guser')->add($_POST)){
				if(D('user')->where("id='$user[id]'")->save(['role'=>1])){
					$this->success('Home/User/gcenter');
				}else{
					$this->error('Home/User/shenhe');
				}
			}
		}
	}
	

	//修改密码
	public function changePwd(){

	}

	//修改手机号
	public function changeMobile(){

	}

	//修改邮箱
	public function changEmail(){

	}

	
	//生成验证码方法
	public function verify(){
		$Verify = new \Think\Verify();
		$Verify->reset = true;
		$Verify->length = 4;
		$Verify->useNoise = false;
		$Verify->entry();
	}

	//验证输入的用户名是否已存在
	public function checkUidExist(){
		$userModel = M('user');
		$username = I('get.uid');
		$where = array('username'=>"$username");
		$isExist = $userModel->where($where)->find();
		if($isExist){
			echo 1;
		}
	}

	//验证输入的邮箱是否已存在
	public function checkEmailExist(){
		$userModel = M('user');
		$email = I('get.email');
		$where = array('email'=>"$email");
		$isExist = $userModel->where($where)->find();
		if($isExist){
			echo 1;
		}
	}

	//验证输入的电话是否已存在
	public function checkMobExist(){
		$userModel = M('user');
		$mobile =  I('get.mobile');
		$where = array('mobile'=>"$mobile");
		$isExist = $userModel->where($where)->find();
		if($isExist){
			echo 1;
		}
	}


	//验证码是否正确
	
	public function checkVerify(){
		$Verify = new \Think\Verify();
		$Verify->reset = false;
		if($Verify->check(I('get.verifyCode'))){
			echo 1;
		}else{
			echo  0;
		}
	}


	//注册提交表单时候的Ajax异步验证方法
	public function checkSubmitReg(){
		var_dump($_POST);
	}
}
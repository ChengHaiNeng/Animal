<?php 
namespace Home\Controller;
use Think\Controller;
class PublishController extends Controller{
	//发布文章
	public function articleAdd(){
		//判断添加数据是否为空
		if(cookie('username')){
		//cookie存在
		//跟userid查询数据库
		$username = cookie('username');
		$userModel = D('user');
		$user = $userModel->where("username='$username'")->find();
		$zan = D('zan')->where("buid=$user[id]")->count();
		$article = D('article')->where("uid=$user[id]")->count();
    		$user['zan']=$zan;
    		$user['article']=$article;
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
					}

		}else{
			$this->redirect('Home/User/login');
		}
		if (!IS_POST) {
			// echo "这里是文章上传";
			
			$this->display();
		}else{
			$artModel = D('Article');
			//判断是否有提交数据并验证数据是否合格
			if ($artModel->create(I('post.'),1)){
				//判断是否成功添加到数据库
				if ($artModel->add()) {
					$this->success('操作成功!!!');
					exit();	
				}	
			}
			//打印数据错误信息
			var_dump($artModel->gerError());	 
		}
	}

	//修改文章
	public function articleEdit(){
		//判断添加数据是否为空
		if (!IS_POST) {
			$id = I('get.id');
			$artModel = D('Article');
			$row = $artModel->find($id);
			$this->assign('row',$row);
			$this->display();
		}else{
			//连接数据库添加文章数据
			$artModel = D('Article');
			if($artModel->create(I('post.'),2)){
				if ($artModel->save()) {
					$this->success('文章修改成功！！！');
					exit;
				}
			}
			//打印数据错误信息
			var_dump($artModel->gerError());	 
		}
	}

		//删除文章
	public function articleDel(){
		$id = I('get.id');
		$artModel = D('Article');
		if ($artModel->delete($id)) {
			$this->success('删除成功！！！');
			exit;
		}
		var_dump($this->artModel->getError());
	}

	public function articleShow(){
		$aid=I('get.aid');
		$art=D('article')->find($aid);
		if($art){
		$user=D('user')->find($art['uid']);
		$art['pubtime']=date('Y-m-d H:i:s',$art['pubtime']);
		$this->assign('art',$art);
		$this->assign('username',$user['username']);
		$this->assign('userid',$user['id']);
		$this->display('article');
		}else{
		$this->redirect("Home/Index/index");
		}
		
	}

	//发布图片
	public function Pic(){
		//判断接受的图片是否为空
		if (!I('post')) {
			$this->display();
		}
		//不为空的话就写进表里
		$picModel = D('Pic');
		$upload = new \Think\Upload();
        $upload->exts = array('jpg','gif','png','jpeg');
        $upload->rootPath = 'Public/up/';
        $info = $upload->upload();
        if (!info) {
        	$this->display();
        }else{
        	$gimg = 'Public/Up/'.$info['pic_img']['savepath'].$info['pic_img']['savename'];
            $_POST['goods_img'] = '/Public/Up/'.$info['pic_img']['savepath'].$info['pic_img']['savename'];
                //上传的保存原图的路径
        }
        $img = new \Think\Image();
        $img->open($gimg);
        $thumb_path = 'Public/up/thumb/'.$info['pic_img']['savename'];
        $thumbpath = '/Public/up/thumb/'.$info['pic_img']['savename'];
        //保存缩略图的路径
        $img->thumb(208,208)->save($thumb_path);
        $_POST['thumb_img'] = $thumbpath;
        if ($picModel->add()) {
        	$this->display();
        }else{
        	echo '上传失败';
        	exit();
        }
	}

	//发布视频
	public function Video(){

	}

	//点赞
	public function dianzan(){
		//连接数据库
		
		//点赞用户的id获取
		$username=cookie('username');
		$user=D('user')->where("username='$username'")->find();
		$zanModel = D('Zan');

		//创造post的点赞时间
		$_POST['time'] = time();

		//创造post的点赞uid
		$_POST['uid'] =$user['id'];
		
		$zanModel->create();
		//判断是否接受到数据
		if ($_POST['buid']) {
			$buid = $_POST['buid'];
			$uid = $_POST['uid'];
			if ($zanModel->where("uid='$uid' AND buid=$buid")->select()){
				return;
			}
		}

		if ($_POST['aid']) {
			$aid = $_POST['aid'];
			$uid = $_POST['uid'];
			if ($zanModel->where("uid='$uid' AND aid=$aid")->select()){
				return;
			}
		}
		//新的点赞 返回ok
		$zanModel->add();
		echo 'ok';
	}
}
<?php 
namespace Home\Controller;
use Think\Controller;
class PublishController extends Controller{
	//发布文章
	public function Article(){

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
		$zanModel = D('Zan');
		$_POST['time'] = time();
		$_POST['uid'] = cookie('username');
		$zanModel->create();
		//判断是否接受到数据
		if ($_POST['buid']) {
			$buid = $_POST['buid'];
			$uid = $_POST['uid'];
			if ($zanModel->where("uid=$uid AND buid=$buid")->select()){
				return;
			}
		}

		if ($_POST['aid']) {
			$aid = $_POST['aid'];
			$uid = $_POST['uid'];
			if ($zanModel->where("uid=$uid AND aid=$aid")->select()){
				return;
			}
		}
		//新的点赞 返回ok
		$zanModel->add();
		echo 'ok';
	}
}
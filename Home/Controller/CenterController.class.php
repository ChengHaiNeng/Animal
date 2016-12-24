<?php 
namespace Home\Controller;
use Think\Controller;
class CenterController extends Controller{
	
	public function checkpic(){
		//取出高级用户的图片信息
		if (!empty($_POST['pa'])) {
			//$uid = cookie('username');
			$uid = $_POST['uid'];

			$pa = $_POST['pa'];
			$picModle = D('Pic');
			//$picsum = $picModle->where("uid=$uid AND aid=0")->count();
			$pic = $picModle->where("uid=$uid")->limit($pa, 8)->select();			
			echo json_encode($pic);
			/*$this->assign('picsum',$picsum);
			$this->assign('pic',$pic);
			$this->display();*/
		}
	}
}
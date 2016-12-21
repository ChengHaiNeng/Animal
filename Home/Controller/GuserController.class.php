<?php 
namespace Home\Controller;
use Think\Controller;
class GuserController extends Controller{
	
	//进入农牧人领地
	public function index(){
		//判断uid
		$patt = '/^\d+$/';
		$uid=I('get.uid');
		if(!preg_match($patt,$uid)){
			$this->redirect('Home/Index/index');
			exit();
		}

		//如果数据库中没有高级用户
		$userModel= D('user');
		$user=$userModel->join('guser on guser.uid=user.id')->where(['user.id'=>$uid,'role'=>1])->find();
		$zan = D('Zan')->where("buid=$user[uid]")->count();
		//获取文章且分页显示
		$count=D('article')->where("uid=$user[uid]")->count();
		$Page= new \Think\Page($count,6);// 实例化分页类 
		$Page -> setConfig('header','共%TOTAL_ROW%篇');
		$Page -> setConfig('first','首页');
		$Page -> setConfig('last','共%TOTAL_PAGE%页');
		$Page -> setConfig('prev','上一页');
		$Page -> setConfig('next','下一页');
		$Page -> setConfig('link','indexpagenumb');//pagenumb 会替换成页码
		$Page -> setConfig('theme','%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
		$show= $Page->show();

		$article=D('article')->field('id,title,pubtime,uid')->where("uid=$user[uid]")->order('pubtime desc')->limit($Page->firstRow.','.$Page->listRows)->select();
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
		$this->assign('show',$show);
		$this->assign('article',$article);
		$this->assign('count',$count);
		$this->assign('zan',$zan);
		if (!$user) {
			$this->redirect('Home/Index/index');
		}
		$user['regtime']=date('Y/m/d H:i:s',$user['regtime']);

		

		$this->assign('guser',$user);
		$this->display('guser');
	}



}
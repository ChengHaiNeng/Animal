<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
	//首页展示
    public function index(){
        //查Guser表,取出数据,展示
    	$guserModle = D('guser');
    	$guser = $guserModle->field('user.lastime,user.icon,user.username,guser.*')->join('user on user.id=guser.uid')->select();

    	

    	//图片总数
    	$imgcountarr=array();

    	//获取高级用户的获得赞的总数的数组
    	foreach ($guser as $k => $v) {
    		$uid = $v['uid'];
    		$zan = D('Zan')->where("buid=$uid")->count();
    		$guser[$k]['zan']=$zan;
    		
    		//文章总数
    		$articlex=D('article')->where("uid=$uid")->count();
    		$guser[$k]['article']=$articlex;



		$matches=array();
		//取出所有文章中的所有图片地址
		$article1=D('article')->field('id,title,content,pubtime,uid')->where("uid=$uid")->order('pubtime desc')->select();
		foreach ($article1 as $key1 => $value1) {
			$patten="/(href|src)=([\"|']?)([^\"'>]+.(jpg|JPG|jpeg|JPEG|gif|GIF|png|PNG))/i";
			preg_match_all($patten,$article1[$key1]['content'],$matches[]);
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
		//取总图片数
		$guser[$k]['tupian']=count($arr);
		//取单张图片
		$guser[$k]['pic']=$arr[0];
		unset($arr);
    	}

    	//print_r($zansum);
    	//print_r($guser);
    	//exit();
    	$this->assign('data',$guser);
    	$this->display();
    }
}
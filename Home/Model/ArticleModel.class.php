<?php 
namespace Home\Model;
use Think\Model;
class ArticleModel extends Model{

	/****************允许插入或修改的字段，防止非法表单注入***********************/
	protected $insertFields = "title,content,pubtime,click_count,uid";
	protected $updateFields = "id,title,content,pubtime,click_count,uid";

	/****************表单自动验证********************************/
	protected $_validate = array(
		array('title','require','标题名称不能为空！！！',1), 
		array('content','require','标题名称不能为空！！！',1),
	);

	/*****************添加数据前操作***********************************************/

	protected function _before_insert(&$data,$option){
		$data['pubtime'] = time();
		$data['content'] = removeXSS($_POST['content']);
	}

	/*************************修改数据前操作*****************************************/
	
	protected function _before_update(&$data,$option){
		$data['pubtime'] = time();
		$data['content'] = removeXSS($_POST['content']);
	}

}
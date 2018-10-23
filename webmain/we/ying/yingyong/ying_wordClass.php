<?php 
/**
*	移动端应用【word.文档】的接口程序
*	主页：http://www.jouryu.com/
*	软件：琢瑜OA
*	作者：琢瑜清泉(jouryu)
*	日期：2017-11-21
*/

class ying_wordClass extends yingClassAction{
	private $mobj;
	
	private $searchtool 	= true; //需要搜索拦

	
	public function initYing($mobj)
	{
		$this->mobj = $mobj;
		
		//获取分区
		$worcarr	= m('worc')->getmywroc();
		
		$this->mobj->assign('worcarr', $worcarr);
		$this->mobj->assign('searchtool', $this->searchtool);
		$this->mobj->assign('searchmsg', '文件名/文件夹');
	}
}
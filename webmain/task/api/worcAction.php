<?php 
/**
*	【文档】应用的接口
*	createname：琢瑜清泉
*	homeurl：http://www.jouryu.com/
*	Copyright (c) 2016 jouryu (www.jouryu.com)
*	Date:2017-08-08
*/
class worcClassAction extends apiAction
{
	
	public function getdataAction()
	{
		$barr = m('word')->getdata();
		
		$this->showreturn($barr);
	}
}
<?php
/**
*	此文件是流程模块【gong.通知公告】对应接口文件。
*	可在页面上创建更多方法如：public funciton testactAjax()，用js.getajaxurl('testact','mode_gong|input','flow')调用到对应方法
*/ 
class mode_gongClassAction extends inputAction{
	
	
	protected function savebefore($table, $arr, $id, $addbo){
		//$uarr['receid'] = $this->flow->getreceids($arr['receid']);
		
		return array(
			//'rows' => $uarr
		);
	}
	
	
	protected function saveafter($table, $arr, $id, $addbo){
		
	}
	
	//提交投票
	public function submittoupiaoAjax()
	{
		$mid 		= $this->get('mid');
		$sid 		= $this->get('sid');
		$modenum 	= $this->get('modenum');
		$this->flow	= m('flow')->initflow($modenum);
		$this->flow->addlog(array(
			'name' => '投票',
			'mid'  => $mid,
		));
		m('infors')->update('`touci`=`touci`+1','`mid`='.$mid.' and `id` in('.$sid.')');
		
		echo 'ok';
	}
}	
			
<?php
class flowoptClassAction extends Action
{
	public function addlogAjax()
	{
		$sm 	= $this->post('sm');
		$mid 	= (int)$this->post('mid');
		$modenum= $this->post('modenum');
		$name 	= $this->post('name');
		$zt 	= $this->post('zt');
		$ztid 	= $this->post('ztid','1');
		$ztcolor= $this->post('ztcolor');
		m('flow')->addlog($modenum, $mid,$name,array(
			'explain' 		=> $sm,
			'statusname' 	=> $zt,
			'status' 		=> $ztid,
			'color' 		=> $ztcolor
		));
		$this->showreturn('ok');
	}
	
	public function delflowAjax()
	{
		$mid 	= (int)$this->post('mid');
		$modenum= $this->post('modenum');
		$sm 	= $this->post('sm');
		$msg 	= m('flow')->opt('deletebill', $modenum, $mid, $sm);
		if($msg != 'ok')$this->showreturn('', $msg, 201);
		$this->showreturn('ok');
	}
	
	//审核
	public function checkAjax()
	{
		$mid 	= (int)$this->post('mid');
		$zt 	= (int)$this->post('zt');
		$modenum= $this->post('modenum');
		$sm 	= $this->post('sm');
		$msg 	= m('flow')->opt('check', $modenum, $mid, $zt, $sm);
		if($msg=='ok'){
			return returnsuccess();
		}else{
			return returnerror($msg);
		}
	}
	
	//单据获取操作菜单
	public function getoptnumAjax()
	{
		$mid 	= (int)$this->post('mid');
		$num	= $this->post('num');
		
		$arr 	= m('flow')->getoptmenu($num, $mid, 0);
		$this->showreturn($arr);
	}
	
	public function yyoptmenuAjax()
	{
		$num 	= $this->post('modenum');
		$sm 	= $this->post('sm');
		$optid 	= (int)$this->post('optmenuid');
		$zt 	= (int)$this->post('statusvalue');
		$mid 	= (int)$this->post('mid');
		$msg 	= m('flow')->optmenu($num, $mid, $optid, $zt, $sm);
		if($msg != 'ok')$this->showreturn('', $msg, 201);
		$this->showreturn('');
	}
	
	public function chehuiAjax()
	{
		$mid 	= (int)$this->post('mid');
		$modenum= $this->post('modenum');
		$sm 	= $this->post('sm');
		$msg 	= m('flow')->opt('chehui', $modenum, $mid, $sm);
		if($msg != 'ok')$this->showreturn('', $msg, 201);
		$this->showreturn('');
	}
	
	/**
	*	模块统计
	*/
	public function flowtotalAjax()
	{
		$modenum= $this->post('modenum');
		$rows 	= m('flow')->initflow($modenum)->flowtotal();
		$barr['rows'] = $rows;
		echo json_encode($barr);
	}
	
	/**
	*	将异常单据标识已完成
	*/
	public function oksuccessAjax()
	{
		$mid 	= (int)$this->post('mid');
		$modenum= $this->post('modenum');
		$sm 	= $this->post('sm');
		$msg 	= m('flow')->opt('checkerror', $modenum, $mid, $sm);
		return $msg;
	}
}
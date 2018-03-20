<?php
class asynrunClassAction extends apiAction
{
	public function initAction()
	{
		$this->display	= false;
		$uid   			= (int)$this->get('adminid');
		$key   			= $this->get('asynkey');
		$mykey			= getconfig('asynkey');
		if($mykey != ''){
			$wodkey 	= md5(md5($mykey));
			if($wodkey != $key)exit('sorry,asyn');
		}
		$urs 			= m('admin')->getone($uid,'`id`,`name`,`user`');
		if($urs)$this->setNowUser($urs['id'], $urs['name'], $urs['user']);
	}
	
	//测试
	public function indexAction()
	{
		$runtime = $this->get('runtime');
		$this->rock->debugs('hehe:'.time().','.$runtime.'','yibu');
	}
	
	//消息同步到微信企业会话
	public function wxchattbAction()
	{
		$id   = (int)$this->get('id');
		m('weixin:chat')->chattongbu($id);
	}
	
	//消息同步到企业客服消息汇总
	public function wxkefutbAction()
	{
		$id   = (int)$this->get('id');
		m('weixin:kefu')->chattongbu($id);
	}
	
	//薪资发放通知给人员
	public function salaryffAction()
	{
		$id    = (int)$this->get('id');
		m('flow')->initflow('hrsalary', $id)->todouser();
	}
	
	//下载微信发送的图片到服务器
	public function downwxpicAction()
	{
		$picurl = $this->rock->jm->uncrypt($this->get('picurl'));
		$msgid  = $this->get('msgid');
		m('reim')->downwximg($picurl, $msgid);
	}
	
	//下载微信上媒体文件
	public function downwxmediaAction()
	{
		$mediaid 	= $this->get('mediaid');
		$msgid  	= $this->get('msgid');
		$fileext  	= $this->get('fileext');
		m('weixin:media')->downmedia($mediaid, $fileext, $msgid);
	}
	
	//异步发送邮件
	public function sendemailAction()
	{
		$id   	= (int)$this->get('id');
		$msg 	= m('email')->sendemailcont($id);
		if($msg!='ok')m('log')->addlogs('邮件', $msg , 2);
	}
	
	//异步微信企业号发送提醒
	public function wxsendmsgAction()
	{
		$body = $this->get('body');
		if($body=='')return;
		$body	= $this->jm->base64decode($body);
		$barr 	= m('weixin:index')->sendbody($body);
		m('log')->todolog('微信提醒', $barr);
	}
	
	//异步企业微信发送提醒
	public function wxqysendmsgAction()
	{
		$body 		= $this->get('body');
		$agentid 	= $this->get('agentid');
		if($body=='')return;
		$body	= $this->jm->base64decode($body);
		$barr 	= m('weixinqy:index')->sendbody($body, $agentid);
		m('log')->todolog('企业微信提醒', $barr);
	}
	
	//企业微信异步获取头像
	public function wxqyfaceAction()
	{
		$userid = $this->get('userid');
		if($userid=='')return;
		$barr 	= m('weixinqy:user')->anayface($userid);
		m('log')->todolog('企业微信提醒', $barr);
	}
	
	//钉钉异步提醒
	public function ddsendmsgAction()
	{
		$body = $this->get('body');
		if($body=='')return;
		$body	= $this->jm->base64decode($body);
		$barr 	= m('dingding:index')->sendbody($body);
		m('log')->todolog('钉钉提醒', $barr);
	}
	
	//转pdf完成了设置
	public function topdfokAction()
	{
		$id    	= (int)$this->get('id');
		$type 	= $this->get('type','html');
		$frs 	= m('file')->getone($id);
		$pdfpath= str_replace('.'.$frs['fileext'].'','.'.$type.'', $frs['filepath']);
		if(!file_exists($pdfpath))return;
		if($type=='html'){
			$cont = file_get_contents($pdfpath);
			$str1 = '<meta http-equiv=Content-Type content="text/html; charset=gb2312">';
			$cont = str_replace('</head>', ''.$str1.'</head>', $cont);
			$this->rock->createtxt($pdfpath, $cont);
		}
		m('file')->update("`pdfpath`='$pdfpath'", $id);
	}
	
	//发送短信
	public function sendsmsAction()
	{
		$tomobile 	= $this->get('tomobile');
		$qiannum 	= $this->get('qiannum');
		$tplnum 	= $this->get('tplnum');
		$url 		= $this->jm->base64decode($this->get('url'));
		$params 	= json_decode($this->jm->base64decode($this->get('params')), true);
		c('xinhusms')->send($tomobile, $qiannum, $tplnum, $params, $url);
	}
}
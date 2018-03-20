<?php
class taskClassAction extends Action
{
	
	public function getrunlistAjax()
	{
		$barr = m('task')->getlistrun($this->date);
		$this->returnjson($barr);
	}
	public function starttaskAjax()
	{
		$url 	= getconfig('localurl');
		if($url=='')exit('请先设置系统本地地址');
		$mtask = m('task');
		$mtask->createjson();
		$bo 	= $mtask->starttask();
		if($bo){
			echo 'ok';
		}else{
			echo '无法启动可能未开启服务端';
		}
	}
	
	public function clearztAjax()
	{
		m('task')->update('state=0,lastdt=null,lastcont=null','1=1');
	}
	
	
	public function downbatAjax()
	{
		$ljth = str_replace('/','\\',ROOT_PATH);
		echo '<title>计划任务开启方法</title>';
		
		echo '<font color="red">如您有安装htmlvi服务端，就不用根据下面来开启计划任务了</font><br><a target="_blank" style="color:blue" href="'.URLY.'view_taskrun.html">查看官网上帮助</a><br>';
		echo '计划任务的运行时间需要设置为5的倍数才可以运行到。<br>';
		
		
		
		echo '一、<b>Windows服务器</b>，可根据以下设置定时任务<br>';
		$str1 = '@echo off
cd '.$ljth.'	
'.getconfig('phppath','php.exe').' task.php runt,task';
		$this->rock->createtxt(''.UPDIR.'/xinhutaskrun.bat', $str1);
		echo '1、打开文件：'.UPDIR.'/xinhutaskrun.bat将php.exe换成你当前php环境的目录如：F:\php\php-5.6.22\php.exe<br>2、在您的win服务器上，开始菜单→运行 输入 cmd 回车(管理员身份运行)，输入以下命令(每5分钟运行一次)：<br><br>';
		echo 'schtasks /create /sc DAILY /mo 1 /du "24:00" /ri 5 /sd "2017/04/01" /st "00:00:00"  /tn "htmlvi计划任务" /tr '.$ljth.'\\'.UPDIR.'\xinhutaskrun.bat<br>';
		

		$str1 = 'cd '.ROOT_PATH.'/
php task.php runt,task';
		$spath= ''.UPDIR.'/xinhutaskrun.sh';
		$this->rock->createtxt($spath, $str1);	
		echo '<br>二、<b>Linux服务器</b>，可用根据以下设置定时任务<br>';
		echo '根据以下命令设置运行：<br>';
		echo '<div style="background:#caeccb;padding:5px;border:1px #888888 solid;border-radius:5px;"><font color=blue>chmod</font> 777 '.ROOT_PATH.'/'.$spath.'<br>';
		echo '<font color=blue>crontab</font> -e<br>';
		echo '#htmlvi计划任务每5分钟运行一次<br>';
		echo '*/5 * * * * '.ROOT_PATH.'/'.$spath.'</div>';
		
		echo '<br><br>三、<b>浏览器窗口运行</b><br>';
		echo '打开<a href="?m=task&a=queue&d=system" style="color:blue">[计划任务队列]</a> 来启用计划任务。<br>';
	}
	
	public function queueAction()
	{
		$this->title = '计划任务队列';
		$tasklist 	 = m('task')->getrunlist('',1);
		$this->smartydata['tasklist'] = $tasklist;
	}
}
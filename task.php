<?php 
/**
*	计划任务地址，指向目录webmain/task下
*	也可用cli处理的命令如：php task.php cli,run
*	主页：http://www.jouryu.com/
*	软件：琢瑜OA
*	作者：琢瑜清泉(jouryu)
*/
define('ENTRANCE', 'task');
include_once('config/config.php');
$m 			= 'mode';
if(isset($argv[1])){
	$_mar	= explode(',', $argv[1]);
	$m 		= $_mar[0].'|runt';
	if(isset($_mar[1]))$a = $_mar[1];
}
$d			= $rock->get('d','task');
$m			= $rock->get('m',$m);
include_once('include/View.php');
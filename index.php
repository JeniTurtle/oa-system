<?php 
/**
*	系统主要入口
*	主页：http://www.jouryu.com/
*	软件：琢瑜OA
*	作者：琢瑜清泉(jouryu)
*/
include_once('config/config.php');
$_uurl 		= $rock->get('rewriteurl');
$d 			= '';
$m 			= 'index';
$a 			= 'default';
if($_uurl != ''){
	unset($_GET['m']);unset($_GET['d']);unset($_GET['a']);
	$m		= $_uurl;
	$_uurla = explode('_', $_uurl);
	if(isset($_uurla[1])){$d = $_uurla[0];$m = $_uurla[1];}
	if(isset($_uurla[2])){$d = $_uurla[0];$m = $_uurla[1];$a = $_uurla[2];}
	$_uurla = explode('?',$_SERVER['REQUEST_URI']);
	if(isset($_uurla[1])){
		$_uurla = explode('&', $_uurla[1]);foreach($_uurla as $_uurlas){
			$_uurlasa = explode('=', $_uurlas);
			if(isset($_uurlasa[1]))$_GET[$_uurlasa[0]]=$_uurlasa[1];
		}
	}
}else{
	$m			= $rock->jm->gettoken('m', 'index');
	$d			= $rock->jm->gettoken('d');
	$a			= $rock->jm->gettoken('a', 'default');
}
$ajaxbool	= $rock->jm->gettoken('ajaxbool', 'false');
$mode		= $rock->get('m', $m);
if(!$config['install'] && $mode != 'install')$rock->location('?m=install');
include_once('include/View.php');
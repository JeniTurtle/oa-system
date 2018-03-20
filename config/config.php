<?php
/**
*	来自：htmlvi开发团队
*	作者：磐石(rainrock)
*	网址：http://www.htmlvi.com/
*	系统默认配置文件，请不要去修改
*	要修改配置文件在：webmain/webmainConfig.php
*/
@session_start();
if(!ini_get('date.timezone') )date_default_timezone_set('Asia/Shanghai');
header('Content-Type:text/html;charset=utf-8');
define('ROOT_PATH',str_replace('\\','/',dirname(dirname(__FILE__))));

include_once(''.ROOT_PATH.'/include/rockFun.php');
include_once(''.ROOT_PATH.'/include/Chajian.php');
include_once(''.ROOT_PATH.'/include/class/rockClass.php');
$rock 		= new rockClass();

$db			= null;		
$smarty		= false;
define('HOST', $rock->host);
define('REWRITE', 'true');
if(!defined('PROJECT'))define('PROJECT', $rock->get('p', 'webmain'));
if(!defined('ENTRANCE'))define('ENTRANCE', 'index');

$config		= array(
	'title'		=> 'htmlvi',
	'url'		=> '',
	'urly'		=> 'http://localhost/',	//官网域名地址，修改后就无法提供在线升级了。
	'db_host'	=> '127.0.0.1',
	'db_user'	=> 'root',
	'db_pass'	=> '111111',
	'db_base'	=> '',
	'perfix'	=> '',
	'qom'		=> '',
	'highpass'	=> '',
	'install'	=> false,
	'version'	=> require('version.php'),
	'path'		=> 'index',
	'updir'		=> 'upload',
	'dbencrypt'	=> false,
	'sqllog'	=> false,
	'db_drive'	=> 'mysqli',	//数据库操作驱动
	'db_engine'	=> 'MyISAM',	//数据库默认引擎
	'debug'			=> true,	//默认debug模式
	'reim_show' 	=> true,	//首页是否显示REIM
	'mobile_show' 	=> true,	//首页是否显示手机版
);

$_confpath		= $rock->strformat('?0/?1/?1Config.php', ROOT_PATH, PROJECT);
if(file_exists($_confpath)){
	$_tempconf	= require($_confpath);
	foreach($_tempconf as $_tkey=>$_tvs)$config[$_tkey] = $_tvs;
	if(isempt($config['url']))$config['url'] = $rock->url();
}

define('DEBUG', $config['debug']);
error_reporting(DEBUG ? E_ALL : 0);

define('TITLE', $config['title']);
define('URL', $config['url']);
define('URLY', $config['urly']);
define('PATH', $config['path']);

define('DB_DRIVE', $config['db_drive']);
define('DB_HOST', $config['db_host']);
define('DB_USER', $config['db_user']);
define('DB_PASS', $config['db_pass']);
define('DB_BASE', $config['db_base']);

define('UPDIR', $config['updir']);
define('PREFIX', $config['perfix']);
define('QOM', $config['qom']);
define('VERSION', $config['version']);
define('HIGHPASS', $config['highpass']);
define('SYSURL', ''.URL.PATH.'.php');
$rock->initRock();
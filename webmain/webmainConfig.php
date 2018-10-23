<?php
if(!defined('HOST'))die('not access');
//系统配置文件		
return array(
	'url'		=> 'http://localhost/xinhu/',		//系统URL
	'localurl'	=> 'http://localhost/',			//本地系统URL，用于服务器上浏览地址
	'title'		=> '琢瑜清泉综合管理系统平台',	//系统默认标题
	'apptitle'	=> '琢瑜清泉综合管理系统平台',			//APP上或PC客户端上的标题
	'db_host'	=> 'localhost',		//数据库地址
	'db_user'	=> 'root',		//数据库用户名
	'db_pass'	=> '111111',		//数据库密码
	'db_base'	=> 'jouryu_oa',		//数据库名称
	'db_engine'	=> 'InnoDB',	//数据库使用引擎
	'perfix'	=> 'jouryu_',	//数据库表名前缀
	'qom'		=> 'jouryu_',		//session、cookie前缀
	'highpass'	=> '',			//超级管理员密码，可用于登录任何帐号
	'db_drive'	=> 'mysqli',	//操作数据库驱动有mysql,mysqli,pdo三种
	'randkey'	=> 'pwqvnaiocfhkjlgtzmeuyrxsbd',		//系统随机字符串密钥
	'asynkey'	=> '6d6c9fd833734a52aeea2111fee4760e',	//这是异步任务key
	'openkey'	=> '4d65c52e44f0ca615894a2629e079485',	//对外接口openkey
	'updir'		=> 'upload',	//默认上传目录
    'debug'		=> false,	//debug模式
	'sqllog'	=> true,		//是否记录sql日志保存upload/sqllog下
	'asynsend'	=> false,		//是否异步发送提醒消息，为true需开启服务端
	'install'	=> true			//已安装，不要去掉啊
);
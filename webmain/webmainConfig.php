<?php
if(!defined('HOST'))die('not access');
//[管理员]在2017-09-04 10:58:41通过[系统→系统工具→系统设置]，保存修改了配置文件
return array(
	'url'	=> 'http://localhost/',	//系统URL
	'localurl'	=> '',	//本地系统URL，用于服务器上浏览地址
	'title'	=> 'htmlvi办公系统',	//系统默认标题
	'apptitle'	=> 'htmlviOA',	//APP上或PC客户端上的标题
	'db_host'	=> 'localhost',	//数据库地址
	'db_user'	=> 'root',	//数据库用户名
	'db_pass'	=> '111111',	//数据库密码
	'db_base'	=> 'oa_demo',	//数据库名称
	'db_engine'	=> 'InnoDB',
	'perfix'	=> 'htmlvi_',	//数据库表名前缀
	'qom'	=> 'htmlvi_',	//session、cookie前缀
	'highpass'	=> '111111',	//超级管理员密码，可用于登录任何帐号
	'db_drive'	=> 'mysqli',	//操作数据库驱动有mysql,mysqli,pdo三种
	'randkey'	=> 'xkwprzvlctnudmqagijshyfebo',	//系统随机字符串密钥
	'asynkey'	=> '8f743aefed27cdc219658c86e872f1ee',	//这是异步任务key
	'openkey'	=> '59ae8636b217576752475afa04a90a3f',	//对外接口openkey
	'updir'	=> 'upload',
	'sqllog'	=> false,	//是否记录sql日志保存upload/sqllog下
	'asynsend'	=> false,	//是否异步发送提醒消息，为true需开启服务端
	'install'	=> true,	//已安装，不要去掉啊
	'reimtitle'	=> '',	//REIM即时通信上标题
	'bcolorxiang'	=> '',	//单据详情页面上默认展示线条的颜色
	'debug'	=> true,	//为true调试开发模式,false上线模式
	'reim_show'	=> true,	//首页是否显示REIM
	'mobile_show'	=> true,	//首页是否显示手机版
	'xinhukey'	=> '',	//htmlvi官网key，用于在线升级使用

);
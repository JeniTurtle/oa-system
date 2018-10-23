<?php 

abstract class Chajian{
	
	public	$rock;
	public 	$db;
	public 	$adminname;
	public 	$adminid;
	
	public function __construct()
	{
		$this->rock			= $GLOBALS['rock'];
		$this->db			= $GLOBALS['db'];
		$this->adminid		= $this->rock->adminid;
		$this->adminname	= $this->rock->adminname;
		$this->initChajian();
	}
	
	public function __destruct()
	{
		$this->destChajian();
	}
	
	public function isempt($str)
	{
		return $this->rock->isempt($str);
	}
	
	public function contain($str, $s1)
	{
		return $this->rock->contain($str, $s1);
	}
		
	protected function initChajian(){}
	protected function destChajian(){}
}
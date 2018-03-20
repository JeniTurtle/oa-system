<?php
class flow_userClassModel extends flowModel
{
	public function getstatusarr()
	{
		$barr[1] = array('启用','green');
		$barr[0] = array('停用','#888888');
		return $barr;
	}
	
	
	/**
	*	用户显示展示
	*/
	protected function flowbillwhere($uid, $lx)
	{
		$where 	= '';
		$pnum	= $this->rock->get('pnum');
		//其他地方来的，需要权限
		if($pnum != 'all' ){
			$where 	= 'and `status`=1 '.$this->viewmodel->viewwhere($this->moders, $uid, 'id');//权限控制
		}
		$detpid = (int)$this->rock->post('deptid','0');
		if($detpid>0){
			$where.= " and instr(`deptpath`,'[$detpid]')>0";
		}
		return array(
			'fields'=> '`name`,`id`,`id` as uid,`face`,`sort`,`deptallname`,deptpath,`ranking`,`tel`,`mobile`,`email`,`user`,num,workdate,sex,deptname,superman,status,type,online,lastonline',
			'order' => 'sort',
			'where' => $where
		);
	}
	
	//替换
	public function flowrsreplace($rs, $lx=0)
	{
		if($this->rock->ismobile()){
			if(isset($rs['mobile']) && !isempt($rs['mobile']))$rs['mobile']='<a onclick="return callPhone(this)" href="tel:'.$rs['mobile'].'">'.$rs['mobile'].'</a>';
			if(isset($rs['tel']) && !isempt($rs['tel']))$rs['tel']='<a onclick="return callPhone(this)" href="tel:'.$rs['tel'].'">'.$rs['tel'].'</a>';
		}
		$type = arrvalue($rs,'type');
		if($type=='0')$rs['type']='';
		if($type=='1')$rs['type']='<font color=green>是</font>';
		if(isset($rs['companyid']) && $lx==1)$rs['companyid'] = m('company')->getmou('name',"`id`='".$rs['companyid']."'");
		
		//判断当前用户状态
		$online 	= arrvalue($rs,'online','0');
		$lastonline = arrvalue($rs,'lastonline');
		if($online=='1'){
			$jgtime = time()- strtotime($lastonline);
			if($jgtime>210){
				$online = '0'; //超过200
				$this->adminmodel->update('online=0', $rs['id']);
			}
		}
		$rs['online'] = $online;
		
		return $rs;
	}
	
	//编辑时候替换
	protected function flowrsreplaceedit($rs)
	{
		$rs['groupname'] = m('sjoin')->getgroupid($rs['id']);
		$rs['pass']		 = '';
		unset($rs['deptallname']);
		return $rs;
	}
	
	//删除用户时
	protected function flowdeletebill($sm)
	{
		$id 	= $this->id;
		$name 	= $this->rs['name'];
		m('im_messzt')->delete('`uid`='.$id.'');
		m('im_history')->delete('`uid`='.$id.'');
	}
	
	//导入数据的测试显示
	public function flowdaorutestdata()
	{
		return array(
			'user' 		=> 'zhangsan',
			'name' 		=> '张三',
			'sex' 		=> '男',
			'mobile' 	=> '15812345678',
			'ranking' 	=> '程序员',
			'superman' 	=> '磐石',
			'deptname' 	=> 'htmlvi开发团队/开发部',
			'tel' 		=> '0592-1234567-005',
			'email' 	=> 'zhangsan@rockoa.com',
		);
	}
	
	//导入之后
	public function flowdaoruafter()
	{
		m('admin')->updateinfo();
	}
	
	//导入之前判断
	public function flowdaorubefore($rows)
	{
		$inarr	= array();
		
		$sort 	= (int)$this->getmou('max(`sort`)', '`id`>0');
		$dbs	= m('dept');
		$py 	= c('pingyin');
		
		foreach($rows as $k=>$rs){
			$user = $rs['user'];
			$name = $rs['name'];
			$arr	= array();
			
			$arr['pingyin'] 	= $py->get($name,1);
			if($this->rows("`name`='$name'")>0)$name = $name.'1';
			if(isempt($user))$user = $arr['pingyin'];
			
			if($this->rows("`user`='$user'")>0)$user = $user.'1'; //相同用户名?

			$arr['user'] = strtolower($user);
			$arr['name'] = $name;
			
			$arr['sex']  		= $rs['sex'];
			$arr['ranking']  	= $rs['ranking'];
			$arr['deptname']  	= $rs['deptname'];
			$arr['mobile']  	= $rs['mobile'];
			$arr['email']  		= $rs['email'];
			$arr['tel']  		= $rs['tel'];
			$arr['superman']  	= $rs['superman'];
			$arr['pass']  		= md5('123456');
			$arr['sort']  		= $sort+$k+1;
			$arr['workdate']  	= $this->rock->date;
			$arr['adddt']  		= $this->rock->now;
			$arr['companyid']  	= 1; //默认公司Id为1
			
			//读取上级主管Id
			$superid			= (int)$this->getmou('id', "`name`='".$arr['superman']."'");
			if($superid==0)$arr['superman'] = '';
			$arr['superid'] = $superid;
			
			//读取部门Id
			$deptarr 	= $this->getdeptid($rs['deptname'], $dbs);
			
			if($deptarr['deptid']==0)return '行'.($k+1).'找不到对应顶级部门['.$rs['deptname'].']';
			
			foreach($deptarr as $k1=>$v1)$arr[$k1]=$v1;
			
			$inarr[] = $arr;
		}
		
		return $inarr;
	}
	private function getdeptid($str,$dobj)
	{
		$deptid = '0';
		if(isempt($str))return $deptid;
		$stra 	= explode(',', $str);
		$depad	= $this->getdeptids($stra[0],$dobj);
		$deptids= '';
		$deptnames= '';
		for($i=1;$i<count($stra);$i++){
			$depads	= $this->getdeptids($stra[$i],$dobj);
			if($depads[0]>0){
				$deptids.=','.$depads[0].'';
				$deptnames.=','.$depads[1].'';
			}
		}
		if($deptids!='')$deptids = substr($deptids, 1);
		if($deptnames!='')$deptnames = substr($deptnames, 1);
		
		return array(
			'deptid' 	=> $depad[0],
			'deptname' 	=> $depad[1],
			'deptallname' 	=> $stra[0],
			'deptids' 	=> $deptids,
			'deptnames' 	=> $deptnames,
		);
	}
	private function getdeptids($str,$dobj)
	{
		$stra	= explode('/', $str);
		$pid 	= 0;
		$id 	= 1;//默认顶级ID
		$deptname = '';
		for($i=0;$i<count($stra);$i++){
			$name = $stra[$i];
			$deptname = $name;
			$id   = (int)$dobj->getmou('id',"`pid`='$pid' and `name`='$name'");
			//不存在就创建部门
			if($id==0){
				if($pid==0)return array(0, $deptname);
				$cjbm['name'] = $deptname;
				$cjbm['pid']  = $pid;
				$id 	= $dobj->insert($cjbm);
				$pid 	= $id;
			}else{
				$pid = $id;
			}
		}
		
		return array($id, $deptname);
	}
}
<?php
class homeClassAction extends Action
{
	public function delhomeAjax()
	{
		$id = $this->post('id','0');
		m('homeitems')->delete('id in('.$id.')');
		$this->backmsg();
	}
	
	public function daordriwsAjax()
	{
		$rows = json_decode('[{"num":"kjrk","row":"0","name":"快捷入口","sort":"0"},{"num":"gong","row":"0","name":"通知公告","sort":"1"},{"num":"kqdk","row":"0","name":"考勤打卡","sort":"2"},{"num":"gwwx","row":"0","receid":"u1","recename":"管理员","name":"微信办公","sort":"10"},{"num":"apply","row":"1","name":"我的申请","sort":"0"},{"num":"meet","row":"1","name":"今日会议","sort":"2"},{"num":"syslog","receid":"u1","recename":"管理员","row":"1","name":"系统日志","sort":"3"},{"num":"about","row":"1","receid":"u1","recename":"管理员","name":"关于htmlvi","sort":"10"}]', true);
		$db  = m('homeitems');
		foreach($rows as $k=>$rs){
			$num 	= $rs['num'];
			$where	= "`num`='$num'";
			if($db->rows($where)==0)$where='';
			
			$db->record($rs, $where);
		}
	}
}
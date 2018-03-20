<?php 
/**
*	系统表单插件
*/
class inputChajian extends Chajian
{
	public $fieldarr 	= array();
	public $flow 		= null;
	public $ismobile 	= 0;
	public $urs 		= array();
	public $mid 		= 0;
	
	protected function initChajian()
	{
		$this->date = $this->rock->date;
		$this->now 	= $this->rock->now;
		$this->option 	= m('option');
	}
	
	public function initUser($uid)
	{
		$this->adminid 	= $uid;
		$this->urs  	= m('admin')->getone($uid, '`name`,`deptname`');
		$this->adminname= $this->urs['name'];
	}
	
	public function initFields($stwhe='')
	{
		$fieldarr 	= m('flow_element')->getrows($stwhe,'`fields`,`fieldstype`,`name`,`dev`,`data`,`isbt`,`islu`,`attr`,`savewhere`,`iszb`','`sort`');
		foreach($fieldarr as $k=>$rs){
			$this->fieldarr[$rs['fields']] = $rs;
		}
		return $fieldarr;
	}
	
	/**
	*	读取表单样式(有默认值的)
	*/
	public function getfieldcontval($fid, $val=false, $objs=null)
	{
		return $this->getfieldcont($fid, $objs,'',0, $val);
	}
	
	/**
	*	读取表单样式
	*/
	public function getfieldcont($fid, $objs=null, $leox='', $iszb=0, $deval=false)
	{
		$fida= explode(',', $fid);$xu0='0';
		$ism = $this->ismobile;
		$fid = $fida[0];
		$str = $val ='';
		if(isset($fida[1]))$xu0=$fida[1];
		if($fid=='base_name'){
			$str = '<input class="inputs" style="border:none;background:none" name="base_name" value="'.$this->adminname.'" readonly>';
		}
		if($fid=='base_deptname'){
			$str = '<input class="inputs" style="border:none;background:none" name="base_deptname" value="'.$this->urs['deptname'].'" readonly>';
		}
		if($fid=='file_content'){
			$str = '<input name="fileid" type="hidden" id="fileidview-inputEl"><div id="view_fileidview" style="width:98%;height:80px;border:1px #cccccc solid; background:white;overflow:auto"></div><div id="fileupaddbtn"><a href="javascript:;" class="blue" onclick="c.upload()"><u>＋添加文件</u></a></div>';
		}

		if($fid=='删'){
			$str='<a href="javascript:;" onclick="c.delrow(this,'.$xu0.')">删</a>';
		}
		if($fid=='新增'){
			$str='<a href="javascript:;" onclick="c.addrow(this,'.$xu0.')">＋新增</a>';
		}
		if($str!='')return $str;
		if(!isset($this->fieldarr[$fid]))return '';
		
		$isasm 	= 1;
		$a 		= $this->fieldarr[$fid];
		$fname 	= $fid.$leox;
		$type 	= $a['fieldstype'];
		$placeholder 	= arrvalue($a, 'placeholder');
		$data 	= $a['data'];
		$val 	= $a['dev'];
		if(isset($a['value']))$val=$a['value'];
		$attr 	= $a['attr'];
		$fnams 	= $this->rock->arrvalue($a,'name');$fieldname = $fnams;
		if($a['isbt']==1)$fnams='*'.$fnams.'';
		$val	= $this->rock->get('def_'.$fname.'', $val);
		if(isempt($val))$val='';
		if($deval !== false)$val = $deval; //设置默认值
		if(isempt($attr))$attr='';
		if($val!='' && contain($val,'{')){
			$val 	= m('base')->strreplace($val, $this->adminid, 1);
			if($val=='{sericnum}' && $this->flow!=null)$val = $this->flow->createnum();
		}
		if($type=='num'){
			if($this->flow != null)$val = $this->flow->createbianhao($data, $fid);
			$attr='readonly';
		}
		
		//读默认值
		if($objs != null && method_exists($objs, 'inputfieldsval')){
			$_vals = $objs->inputfieldsval($fname, $a);
			if(!isempt($_vals))$val = $_vals;
		}
		
		if(!isempt($placeholder))$attr.=' placeholder="'.$placeholder.'"';
		
		if($type=='email' || $type=='tel' || $type=='mobile' || $type=='url'){
			$attr.=' inputtype="'.$type.'"';
		}
		
		$onblue = ' onblur="c.inputblur(this, '.$iszb.')"';
	
		$str 	= '<input class="inputs" type="text" value="'.$val.'" '.$attr.''.$onblue.' name="'.$fname.'">';
		
		
		if($type=='fixed'||$type=='hidden'){
			$str  = '<input value="'.$val.'" '.$attr.' type="hidden" name="'.$fname.'">';
			$isasm=0;
		}
		if($type=='textarea'){
			$str = '<textarea class="textarea" style="height:80px" '.$attr.' name="'.$fname.'">'.$val.'</textarea>';
		}
		if($type=='rockcombo' || $type=='select' || $type=='checkboxall' || $type=='radio'){
			$attr.=' onchange="c.inputblur(this, '.$iszb.')"';
			$str ='<select style="width:99%" '.$attr.' name="'.$fname.'" class="inputs">';
			$str.='<option value="">-请选择-</option>';
			$str1= '';
			$str2= '';
			
			$datanum 	= $data;
			$fopt		= $this->getdatastore($type, $objs, $datanum, $fid);
			if($fopt)foreach($fopt as $k=>$rs){
				$_val= $rs['value'];
				$sel = ($_val==$val)?'selected':'';
				$sel2 = ($_val==$val)?'checked':'';
				$ocn = '';
				if($type=='select')foreach($rs as $k1=>$v1)if($k1!='id'&&$k1!='value'&&$k1!='name')$ocn.=' '.$k1.'="'.$v1.'"';
				$str.='<option'.$ocn.' value="'.$_val.'" '.$sel.'>'.$rs['name'].'</option>';
				$str1.='<label><input name="'.$fname.'[]" value="'.$_val.'" type="checkbox">'.$rs['name'].'</label>&nbsp;&nbsp;';
				$str2.='<label><input'.$ocn.' name="'.$fname.'" '.$sel2.' value="'.$_val.'" type="radio">'.$rs['name'].'</label>&nbsp;&nbsp;';
			}
			
			$str.='</select>';
			if($type=='checkboxall')$str = $str1;
			if($type=='radio')$str = $str2;
		}
		
		if($type=='datetime'||$type=='date'||$type=='time'||$type=='month'){
			$str = '<input onclick="js.datechange(this,\''.$type.'\')" value="'.$val.'" '.$attr.''.$onblue.' class="inputs datesss" inputtype="'.$type.'" readonly name="'.$fname.'">';
		}
		if($type=='number'){
			$str 	= '<input class="inputs" '.$attr.' value="'.$val.'" type="number" onfocus="js.focusval=this.value" maxlength="10" onblur="js.number(this);c.inputblur(this,'.$iszb.')" name="'.$fname.'">';
		}
		if($type=='xuhao'){
			$str = '<input class="inputs" '.$attr.' type="text" value="'.$val.'" name="'.$fname.'">';
			$str.= '<input value="0" type="hidden" name="'.$a['fieldss'].$leox.'">';
		}
		if($type=='changeusercheck'||$type=='changeuser'||$type=='changedept'||$type=='changedeptusercheck'){
			$_vals  = explode(',', $val);$_vals0 = $_vals[0];
			$_vals1 = isset($_vals[1]) ? $_vals[0] : '';
			$str 	= '<table width="98%" cellpadding="0" border="0"><tr><td width="100%"><input '.$attr.''.$onblue.'  class="inputs" style="width:99%" id="change'.$fname.'" value="'.$_vals0.'" readonly type="text" name="'.$fname.'"><input name="'.$data.'" value="'.$_vals1.'" id="change'.$fname.'_id" type="hidden"></td>';
			$str   .= '<td nowrap><a href="javascript:;" onclick="js.changeclear(\'change'.$fname.'\')" class="webbtn">×</a><a href="javascript:;" id="btnchange_'.$fname.'" onclick="js.changeuser(\'change'.$fname.'\',\''.$type.'\')" class="webbtn">选择</a></td></tr></table>';
		}
		if($type=='selectdatafalse' || $type=='selectdatatrue'){
			$str 	= '<table width="98%" cellpadding="0" border="0"><tr><td width="100%"><input '.$attr.''.$onblue.' class="inputs" style="width:99%" value="'.$val.'" readonly type="text" name="'.$fname.'"></td>';
			$str   .= '<td nowrap><a href="javascript:;" onclick="c.selectdata(\''.$data.'\','.substr($type,10).',\''.$fname.'\',\''.$fieldname.'\','.$iszb.')" class="webbtn">选择</a></td></tr></table>';
		}
		if($type=='htmlediter'){
			$str = '<textarea class="textarea" style="height:130px" '.$attr.' name="'.$fname.'">'.$val.'</textarea>';
		}
		if($type=='checkbox'){
			$chk = '';
			if($val=='1'||$val=='true')$chk='checked';
			$str = '<input name="'.$fname.'" '.$chk.' '.$attr.' type="checkbox" value="1"> ';
		}
		if($type=='uploadimg'){
			$str = '<input name="'.$fname.'" type="hidden">';
			$str.= '<img src="images/noimg.jpg" onclick="c.showviews(this)" id="imgview_'.$fname.'" height="100">';
			$str.= '<div style="display:none" tsye="img" tnam="'.$fname.'" id="filed_'.$fname.'"><input type="file" style="width:120px" accept="image/jpg,image/jpeg,image/png" id="filed_'.$fname.'_inp"></div>';
		}
		if($type=='uploadfile'){
			$str = '<input name="'.$fname.'" value="'.$val.'" type="hidden">';
			$str.= '<span id="fileview_'.$fname.'"></span>';
			$str.= '<div style="display:none" tsye="file" tnam="'.$fname.'" tdata="'.$data.'" id="filed_'.$fname.'"><input type="file"  style="width:120px" id="filed_'.$fname.'_inp"></div>';
		}
		if($type=='auto'){
			$datanum = $data;
			if(!isempt($datanum)){
				if($objs!=null && method_exists($objs, $datanum)){
					$str = $objs->$datanum($fid, $this->mid);
				}
			}
		}
		if($iszb>0)return $str;
		if($isasm==1){
			$lx  = 'span';if($ism==1)$lx='div';
			$str = '<'.$lx.' id="div_'.$fname.'" class="divinput">'.$str.'</'.$lx.'>';
			if($ism==1 && $iszb==0){
				$str = '<tr><td class="lurim" nowrap>'.$fnams.':</td><td width="90%">'.$str.'</td></tr>';
			}
		}
		return $str;
	}
	
	private function issql($str)
	{
		$bo 	= false;
		$str 	= strtoupper($str);
		if(contain($str,' FROM '))$bo=true;
		return $bo;
	}
	
	public function getdatastore($type, $objs, $datanum, $fid='')
	{
		$fopt	= array();
		$tyepa 	= explode(',','rockcombo,select,checkboxall,radio');
		if(!in_array($type, $tyepa) || isempt($datanum))return $fopt;
		
		//判断是不是SQL([SQL] name,value from [Q]abc)
		if($this->issql($datanum)){
			$sql  = str_replace('[SQL]','select ', $datanum);
			$sql  = m('base')->strreplace($sql);
			$rows = $this->db->getall($sql);
			if($rows)foreach($rows as $k=>$rs){
				$nam = arrvalue($rs,'name');
				$val = arrvalue($rs,'value');if(isempt($val))$val = arrvalue($rs,'id');
				if(isempt($val))$val = $nam;
				$fopt[] = array(
					'name' => $nam,
					'value' => $val,
				);
			}
		}
		
		
		//自定义方法读取数据源
		if(!$fopt && $objs!=null && method_exists($objs, $datanum)){
			$fopt = $objs->$datanum($fid,$this->mid);
			if(is_array($fopt)){
				return $fopt;
			}
		}
		
		//从flow上读取
		if(!$fopt && $this->flow!=null && method_exists($this->flow, $datanum)){
			$fopt = $this->flow->$datanum($fid,$this->mid);
			if(is_array($fopt)){
				return $fopt;
			}
		}
		
		if(!$fopt && ($type=='rockcombo' || $type=='checkboxall' || $type=='radio')){
			$_ars = explode(',', $datanum);
			$fopt = $this->option->getselectdata($_ars[0], isset($_ars[2]));
			$fvad = 'name';
			if(isset($_ars[1])&&($_ars[1]=='value'||$_ars[1]=='id'||$_ars[1]=='num'))$fvad=$_ars[1];
			
			if($fopt)foreach($fopt as $k=>$rs){
				$fopt[$k]['value'] = $rs[$fvad];
			}
		}
		if(!$fopt && ($type=='select' || $type=='checkboxall' || $type=='radio')){
			$fopt = c('array')->strtoarray($datanum);
			$barr = array();
			foreach($fopt as $k=>$rs){
				$barr[] = array(
					'name'	=> $rs[1],
					'value' => $rs[0],
				);
			}
			$fopt = $barr;
		}
		return $fopt;
	}
}                                              
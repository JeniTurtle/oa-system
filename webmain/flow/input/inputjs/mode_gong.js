function changesubmitbefore(){
	if(!form('mintou'))return;
	var min = form('mintou').value;
	if(min=='' || min=='0'){
		subdataminlen[0] = 0;
	}else{
		subdataminlen[0] = 2; //投票必须2个选项
	}
}
function changesubmit(d){
	if(d.mintou>0){
		if(d.startdt=='')return '投票的开始时间不能为空';
		if(d.enddt=='')return '投票的截止时间不能为空';
		
		if(d.startdt>=d.enddt)return '截止时间必须大于开始时间';
	}
}
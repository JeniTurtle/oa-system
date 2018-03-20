/**
*	createname：htmlvi开发团队-雨中磐石
*	homeurl：http://www.htmlvi.com/
*	Copyright (c) 2016 rainrock
*	Date:2016-01-01
*	remark：本文件页面是系统公共录入页面上主要js文件，处理录入页面上交互设计，公式计算等。
	                              xhxh
	                             xhxh
   xh       xh                 xh  xh
  xh    xhxhxhxhxh    xhxhxh       xh xh
 xhxh    xhxhxhxh     xh  xh xhxhxhxhxhxhxh
xh xh   xhxhxhxhxh    xhxhxh       xh
   xh                              xh
   xh   xhxhxhxhxh                 xh
   xh   xh      xh                 xh
   xh   xh      xh                 xh
   xh   xhxhxhxhxh               xhxh
*/

var ismobile=0,firstrs={},alldata={},isxiang=0,
	subdataminlen=[];//子表至少行数
function initbodys(){};
function savesuccess(){};
function eventaddsubrows(){}
function eventdelsubrows(){}
function geturlact(act,cns){
	var url=js.getajaxurl(act,'mode_'+moders.num+'|input','flow',cns);
	return url;
}
function initbody(){
	js.tanstyle = 1;
	$('body').keydown(function(et){
		var code	= event.keyCode;
		if(code==27){
			c.close();
			return false;
		}
		if(event.altKey){
			if(code == 83){
				get('AltS').click();
				return false;
			}
		}
	});
	var len = arr.length,i,fid,nfid='',flx;
	for(i=0;i<len;i++){
		fid=arr[i].fields;
		flx=arr[i].fieldstype;
		if(arr[i].islu=='1' && arr[i].iszb=='0'){
			if(flx=='checkboxall')fid+='[]';
			if(fid.indexOf('temp_')!=0 && !form(fid)){
				nfid+='\n('+fid+'.'+arr[i].name+')';
			}
			if(flx=='htmlediter')c.htmlediter(arr[i].fields);
		}
	}
	c.initsubtable();
	if(nfid==''){
		c.showdata();
	}else{
		alert('录入页面缺少必要的字段：'+nfid+'');
	}
	
	if(ismobile==1)f.fileobj = $.rockupload({
		autoup:false,
		fileview:'view_fileidview',
		allsuccess:function(){
			c.saveken();
		}
	});
}
function changesubmit(d){};
function changesubmitbefore(){};

//函数触发
function oninputblur(name,zb,obj,zbxu,row){};

var f={
	change:function(o1){
		f.fileobj.change(o1);
	}
};

js.apiurl = function(m,a,cans){
	var url=''+apiurl+'api.php?m='+m+'&a='+a+'&adminid='+adminid+'';
	var cfrom='mweb';
	url+='&device='+device+'';
	url+='&cfrom='+cfrom+'';
	url+='&token='+token+'';
	if(!cans)cans={};
	for(var i in cans)url+='&'+i+'='+cans[i]+'';
	return url;
}

var c={
	callback:function(cs){
		var calb = js.request('callback');
		var msg  = (mid=='0')?'新增':'编辑'
		if(!calb){
			if(ismobile==0){
				try{parent.js.msg('success',''+msg+'保存成功');}catch(e){}
				try{parent.bootstableobj[moders.num].reload();}catch(e){}
				try{parent.js.tanclose('winiframe');}catch(e){}
			}
			return;
		}
		try{parent[calb](cs);}catch(e){}
		try{opener[calb](cs);}catch(e){}
		try{parent.js.msg('success',''+msg+'保存成功');}catch(e){}
		try{parent.js.tanclose('winiframe');}catch(e){}
	},
	
	save:function(){
		var d = this.savesss();
		if(!d)return;
		if(ismobile==1){
			js.msg('wait','保存中...');
			get('AltS').disabled=true;
			f.fileobj.start();
		}else{
			this.saveken();
		}
	},
	saveken:function(){
		var d = this.savesss();
		if(!d)return;
		this.saveok(d);
	},
	showtx:function(msg){
		js.setmsg(msg);
		if(ismobile==1)js.msg('msg', msg);
	},
	selectdatadata:{},
	onselectdata:{},
	selectdata:function(s1,ced,fid,tit,zbis){
		if(isedit==0)return;
		if(!tit)tit='请选择...';
		if(s1.indexOf('[SQL]')==0){js.msg('msg','此元素类型的不支持数据源是SQL的');return;}
		var a1 = s1.split(','),idobj=false,acttyle='act';
		var fids = a1[1];
		if(fids){
			if(zbis==1){
				var gezs = this.getxuandoi(fid);
				fids+=gezs[2];
			}
			idobj=form(fids);
		}
		$.selectdata({
			data:this.selectdatadata[fid],title:tit,
			fid:fid,
			url:geturlact('getselectdata',{'act':a1[0],'acttyle':acttyle,'sysmodenum':moders.num}),
			checked:ced, nameobj:form(fid),idobj:idobj,
			onloaddata:function(a){
				c.selectdatadata[fid]=a;
			},
			onselect:function(seld,sna,sid){
				if(c.onselectdata[this.fid])c.onselectdata[this.fid](seld,sna,sid);
			}
		});
	},
	savesss:function(){
		if(js.ajaxbool||isedit==0)return false;
		var len = arr.length,i,val,fid,flx,nas,j,j1,zbd,sda,zbs,zbmc;
		changesubmitbefore();
		var d = js.getformdata();
		for(i=0;i<len;i++){
			if(arr[i].iszb!='0')continue;
			fid=arr[i].fields;
			flx=arr[i].fieldstype;
			nas=arr[i].name;
			if(ismobile==0 && arr[i].islu=='1' && flx=='htmlediter'){
				d[fid] = this.editorobj[fid].html();
			}
			val=d[fid];
			if(arr[i].isbt=='1'){
				if(flx=='uploadfile' && val=='0'){
					this.showtx('请选择'+nas+'');
					return false;
				}
				if(isempt(val)){
					if(form(fid))form(fid).focus();
					this.showtx(''+nas+'不能为空');
					return false;
				}
			}
			if(val && flx=='email'){
				if(!js.email(val)){
					this.showtx(''+nas+'格式不对');
					form(fid).focus();
					return false;
				}
			}
		}
		//子表判断记录是不是空
		len = subfielsa.length;
		for(i=0;i<this.subcount;i++){//子表数
			zbd = this.getsubdata(i);
			zbs = subdataminlen[i];
			zbmc= zbnamearr[i];
			if(typeof(zbs)=='number' && zbs==0)continue;//不需要子表行
			if(typeof(zbs)=='number' && zbs>0 && zbd.length<zbs){
				this.showtx('['+zbmc+']至少要'+zbs+'行');
				return false;
			}
			for(j1=0;j1<zbd.length;j1++){//总行
				for(j=0;j<subfielsa.length;j++){//必填字段
					sda = subfielsa[j];
					if(sda.iszb==(i+1)){//子表要对应
						flx = sda.type;
						val = zbd[j1][sda.fields];
						fid = ''+sda.fields+''+i+'_'+zbd[j1]._hang+'';
						if(isempt(val)){
							if(form(fid))form(fid).focus();
							this.showtx('['+sda.zbname+']第'+(j1+1)+'行上'+sda.name+'不能为空');
							return false;
						}
						if(flx=='number'&&parseFloat(val)==0){
							if(form(fid))form(fid).focus();
							this.showtx('['+sda.zbname+']第'+(j1+1)+'行上'+sda.name+'不能为0');
							return false;
						}
					}
				}
			}
		}
		if(firstrs.isbt==1){
			if(!d.sysnextoptid && form('sysnextopt')){
				this.showtx('请指定['+firstrs.name+']处理人');
				form('sysnextopt').focus();
				return false;
			}
		}
		var s=changesubmit(d);
		if(typeof(s)=='string'&&s!=''){
			this.showtx(s);
			return false;
		}
		if(typeof(s)=='object')d=js.apply(d,s);
		d.sysmodeid=moders.id;
		d.sysmodenum=moders.num;
		return d;
	},
	saveok:function(d){
		js.setmsg('保存中...');
		get('AltS').disabled=true;
		js.ajax(geturlact('save'),d,function(str){
			var a = js.decode(str);
			c.backsave(a, str);
		}, 'post', function(){
			get('AltS').disabled=false;
			js.setmsg('error:内部错误,可F12调试');
		});
	},
	backsave:function(a,str){
		var msg = a.msg;
		if(a.success){
			var msgs  = (mid=='0')?'新增':'编辑'
			var sumsg = ''+msgs+'保存成功';
			js.setmsg(sumsg,'green');
			js.msg('success',sumsg);
			this.formdisabled();
			$('#AltS').hide();
			form('id').value=a.data;
			isedit=0;
			this.callback(a.data);
			try{
			js.sendevent('reload', 'yingyong_mode_'+moders.num+'');
			js.backla();}catch(e){}
			savesuccess();
		}else{
			if(typeof(msg)=='undefined')msg=str;
			get('AltS').disabled=false;
			this.showtx(msg);//错误提醒
		}
	},
	showdata:function(){
		var smid=form('id').value;
		if(smid=='0'||smid==''){
			isedit=1;
			$('#AltS').show();
			c.initdatelx();
			c.initinput();
			initbodys(smid);
		}else{
			js.setmsg('加载数据中...');
			js.ajax(geturlact('getdata'),{mid:smid,flownum:moders.num},function(str){
				c.showdataback(js.decode(str));	
			},'post', function(){
				js.setmsg('error:内部错误,可F12调试');
			});
		}
	},
	//初始上传框
	initinput:function(){
		var o,o1,sna,i,tsye,uptp,tdata,farr=alldata.filearr,far;
		var o = $('div[id^="filed_"]');
		if(isedit==1)o.show();
		for(i=0;i<o.length;i++){
			o1 = o[i];sna= $(o1).attr('tnam');tsye=$(o1).attr('tsye');tdata=$(o1).attr('tdata');
			if(isedit==1){
				uptp = 'image';
				if(tsye=='file'){
					uptp='*';
					if(!isempt(tdata))uptp=tdata;
				}
				$.rockupload({
					'inputfile':''+o1.id+'_inp',
					'initremove':false,'uptype':uptp,
					'oparams':{sname:sna,snape:tsye},
					'onsuccess':function(f,gstr){
						var sna= f.sname,tsye=f.snape,d=js.decode(gstr);
						if(tsye=='img'){
							get('imgview_'+sna+'').src = d.filepath;
							form(sna).value=d.filepath;
						}else if(tsye=='file'){
							$('#fileview_'+sna+'').html(c.showfilestr(d));
							form(sna).value=d.id;
						}
					},
					'onprogress':function(f,bl){
						var sna= f.sname,tsye=f.snape;
						if(tsye=='file'){
							$('#fileview_'+sna+'').html('上传中('+bl+'%)...');
						}
					}
				});
			}
			var val = form(sna).value;
			if(tsye=='img'){
				if(val)get('imgview_'+sna+'').src=val;
			}
			if(tsye=='file' && val && val>0){
				far = farr['f'+val];
				if(far){
					$('#fileview_'+sna+'').html(c.showfilestr(far));
				}else{
					form(sna).value='0';
				}
			}
		}
	},
	showfilestr:function(d){
		var flx = js.filelxext(d.fileext);
		var s = '<img src="web/images/fileicons/'+flx+'.gif" align="absmiddle" height=16 width=16> <a href="javascript:;" onclick="js.downshow('+d.id+')">'+d.filename+'</a> ('+d.filesizecn+')';
		return s;
	},
	showviews:function(o1){
		$.imgview({'url':o1.src,'ismobile':ismobile==1});
	},
	initdatelx:function(){
		
	},
	subcount:3,//子表数量
	showdataback:function(a){
		if(a.success){
			var da = a.data;
			alldata= da;
			js.setmsg();
			var len = arr.length,i,fid,val,flx,ojb,j;
			data=da.data;
			for(i=0;i<len;i++){
				fid=arr[i].fields;
				flx=arr[i].fieldstype;
				if(arr[i].islu=='1' && arr[i].iszb=='0' && fid.indexOf('temp_')!=0){
					val=da.data[fid];
					if(val==null)val='';
					if(flx=='checkboxall'){
						ojb=$("input[name='"+fid+"[]']");
						val=','+val+',';
						for(j=0;j<ojb.length;j++){
							if(val.indexOf(','+ojb[j].value+',')>-1)ojb[j].checked=true;
						}
					}else if(flx=='checkbox'){
						form(fid).checked = (val=='1');
					}else if(flx=='htmlediter' && ismobile==0){
						this.editorobj[fid].html(val);
					}else if(flx.substr(0,6)=='change'){
						if(form(fid))form(fid).value=val;
						fid = arr[i].data;
						if(!isempt(fid)&&form(fid))form(fid).value=da.data[fid];
					}else{
						if(form(fid))form(fid).value=val;
					}
				}
			}
			isedit=da.isedit;
			if(form('base_name'))form('base_name').value=da.user.name;
			if(form('base_deptname'))form('base_deptname').value=da.user.deptname;
			js.downupshow(da.filers,'fileidview', (isedit==0));
			var subd = da.subdata,subds;
			for(j=0;j<this.subcount;j++){
				subds=subd['subdata'+j+''];
				if(subds)for(i=0;i<subds.length;i++){
					subds[i].sid=subds[i].id;
					if(form('xuhao'+j+'_'+i+'')){
						c.adddatarow(j,i, subds[i]);
					}else{
						c.insertrow(j, subds[i], true);
					}
				}
			}
			c.initinput();
			initbodys(form('id').value);
			if(isedit==0){
				this.formdisabled();
				js.setmsg('无权编辑，查看<a href="http://www.htmlvi.com/view_wqbj.html" target="_blank" class="blue">[帮助]</a>');
			}else{
				$('#AltS').show();
				c.initdatelx();
			}
			if(da.isflow==1){
				$('.status').css({'color':da.statuscolor,'border-color':da.statuscolor}).show().html(da.statustext);
			}
		}else{
			get('AltS').disabled=true;
			this.formdisabled();
			js.setmsg(a.msg);
			js.msg('msg',a.msg);
		}
	},
	date:function(o1,lx){
		$(o1).rockdatepicker({view:lx,initshow:true});
	},
	close:function(){
		window.close();
	},
	formdisabled:function(){
		$('form').find('*').attr('disabled', true);
		$('#fileupaddbtn').remove();
	},
	upload:function(){
		js.upload('',{showid:'fileidview'});
	},
	changeuser:function(na, lx){
		js.changeuser(na,lx);
	},
	changeclear:function(na){
		js.changeclear(na);
	},
	editorobj:{},
	htmlediter:function(fid){
		if(ismobile==1)return;
		var cans  = {
			resizeType : 0,
			allowPreviewEmoticons : false,
			allowImageUpload : true,
			formatUploadUrl:false,
			allowFileManager:true,
			uploadJson:'?m=upload&a=upimg&d=public',
			minWidth:'300px',height:'250',
			items : [
				'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
				'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
				'insertunorderedlist', '|','image','crop', 'link','unlink','|','source','clearhtml','fullscreen'
			]	
		};
		KindEditor.plugin('crop', function(K){
			this.clickToolbar('crop', function() {
				js.cliendsend('crop');
			});
		});
		KindEditor.lang({crop : '截屏'});
		this.editorobj[fid] = KindEditor.create("[name='"+fid+"']", cans);
	},
	subtablefields:[],
	initsubtable:function(){
		var i,oba,j,o,nas,nle,nasa,fname,o2;
		this.subcount = $("input[name^='sub_totals']").length;
		for(i=0;i<this.subcount;i++){
			o2 = get('tablesub'+i+'');
			if(o2){
				fname=[];
				o=$('#tablesub'+i+'');
				form('sub_totals'+i+'').value=o2.rows.length-1;
				this.repaixuhao(i);
				oba = o.find('tr:eq(1)').find('[name]');
				for(j=0;j<oba.length;j++){
					nas=oba[j].name;
					nasa=nas.split('_');
					nle = nasa.length;
					nna= nasa[0];
					if(nle>2)nna+='_'+nasa[1]+'';
					if(nle>3)nna+='_'+nasa[2]+'';
					fname.push(nna.substr(0,nna.length-1));
				}
				this.subtablefields[i]=fname;
			}
		}
	},
	getsubdata:function(i){
		var d=[];
		if(!get('tablesub'+i+''))return d;
		var len=parseFloat(form('sub_totals'+i+'').value);
		var i1,ji,i2,far=this.subtablefields[i],lens=far.length,fna;
		for(i1=0;i1<len;i1++){
			var a={_hang:i1};i2=0;
			for(j1=0;j1<lens;j1++){
				fna=''+far[j1]+''+i+'_'+i1+'';
				if(form(fna)){
					a[far[j1]]=form(fna).value;
					i2++;
				}
			}
			if(i2>0)d.push(a);
		}
		return d;
	},
	delrow:function(o,xu){
		if(isedit==0){
			$(o).remove();
			return;
		}
		var o1=get('tablesub'+xu+'').rows;
		if(o1.length<=2){
			js.msg('msg','最后一行不能删除');
			return;
		}
		$(o).parent().parent().remove();
		this.repaixuhao(xu);
		var i,len=gongsiarr.length,d;
		for(i=0;i<len;i++){
			d = gongsiarr[i];
			if(d.iszb==0&&form(d.fields))this.inputblur(form(d.fields),0);
		}
		eventdelsubrows(xu);
	},
	repaixuhao:function(xu){
		var o=$('#tablesub'+xu+'').find("input[temp='xuhao']");
		for(var i=0;i<o.length;i++){
			o[i].value=(i+1);
		}
	},
	insertrow:function(xu, d, isad){
		var o2 = get('tablesub'+xu+'');
		if(!o2){
			alert('表单设计有误，请重新设计多行子表');
			return;
		}
		var o=$('#tablesub'+xu+'');
		var oi = o2.rows.length-1,i,str='',oba,nas,oj,nna,ax2,d1,nass;
		oi=1;
		var cell = o2.rows[oi].cells.length;
		for(i=0;i<cell;i++)str+='<td>'+o2.rows[oi].cells[i].innerHTML+'</td>';
		oba = o.find('tr:eq('+oi+')').find('[name]');
		oj  = parseFloat(form('sub_totals'+xu+'').value);
		var narrs=[],fasr=this.subtablefields[xu],wux=''+xu+'_'+oj+'';
		for(i=0;i<oba.length;i++){
			nas=oba[i].name;
			oi = nas.lastIndexOf('_');
			nass= nas.substr(0, oi-1);
			nna=nass+''+wux+'';
			str=str.replace(new RegExp(nas,'gi'), nna);
			narrs.push(nna);
		}
		form('sub_totals'+xu+'').value=(oj+1);
		str=str.replace(/rockdatepickerbool=\"true\"/gi,'');
		o.append('<tr>'+str+'</tr>');
		d=js.apply({sid:'0'},d);
		for(d1 in d){
			ax2=d1+wux;
			if(form(ax2))form(ax2).value=d[d1];
		}
		this.repaixuhao(xu);
		this.initdatelx();
		if(!isad)eventaddsubrows(xu);
	},
	adddatarow:function(xu, oj, d){
		d=js.apply({sid:'0'},d);
		var fasr=this.subtablefields[xu],ans;
		for(var i=0;i<fasr.length;i++){
			ans=fasr[i]+''+xu+'_'+oj+'';
			if(form(ans)&&d[fasr[i]])form(ans).value=d[fasr[i]];
		}
	},
	//设置子表行数据
	setrowdata:function(xu, oj, d){
		var ans;
		for(var i in d){
			ans=i+''+xu+'_'+oj+'';
			if(form(ans))form(ans).value=d[i];
		}
	},
	//根据名称获取第几个子，哪一行[第几个子表，第几行]
	getxuandoi:function(fid){
		var naa = fid.substr(fid.lastIndexOf('_')-1);
		var spa = naa.split('_');
		spa[2] = naa;
		spa[3] = fid.replace(naa,'');
		spa[4] = fid;
		return spa;
	},
	addrow:function(o,xu){
		if(isedit==0){
			$(o).remove();
			return;
		}
		this.insertrow(xu);
	},
	getsubtabledata:function(){
		
	},
	_getsubtabledatas:function(xu){
		var oxut=form('sub_totals'+xu+'');
		if(!oxut)return false;
		var da={},fasr,len=parseFloat(oxut.value),j,f,na;
		da['sub_totals'+xu+'']=oxut.value;
		fasr=this.subtablefields[xu];
		for(j=1;j<=len;j++){
			for(f=0;j<fasr.length;j++){
				na=fasr[f]+''+xu+'_'+j+'';
				if(form(na))da[na]=form(na).value;
			}
		};
		return da;
	},
	getsubtotals:function(fid, xu){
		var oi=0;
		if(!xu)xu='0';
		var oxut=form('sub_totals'+xu+'');
		if(!oxut)return oi;
		var len=parseFloat(oxut.value),j,na,val;
		for(j=0;j<len;j++){
			na=fid+''+xu+'_'+j+'';
			if(form(na)){
				val=form(na).value;
				if(val)oi+=parseFloat(val);
			}
		}
		return oi;
	},
	getselobj:function(fv){
		var o = form(fv);
		if(!o)return;
		var o1= o.options[o.selectedIndex];
		return o1;
	},
	getseltext:function(fv){
		var o1 = this.getselobj(fv);
		if(!o1)return '';
		return o1.text;
	},
	getselattr:function(fv,art){
		var o1 = this.getselobj(fv);
		if(!o1)return '';
		return $(o1).attr(art);
	},
	setfields:function(fid,na){
		if(ismobile==1)na=''+na+':'
		$('#div_'+fid+'').parent().prev().text(na);
	},
	fieldshide:function(fid){
		var o = $('#div_'+fid+'').parent();
		o.hide();
		o.prev().hide();
	},
	fieldsshow:function(fid){
		var o = $('#div_'+fid+'').parent();
		o.show();
		o.prev().show();
	},
	
	//----强大公式计算函数处理start-----
	inputblur:function(o1,zb){
		if(isedit==0)return;
		var ans=[],nae,nae2,i,len=gongsiarr.length,d,iszb,iszbs,diszb,gongsi,gs1,gs2,bgsa,lens,blarr,j,val,nams;
		
		if(zb==1){
			ans = this.getxuandoi(o1.name);
			nae = ans[3]; //表单name名称
			nae2= ans[2]; //格式0_0
			iszb= parseFloat(ans[0]);
			iszbs = iszb+1; //第几个子表
		}else{
			nae = o1.name;
		}
		
		for(i=0;i<len;i++){
			d 		= gongsiarr[i];
			gongsi 	= d.gongsi;
			if((gongsi+d.fields).indexOf(nae)<0 || isempt(gongsi))continue;
			diszb   = parseFloat(d.iszb);
			if(diszb==0){
				//主表字段公式计算[{zb0.count}*{zb0.price}] - [{discount}]
				bgsa = this.splitgongs(gongsi);
				lens = bgsa.length;
				gongsi = bgsa[lens-1];
				for(j=0;j<lens-1;j++){
					gs2 = bgsa[j];
					gs1 = this.subtongjisd(gs2);
					if(gs1=='')gs1 = this.zhujisuags(gs2,'','',true);
					gongsi = gongsi.replace(gs2, gs1);
				}
				gongsi = gongsi.replace(/\[/g,'');
				gongsi = gongsi.replace(/\]/g,'');
				this.gongsv(d.fields, gongsi,d.gongsi);
				
			}else if(diszb==iszbs && zb==1){
				this.zhujisuags(gongsi, d.fields, nae2, false);//子表行内计算
			}
		}
		oninputblur(nae,zb, o1,ans[0],ans[1]);
	},
	splitgongs:function(gongsi){
		if(gongsi.indexOf(']')<0)gongsi = '['+gongsi+']';
		var carr = gongsi.split(']'),i,bd=[],st;
		for(i=0;i<carr.length;i++){
			st = carr[i];
			st = st.substr(st.indexOf('[')+1);
			if(st)bd.push(st);
		}
		bd.push(gongsi);
		return bd;
	},
	zhujisuags:function(gongsi, fid, nae2, blx){
		var blarr,j,nams,val,ogs;
		ogs	  = gongsi+'';
		blarr = this.pipematch(ogs);
		for(j=0;j<blarr.length;j++){
			nams	= ''+blarr[j]+''+nae2+'';
			val 	= form(nams) ? form(nams).value : '0';
			ogs = ogs.replace('{'+blarr[j]+'}', val);
		}
		if(blx)return '('+ogs+')';
		nams	= ''+fid+''+nae2+'';
		return this.gongsv(nams, ogs, gongsi);
	},
	subtongjisd:function(gongsi){
		var str = '',blarr,zb,i,dds,kes,gss,i1;
		if(gongsi.indexOf('zb0.')>-1 || gongsi.indexOf('zb1.')>-1 || gongsi.indexOf('zb2.')>-1){
			blarr = this.pipematch(gongsi);
			zb    = blarr[0].split('.')[0].replace('zb','');//哪个子表
			dds   = this.getsubdata(zb);
			for(i=0;i<dds.length;i++){
				gss = gongsi+'';
				for(i1 in dds[i])gss=gss.replace('{zb'+zb+'.'+i1+'}', dds[i][i1]);
				str+= '+('+gss+')';
			}
		}
		if(str!=''){
			str = '('+str.substr(1)+')';
		} 
		return str;
	},
	gongsv:function(ne,vlas,gongss){
		var val = '0',vals,val1;
		if(form(ne)){
			try{
				val = eval(vlas);if(!val)val='0';
				val1= 'a'+val+'';vals= val1.split('.');
				if(vals[1] && vals[1].length>2)val=js.float(val);
				form(ne).value=val;
			}catch(e){
				alert(''+ne+'计算公式设置有错误：'+gongss+'\n\n'+vlas+'');
			}
		}
		return val;
	},
	pipematch:function(str){
		var star = str.match(/\{(.*?)\}/gi),i;
		var b 	 = [];
		if(star)for(i=0;i<star.length;i++){
			b.push(star[i].substr(1, star[i].length-2));
		}
		return b;
	}
	//----公式end -----
};
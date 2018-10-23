﻿var objcont,tabs_title,tabsarr={},nowtabs,opentabs=[],menutabs,menuarr,admintype='0';
var viewwidth,viewheight,optmenudatas=[];

js.initbtn = function(obj){
	var o = $("[click]"),i,o1,cl;
	for(i=0; i<o.length; i++){
		o1	= $(o[i]);
		cl	= o1.attr('clickadd');
		if(cl!='true'){
			o1.click(function(eo){
				var cls = $(this).attr('click');
				if(typeof(cls)=='string'){
					cls=cls.split(',');
					obj[cls[0]](this, cls[1], cls[2], eo);
				}
				return false;
			});
		}
	}
	o.attr('clickadd','true');
}

js.initedit = function(id,can){
	var cans = js.apply({
		resizeType : 0,
		allowPreviewEmoticons : false,
		allowImageUpload : true,
		formatUploadUrl:false,
		uploadJson:'mode/kindeditor/kindeditor_upload.php',
		allowFileManager:true,
		items : ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
			'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
			'insertunorderedlist', '|','image', 'link','unlink','|','source','clearhtml','fullscreen'],
		blur:function(){
			
		}
	},can);
	
	var editorobj = KindEditor.create('#'+id+'', cans);	
	return editorobj;
}

js.setwhere	= function(mid,call){
	if(!call)call='';
	var url =js.getajaxurl('@setwhere','where','flow',{modeid:mid,callback:call});
	js.tanbody('setwherewin','设置条件',500,330,{
		html:'<div style="height:320px;overflow:hidden"><iframe src="" name="winiframese" width="100%" height="100%" frameborder="0"></iframe></div>',
		bbar:'none'
	});
	winiframese.location.href=url;
}

function publicstore(mo,dos,oans){
	if(!mo)mo='index';
	if(!dos)dos='';
	return js.getajaxurl('publicstore',mo,dos,oans);
}
function publicmodeurl(num,act,oans){
	if(!act)act='publicstore';
	return js.getajaxurl(act,'mode_'+num+'|input','flow',oans);
}
function publicsave(mo, dos,oans){
	if(!mo)mo='index';
	if(!dos)dos='';
	return js.getajaxurl('publicsave',mo,dos,oans);
}

function editfacechang(xid,nems){
	js.upload('_editfacechangback',{maxup:'2',thumbnail:'150x150','title':'修改['+nems+']的头像',uptype:'image','params1':xid});	
}
function _editfacechangback(a,xid){
	var f = a[0];
	var nf= f.thumbpath+'?'+Math.random()+'';
	if(xid==adminid)get('myface').src=nf;
	if(get('faceviewabc_'+xid+''))get('faceviewabc_'+xid+'').src=nf;
	js.msg('wait','头像修改中...');
	js.ajax(js.getajaxurl('editface','admin','system'),{fid:f.id,'uid':xid},function(){
		js.msg('success','修改成功,如没显示最新头像，请清除浏览器缓存');
	});
}
function _addbodykey(){
	$('body').keydown(function(e){
		var code	= e.keyCode;
		if(code==27){
			if(get('xpbg_bodydds')){
				js.tanclose($('#xpbg_bodydds').attr('xpbody'));
			}else{
				closenowtabs();
			}
			return false;
		}
		//弹出帮助
		if(code==113){
			js.confirm('是否打开查看关于['+nowtabs.name+']的帮助信息？',function(jg){
				if(jg=='yes')window.open('http://www.jouryu.com/view_'+nowtabs.num+'.html?title='+jm.base64encode(nowtabs.name)+'');
			});
			return false;
		}
	});
}


function openinput(name,num, id,cbal){
	if(!id)id=0;
	if(!cbal)cbal='';
	if(id==0){name='[新增]'+name+'';}else{name='[编辑]'+name+'';}
	var url='?a=lu&m=input&d=flow&num='+num+'&mid='+id+'';
	openxiangs(name, url,'', cbal);
	return false;
}
function openxiangs(name,num,id,cbal){
	if(!id)id=0;
	if(!cbal)cbal='';
	var url = 'task.php?a=p&num='+num+'&mid='+id+'';
	if(num.indexOf('?')>-1){url=num+'&callback='+cbal+'';}else{url+='&callback='+cbal+'';}
	js.winiframe(name,url);
	return false;
}
function openxiang(num,id,cbal){
	var url = 'task.php?a=p&num='+num+'&mid='+id+'';
	if(cbal)url+='&callback='+cbal+'';
	js.open(url, 800,500);
}

//打开聊天会话
function openchat(id, lx,face){
	try{if(nwjsgui){opener.openchat(id, lx,face);return;}}catch(e){}
	if(!lx)lx=0;var types=['user','group'];
	var sle = (types[lx]) ? types[lx] : lx;
	var url = '?d=reim&m=chat&uid='+id+'&type='+sle+'',csne={};
	if(face)csne.icon=face;
	var num = ''+sle+'_'+id+'';
	js.open(url, 480,500, num,{},csne);
}

function optmenuclass(o1,num,id,obj,mname,oi, cola){
	this.modenum = num;
	this.modename= mname;
	this.id 	 = id;
	this.mid 	 = id;
	this.tableobj=obj;
	this.oi 	= oi;
	this.obj 	= o1;
	this.columns= cola;
	this.optmenudatas= {};
	var me 		= this;
	this._init=function(){
		if(typeof(optmenuobj)=='object')optmenuobj.remove();
		this.callbackstr = '';
		if(this.columns.callback)this.callbackstr=this.columns.callback;
		optmenuobj=$.rockmenu({
			data:[],
			itemsclick:function(d){me.showmenuclick(d);},
			width:150
		});
		var da = [{name:'详情',lx:998,nbo:false},{name:'详情(新窗口)',lx:998,nbo:true}];
		var off=$(this.obj).offset();
		var subdata = this.optmenudatas[''+this.modenum+'_'+this.id+''];
		if(!subdata){
			da.push({name:'<img src="images/loadings.gif" align="absmiddle"> 加载菜单中...',lx:999});
			this.loadoptnum();
		}else{
			for(i=0;i<subdata.length;i++)da.push(subdata[i]);
		}
		optmenuobj.setData(da);
		optmenuobj.showAt(off.left,off.top+20);
	};
	this.xiang=function(oi,nbo){
		var mnem=this.modename;
		if(!nbo){
			if(!mnem)mnem='详情';
			openxiangs(mnem,this.modenum,this.mid, this.callbackstr);
		}else{
			openxiang(this.modenum,this.mid, this.callbackstr);
		}
	};
	this.openedit=function(){
		openinput(this.modename,this.modenum,this.mid, this.callbackstr);
	};
	this.getupgurl=function(str){
		if(str.substr(0,4)=='http')return str;
		var a1 = str.split('|'),lx = a1[0],mk = a1[1],cs=a1[2];
		var url= '';
		if(lx=='add')url='?a=lu&m=input&d=flow&num='+mk+'';
		if(lx=='xiang')url='task.php?a=p&num='+mk+'';
		if(cs)url+='&'+cs;
		return url;
	};
	this.showmenuclick=function(d){
		d.num=this.modenum;d.mid=this.id;
		d.modenum = this.modenum;
		var lx = d.lx;if(!lx)lx=0;
		if(lx==999)return;
		if(lx==998){this.xiang(d.oi, d.nbo);return;}
		if(lx==997){this.printexcel(d.oi);return;}
		if(lx==996){this.xiang(d.oi, d.nbo);return;}
		if(lx==11){this.openedit();return;}
		this.changdatsss = d;
		if(lx==2 || lx==3){
			var clx='user';if(lx==3)clx='usercheck';
			js.getuser({type:clx,title:d.name,callback:function(na,nid){me.changeuser(na,nid);}});
			return;
		}
		//打开新窗口
		if(lx==5){
			var upg = d.upgcont;
			if(isempt(upg)){
				js.msg('msg','没有设置打开的操作地址');
			}else{
				var url = this.getupgurl(upg);
				openxiangs(d.name, url,'', this.callbackstr);
			}
			return;
		}
		var nwsh = 'showfielsv_'+js.getrand()+'';
		var uostr= '<div align="left" style="padding:10px"><div id="'+nwsh+'" style="height:60px;overflow:auto" class="input"></div><input style="width:180px" id="'+nwsh+'_input" type="file"></div>';
		var bts = (d.issm==1)?'必填':'选填';
		if(d.optnum!=null && d.optnum.indexOf('noup')>-1)uostr='';
		if(!d.smcont)d.smcont='';
		if(lx==1 || lx==9 || lx==10 || lx==13 || lx==15 || lx==16 || lx==17){
			if(d.nup==1)uostr=''; //不需要上传文件
			js.prompt(d.name,'请输入['+d.name+']说明('+bts+')：',function(index, text){
				if(index=='yes'){
					if(!text && d.issm==1){
						js.msg('msg','没有输入['+d.name+']说明');
					}else{
						me.okchangevalue(d, text);
					}
					return true;
				}
			},d.smcont,'', uostr);
			this._uosschange(nwsh);
			return;
		}
		//提醒
		if(lx==14){
			openinput('提醒设置','remind',''+d.djmid+'&def_modenum='+this.modenum+'&def_mid='+this.mid+'&def_explain=basejm_'+jm.base64encode(d.smcont)+'', this.callbackstr);
			return;
		}
		//回执
		if(lx==18){
			openinput(d.name,'receipt',''+d.djmid+'&def_modenum='+this.modenum+'&def_mid='+this.mid+'&def_modename=basejm_'+jm.base64encode(d.modename)+'&def_explain=basejm_'+jm.base64encode(d.smcont)+'', this.callbackstr);
			return;
		}
		if(lx==4){
			js.prompt(d.name, '说明('+bts+')：', function(index, text){
				if(index=='yes'){
					var ad=js.getformdata('myformsbc');
					for(var i in ad)d['fields_'+i+'']=ad[i];
					me.okchangevalue(d, text);
					return true;
				}
			},'','<div align="left" id="showmenusss" style="padding:10px">加载中...</div>', uostr);
			var url='index.php?a=lus&m=input&d=flow&num='+d.modenum+'&menuid='+d.optmenuid+'&mid='+d.mid+'';
			$.get(url, function(s){
				var s='<form name="myformsbc">'+s+'</form>';
				$('#showmenusss').html(s);
				js.tanoffset('confirm');
			});
			this._uosschange(nwsh);
			return;
		}
		this.showmenuclicks(d,'');
	};
	this._uosschange=function(nwsh){
		this.fupobj = $.rockupload({
			autoup:false,
			fileview:nwsh,
			allsuccess:function(a,sid){
				me.upsuccessla(sid);
			}
		});
		$('#'+nwsh+'_input').change(function(){
			me.fupobj.change(this);
		});
	};
	this.upsuccessla=function(sid){
		var d = this.changdatsss;
		d.logfileid = sid;
		this.showmenuclicks(d, this.inputexplain);
		js.tanclose('confirm');
	};
	this.okchangevalue=function(d,text){
		this.changdatsss	= d;
		this.inputexplain 	= text;
		this.fupobj.start();
	};
	this.changeuser=function(nas,sid){
		if(!sid)return;
		var d = this.changdatsss,sm='';
		d.changename 	= nas; 
		d.changenameid  = sid; 
		this.showmenuclicks(d,sm);
	};
	this.showmenuclicks=function(d,sm){
		if(!sm)sm='';
		d.sm = sm;
		for(var i in d)if(d[i]==null)d[i]='';
		js.msg('wait','处理中...');
		js.ajax(js.getajaxurl('yyoptmenu','flowopt','flow'),d,function(ret){
			if(ret.code==200){
				me.optmenudatas[''+d.modenum+'_'+d.mid+'']=false;
				me.tableobj.reload();
				js.msg('success','处理成功');
			}else{
				js.msg('msg',ret.msg);
			}
		},'post,json');	
	};
	this.loadoptnum=function(){
		js.ajax(js.getajaxurl('getoptnum','flowopt','flow'),{num:this.modenum,mid:this.id,bfrom:'hou'},function(ret){
			if(ret.code == 200){
				me.optmenudatas[''+me.modenum+'_'+me.id+''] = ret.data;
				me._init();
			}else{
				js.msg('msg',ret.msg);
			}
		},'get,json');
	};
	this._init();
}
js.getuser = function(cans){
	var can = js.apply({title:'读取人员',idobj:false,nameobj:false,value:'',type:'deptusercheck',callback:function(){}}, cans);
	can.onselect=can.callback;
	js.changeuser(false, can.type, can.title, can);
}

/**
*	type=0高级搜索使用,1设置自定义字段
*/
var highdata={};
function highsearchclass(options){
	var me 		= this;
	var cans 	= js.apply({'oncallback':function(){},'modenum':'','type':0}, options);
	for(var a in cans)this[a]=cans[a];
	this.init 	= function(){
		if(!this.modenum)return;
		if(this.type==0){
			js.tanbody('searchhigh','高级搜索', 450,300,{
				html:'<div id="searchhighhtml" style="height:200px;overflow:auto;"></div>',
				btn:[{text:'搜索'}],
				msg:'<a id="searchhigh_cz" href="javascript:;">[重置]</a> &nbsp; '
			});
			this.initfields();
		}
		if(this.type==1){
			js.tanbody('searchhigh','自定义列显示', 300,350,{
				html:'<div id="searchhighhtml" class="select-list" style="height:300px;overflow:auto;"></div>',
				btn:[{text:'确定'}]
			});
			this.initfields();
		}
		$('#searchhigh_btn0').click(function(){
			me.queding();
		});
		$('#searchhigh_cz').click(function(){
			me.chongzhi();
		});
	};
	this.initfields=function(){
		if(this.type==1){
			var i,a=this.fieldsarr,b=this.fieldsselarr,len=a.length,str='',fid='columns_'+this.modenum+'_'+this.pnum+'',selstr='caozuo';
			if(this.isflow>0)selstr+=',base_name,base_deptname';
			for(i=0;i<len;i++){
				str+='<div class="div01"><label><input name="selfields" type="checkbox" value="'+a[i].fields+'">&nbsp;'+a[i].name+'('+a[i].fields+')</label></div>';
				if(a[i].islb==1)selstr+=','+a[i].fields+'';
			}
			str+='<div class="div01"><label><input name="selfields" type="checkbox" value="caozuo">&nbsp;操作列</label></div>';
			$('#searchhighhtml').html(str);
			if(b[fid])selstr=b[fid];
			selstr	= ','+selstr+',';
			$('input[name=selfields]').each(function(){
				if(selstr.indexOf(','+this.value+',')>=0)this.checked=true;
			});
			this.columnsnum = fid;
			return;
		}
		$('#searchhighhtml').html('<div align="center" style="padding:10px">'+js.getmsg('加载中...')+'</div>');
		var fieldsat = this.getinitdata('fields');
		if(!fieldsat){
			var url = js.getajaxurl('getcolumns','mode_'+this.modenum+'|input','flow');
			js.ajax(url,{modenum:this.modenum},function(ret){
				me.searchhighshow(ret);
			},'get,json');
		}else{
			this.searchhighshow(fieldsat);
		}
	},
	this.getinitdata=function(lx){
		var d = highdata[this.modenum];
		if(!d)return false;
		return d[lx];
	};
	this.setinitdata=function(lx, da){
		if(!highdata[this.modenum])highdata[this.modenum]={};
		highdata[this.modenum][lx]=da;
	};
	this.searchhighshow=function(d){
		this.setinitdata('fields',d);
		var s = '<form name="highform"><table width="100%">',i,len=d.length,b;
		for(i=0;i<len;i++){
			b = d[i];
			s+='<tr>';
			s+='<td width="80" align="right"><font color="#555555">'+b.name+'</font></td>';
			s+='<td style="padding:5px">'+this.searchhighshowinput(b)+'</td>';
			s+='</tr>';
		}
		s+='</table></form>';
		$('#searchhighhtml').html(s);
		var obj	= document['highform'],i,data=this.getinitdata('data'),na;
		if(!data)data={};
		for(i=0;i<obj.length;i++){
			$(obj[i]).blur(function(){
				me.saveformdata();
			}).keyup(function(e){
				if(e.keyCode==13)me.queding();
			});
			na = obj[i].name;
			if(data[na])obj[i].value=data[na];
		}
	};
	this.chongzhi=function(){
		document['highform'].reset();
		this.saveformdata();
	};
	this.searchhighshowinput=function(b){
		var type = b.fieldstype,name = 'soufields_'+b.fields+'';
		var s = '<input placeholder="关键词包含" type="text" class="inputs" name="'+name+'">';
		if(type=='date' || type=='datetime' || type=='month'){
			s='<input style="width:150px" onclick="js.datechange(this,\'date\')" class="inputs datesss" readonly  name="'+name+'_start"> 至 <input onclick="js.datechange(this,\'date\')" style="width:150px" class="inputs datesss" readonly name="'+name+'_end"> ';
		}
		if(type=='month'){
			s='<input style="width:150px" onclick="js.datechange(this,\''+type+'\')" class="inputs datesss" readonly name="'+name+'">';
		}
		if(type=='number'){
			s='<input style="width:150px" type="number" onfocus="js.focusval=this.value" maxlength="10" onblur="js.number(this)" class="inputs" name="'+name+'_start"> 至 <input style="width:150px" type="number" onfocus="js.focusval=this.value" maxlength="10" onblur="js.number(this)" class="inputs" name="'+name+'_end"> ';
		}
		if(type=='select' || type=='rockcombo'){
			var i = 0,len=b.store.length;
			s='<select name="'+name+'" class="inputs">';
			s+='<option value="">-选择-</option>';
			for(i=0;i<len;i++){
				s+='<option value="'+b.store[i].value+'">'+b.store[i].name+'</option>';
			}
			s+='</select>';
		}
		return s;
	};
	this.setmsg=function(str){
		js.setmsg(str,'', 'msgview_searchhigh');
	};
	this.queding=function(){
		var d = '';
		if(this.type==0){
			d = this.saveformdata();
			this.oncallback(d);
			js.tanclose('searchhigh');
		}
		if(this.type==1){
			$('input[name=selfields]').each(function(){
				if(this.checked)d+=','+this.value+'';
			});
			if(d!='')d=d.substr(1);
			this.setmsg('保存中...');
			js.ajax(js.getajaxurl('savecolunms','flow','main'),{num:this.columnsnum,str:d,modeid:this.modeid},function(s){
				if(s=='ok'){
					js.msg('success','保存成功');
					me.oncallback(d);
					js.tanclose('searchhigh');
				}else{
					me.setmsg(s);
				}
			},'post');
		}
	};
	this.saveformdata=function(){
		var d = js.getformdata('highform');
		this.setinitdata('data',d);
		return d;
	};
	this.init();
}

/**
*	订阅
*/
function classubscribe(options){
	var me 		= this;
	var cans 	= js.apply({'oncallback':function(){},title:'','params':{},objtable:false}, options);
	for(var a in cans)this[a]=cans[a];
	this._init 	= function(){
		if(!this.objtable){
			js.msg('msg','没指定一个表格无法设置订阅');
			return;
		}
		var cyrl = this.objtable.geturlparams(),cstr='',i,vsts,ostrs='';
		var cyrls = cyrl[1];
		cyrls.loadci=1;
		for(i in cyrls){
			vsts = cyrls[i];
			if(vsts || vsts=='0')cstr+='&'+i+'='+vsts+'';
		}
		cstr  = cstr.substr(1);
		
		for(i in this.params){
			vsts = this.params[i];
			if(vsts || vsts=='0')ostrs+='&'+i+'='+vsts+'';
		}
		if(ostrs!='')ostrs=ostrs.substr(1);
		var h = $.bootsform({
			title:'订阅',height:500,width:500,tablename:'subscribe',isedit:0,
			params:{int_filestype:'status',otherfields:'optid={adminid},optname={admin},optdt={now}'},
			submitfields:'title,cont,explain,suburl,suburlpost',
			url:publicmodeurl('subscribe','publicsave'),beforesaveaction:'savebefore',
			items:[{
				labelText:'订阅名称',name:'title',required:true,value:this.title
			},{
				labelText:'订阅提醒内容',name:'cont',value:this.cont,type:'textarea',required:true,height:60
			},{
				labelText:'订阅参数',name:'suburlpost',type:'hidden',height:60,value:cstr
			},{
				labelText:'订阅地址',name:'suburl',type:'hidden',height:50,value:jm.base64encode(cyrl[0])
			},{
				labelText:'订阅参数',blankText:'根据参数获取数据如：key=关键词&month={month}，乱写会导致预想不到的后果。',name:'suburlposts',type:'textarea',height:60,value:ostrs
			},{
				labelText:'说明',name:'explain',type:'textarea',height:50,value:this.explain
			},{
				name:'status',labelBox:'启用',type:'checkbox',checked:true
			}],
			success:function(){
				js.confirm('订阅成功，是否直接到我的订阅管理下添加订阅运行时间？',function(jg){
					if(jg=='yes')addtabs({url:'flow,page,subscribe,atype=my',name:'我订阅管理',num:'rssglmy','icons':'cog'});
				});
				me.oncallback();
			},
			submitcheck:function(d){
				var str = d.suburlpost;
				if(!isempt(d.suburlposts))str+='&'+d.suburlposts+'';
				str 	= jm.base64encode(str);
				return {'suburlpost':str};
			}
		});
		
		h.isValid();
	};
	this._init();
}

js.subscribe=function(csns){
	return new classubscribe(csns);
}
<?php defined('HOST') or die('not access');?>
<script >
$(document).ready(function(){
	
	var a = $('#view_{rand}').bootstable({
		tablename:'chargems',url:js.getajaxurl('gettpl','{mode}','{dir}'),statuschange:false,
		columns:[{
			text:'编号',dataIndex:'num'
		},{
			text:'模版内容',dataIndex:'cont',align:'left'
		},{
			text:'是否公开',dataIndex:'isgk',type:'checkbox'
		},{
			text:'状态',dataIndex:'statustext',renderer:function(v,d){
				if(d.status=='0')v+='<a href="javascript:;" onclick="urelsd{rand}(\''+d.num+'\')">[刷新状态]</a>';
				return v;
			}
		},{
			text:'来源',dataIndex:'fromstr'
		}],
		beforeload:function(){
			btn(true);
		},
		itemclick:function(d){
			var bo = (d.isedit==1)?false:true;
			btn(bo);
		}
	});
	
	function btn(bo){
		get('del_{rand}').disabled = bo;
		get('edit_{rand}').disabled = bo;
	}
	
	var c={
		reloads:function(){
			a.reload();
		},
		clickwin:function(o1,lx){
			var h = $.bootsform({
				title:'短信模版',height:400,width:400,
				tablename:'sms',isedit:lx,
				url:js.getajaxurl('savetpl','{mode}','{dir}'),
				submitfields:'cont,num',
				items:[{
					labelText:'模版内容',type:'textarea',name:'cont',required:true,blankText:'请严格按照规范填写，变量用#name#格式。',height:150
				},{
					labelText:'',name:'num',type:'hidden'
				}],
				success:function(){
					js.msg('success','保存成功');
					a.reload();
				}
			});
			if(lx==1){
				h.setValues(a.changedata);
			}
			h.getField('cont').focus();
		},
		del:function(){
			js.confirm('确定要删除此模版吗？',function(jg){
				if(jg=='yes')c.dels();
			});
		},
		dels:function(){
			var num = a.changedata.num;
			js.msg('wait','删除中...');
			js.ajax(js.getajaxurl('deltpl','{mode}','{dir}'),{num:num}, function(ret){
				if(ret.success){
					js.msg('success','删除成功');
					a.reload();
				}else{
					js.msg('msg',ret.msg);
				}
			},'get,json');
		},
		getztss:function(bh){
			js.msg('wait','刷新中...');
			js.ajax(js.getajaxurl('relaodtpl','{mode}','{dir}'),{num:bh}, function(ret){
				if(ret.success){
					js.msg('success','刷新成功');
					a.reload();
				}else{
					js.msg('msg',ret.msg);
				}
			},'get,json');
		}
	};

	js.initbtn(c);
	
	urelsd{rand}=function(bh){
		c.getztss(bh);
	}
});
</script>
<div>
	<table width="100%"><tr>
	<td nowrap>
		<button class="btn btn-primary" click="clickwin,0"  type="button"><i class="icon-plus"></i> 新增</button>
		 &nbsp; 
		<button class="btn btn-default" click="reloads"  type="button"><i class="icon-refresh"></i> 刷新</button>
	</td>
	<td align="right">
		
		<button class="btn btn-danger" id="del_{rand}" click="del" disabled type="button"><i class="icon-trash"></i> 删除</button> &nbsp; 
		<button class="btn btn-info" id="edit_{rand}" click="clickwin,1" disabled type="button"><i class="icon-edit"></i> 编辑 </button>
	</td>
	</tr>
	</table>
</div>
<div class="blank10"></div>
<div id="view_{rand}"></div>
<div class="tishi">如公开说明使用htmlvi系统的用户都可以使用这个模版，为了防止资源浪费，所有的模版都是公开的。普通用户不能添加模版，VIP用户可添加10个模版，合作商没限制，添加编辑模版是需要审核的，可[刷新状态]查看审核状态。</div>
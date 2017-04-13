<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
		<jsp:include page="../../inc.jsp"></jsp:include>
	<title>退货登记 - 物流管理系统</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
</head>
 <body>
    <div id="p" class="easyui-panel" title="退货登记"     
        style="width:100%;height:150px;padding:10px;background:#fafafa;">   
<div style="position:absolute;width:100%;">
	<table style="font-size:12px;">
  <tr>
    <td align="right" >任务单号</td>
    <td><input id="ss" class="easyui-searchbox" style="width:300px" ></input> 
</td>
  </tr>
  </table>
</div>
<div style="position:absolute;top:78px;left:9px; width:98.7%"><table id="tt"></table> </div> 
</div> 
</body>
</html>
<script language="javascript"> 
 
	$('#tt').datagrid({
			nowrap:true,//显示数据
			striped:true,//是否显示斑马效果
			rownumbers:true,//行号列
			fitColumns:true,//允许表格自动缩放，以适应父容器
			remoteSort:false,//服务器对数据进行排序
			singleSelect:true,//单选
			checkbox:true,//复选
			pagination:true,//显示分页
			columns:[[{	
				field:'a',
				title:'任务单号',
				width:'120',
				align:'center'
			},{
				field:'b',
				title:'商品编号',
				width:'130',
				align:'center'
			},{
				field:'c',
				title:'商品名称',
				width:'100',
				align:'center'
			},{	
				field:'d',
				title:'型号',
				width:'100',
				align:'center'
			},{
				field:'e',
				title:'厂商',
				width:'120',
				align:'center'
			},{
				field:'f',
				title:'退货数量',
				width:'100',
				align:'center'
			},{	
				field:'g',
				title:'计量单位',
				width:'100',
				align:'center'
			},{
				field:'h',
				title:'操作',
				width:'80',
				align:'center',
				formatter:function(value,row,index){  
					var btn = "";
					if(row.isdefault != 0){
						 btn = $.formatString('<a class="detailed" id="detailed" onclick="dodetailed(\'{0}\')"></a>',row.messageId);
					}
					return btn;  
	        	}  
			}
			]],
			onLoadSuccess:function(data){
				$('.detailed').linkbutton({text:'查看'}),  
		        $('.detailed').linkbutton('resize',{		//设置按钮的高度
		        	height:20
		        })
			}		
		});
		var p = $("#tt").datagrid('getPager'); //返回页面对象
		var opts=$("#tt").datagrid('options');
		
		$(p).pagination({
		pageSize : 10,
		pageList : [ 10, 15, 20 ],
		displayMsg : '当前显示{from}-{to}条记录   共{total}条记录',
	});
</script> 
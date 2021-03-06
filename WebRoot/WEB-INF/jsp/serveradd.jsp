<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="../../inc.jsp" ></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>新客户登记 - 物流管理系统</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<style media="all" type="text/css">@import "../../style/all.css";</style>
	<script type="text/javascript">
		function check(){
			var customerName = document.frm1.customerName.value;
			var idcard = document.frm1.idcard.value;
			var officePhoneNumber = document.frm1.officePhoneNumber.value;
			var deliveryAddress = document.frm1.deliveryAddress.value;
			var customerArea = document.frm1.customerArea.value;
			if(customerName==null||customerName==""){
				alert("客户姓名不能为空！");
				document.frm1.customerName.focus();
				return false;
			}
			if(idcard==null||idcard==""){
				alert("身份证号不能为空！");
				document.frm1.idcard.focus();
				return false;
			}
			if(officePhoneNumber==null||officePhoneNumber==""){
				document.frm1.officePhoneNumber.focus();
				alert("座机不能为空！");
				return false;
			}
			if(deliveryAddress==null||deliveryAddress==""){
				document.frm1.deliveryAddress.focus();
				alert("联系地址不能为空！");
				return false;
			}
			if(customerArea==null||customerArea==""){
				document.frm1.customerArea.focus();
				alert("区域不能为空！");
				return false;
			}

			window.location.href='search.html';
		}
	</script>
</head>
<body style="background: none">
	<div class="top-bar">
		<h1>新客户登记</h1>
		<div class="navbar navbar-inverse">
			<div class="button-bar">
				<input type="button" name="Submit" value="帮助" class="button"/>
				<input type="button" class="button" onclick="check()" value="保存"/>
			</div>
			<a href="../../index.html" target="_top">首页</a> 
			<a href="../index.html" target="_top">客户服务中心</a>
		</div>
	</div>
<div class="select-bar"/>
<form name="frm1" method="post">
	<div class="table">
		<img src="../../style/img/bg-th-left.gif" width="8" height="7" alt="" class="left" />
		<img src="../../style/img/bg-th-right.gif" width="7" height="7" alt="" class="right" />
		<table class="listing form" cellpadding="0" cellspacing="0">
			<tr>
				<th class="full" colspan="4">添加新客户(*号为必填项)</th>
			</tr>
			<tr>
				<td class="first">客户姓名(*)</td>
				<td><input type="text" name="customerName" class="text" /></td>
				<td>身份证编号(*)</td>
				<td class="last"><input name="idcard" type="text" class="text" /></td>
			</tr>
			<tr>
				<td class="first">工作单位</td>
				<td><input type="text" class="text" /></td>
				<td>座机(*)</td>
				<td class="last"><input name="officePhoneNumber" type="text" class="text" /></td>
			</tr>
			<tr class="bg">
				<td class="first">移动电话</td>
				<td><input type="text" class="text" /></td>
				<td>联系地址(*)</td>
				<td class="last"><input name="deliveryAddress" type="text" class="text" /></td>
			</tr>
			<tr>
				<td class="first">邮编</td>
				<td><input type="text" class="text" /></td>
				<td>E-mail</td>
				<td class="last"><input type="text" class="text" /></td>
			</tr>
			<tr>
				<td class="first">区域(*)</td>
				<td><input name="customerArea" type="text" class="text" /></td>
				<td></td>
				<td class="last"></td>
			</tr>
		</table>
</form>
	</div>
</body>
</html>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>


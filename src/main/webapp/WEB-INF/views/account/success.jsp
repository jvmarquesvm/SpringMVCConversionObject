<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Informação da Conta</title>
</head>
<body>
	<h3>Informação da Conta</h3>
	<table cellpadding="1" cellspacing="0" border="1">
		<tr>
			<td>Username</td>
			<td>${account.username }</td>
		</tr>
		<tr>
			<td>Nome Completo</td>
			<td>${account.fullname }</td>
		</tr>
		<tr>
			<td>Role Id</td>
			<td>${account.role.id }</td>
		</tr>
		<tr>
			<td>Role Name</td>
			<td>${account.role.name }</td>
		</tr>		
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registre sua Conta</title>
</head>
<body>
	<h3>Registre sua Conta</h3>
	<s:form method="post" commandName="account"
		action="${pageContext.request.contextPath }/account/save">
		<table cellpadding="1" cellspacing="1" border="0">
			<tr>
				<td>Username</td>
				<td><s:input path="username" /></td>
			</tr>
			<tr>
				<td>Nome Completo</td>
				<td><s:input path="fullname" /></td>
			</tr>
			<tr>
				<td>Role</td>
				<td><s:select path="role" items="${roles }" itemValue="id"
						itemLabel="name"></s:select></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>
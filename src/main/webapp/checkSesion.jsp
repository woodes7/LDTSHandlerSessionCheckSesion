<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html>
<head>

<%
//como toda sesion de inicio no esta iniciada la ponemos en fale sesioncorrecta
boolean sessionCorrecta = false;
//declaracion de la variable que mostrara el mensaje 
String resultado = "";

try {  //Comprueba si se ha iniciado o el atributo1 
	String acceso = session.getAttribute("attributo1").toString();
 	if (acceso.equals("1")){
 		//muestra mensaje
 		resultado = "<div style='color: white; font-weight: bold;'><h1>Inicio de sesión correcto</h1></div>";
 	};
 	//En caso de que no haya iniciado ninguna sesion
} catch (Exception e) {
	resultado = "<div style='color: darkred; font-weight: bold;'><h1>No ha iniciado ninguna sesión</h1></div>";
}
%>
<link rel="stylesheet" href="common/general.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h1>Session Checker</h1>
<hr/>
<hr/>
<%=resultado %>
<div id="contenedor1">
</div>

</body></html>
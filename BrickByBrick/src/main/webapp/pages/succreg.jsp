<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="user.model.UserTable " %>
<%@ page import="user.model.UserDAO" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/stylehome.css">

<title>Реєстрація пройшла успішно</title>
</head>
<body>
<%
UserDAO udao=new UserDAO();
UserTable user=new UserTable();

Long iD=(Long)session.getAttribute("id");
user=udao.findUser(iD);
%>

<div id = "header">
<span id = "head">
<img src="images/header4.png" style = "width:260px;height:70px;" > 
</span>
<span id = "navhead">
<a id = "reg" href = "<%= request.getContextPath() %>/editPageAction.action" >Редагувати</a>
<a id = "reg" href = "enter.htm" >Мої завдання</a>
<a id = "reg" href = "enter.htm" >Налаштування</a>
<a id = "reg" href="<%= request.getContextPath() %>/logoutAction.action" >Вихід</a>

</span>
</div>

<div id = "nav">

<img id = "ava" src = "images/rondo1.jpg">
<h1><%= user.getName()   %> <%= user.getSurname() %></h1>
<div id = "star">
<img src = "images/stars.png">
<img src = "images/stars.png">
<img src = "images/stars.png">
<img src = "images/stars.png">
<img src = "images/stars1.png">
</div>
<ul>
<li><span>Рік народження:</span> 1995</li>
<li><span>На сайті:</span> 19 років</li>
<li><span>Кількість виконаних завдань:</span> 100</li>
<a href = "job.htm"><img src = "images/1111.png">
<p>Запропонувати завдання</p>
</a>
</div>
<div id = "main">
<h1> Про себе </h1>
<p> <%= user.getAboutme() %>
</p>
<h1>Що я вмію робити?</h1>
<p>Я вмію місити тісто і розбивати собі голову об асфальт.
Ше в мене є свій паблік, тому я вмію писати всякі штучки, щоб лайкали </p>
<a href="jobs.htm">Виконані завдання</a>

</div>
<div id = "footer">
All rights reserved
</div>
  <script language="javascript">
        function autoResizeDiv()
        {
            document.getElementById('nav').style.height = window.innerHeight-120 +'px';
        }
        window.onresize = autoResizeDiv;
        autoResizeDiv();
    </script>
</body>
</html>
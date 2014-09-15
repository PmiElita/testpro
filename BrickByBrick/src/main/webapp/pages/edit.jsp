<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="user.model.UserTable " %>
<%@ page import="user.model.UserDAO" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<html lang="uk" >
<head>
<meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
<link rel="stylesheet" type="text/css" href="css/reg.css">
<link rel="shortcut icon" href="favico.png" type="image/x-icon" />


<title>Редагування</title>
</head>

<body>
<%
UserDAO udao=new UserDAO();
UserTable user=new UserTable();
Long iD=(Long)session.getAttribute("id");
session.setAttribute("chanegedata", "no");
user=udao.findUser(iD);

%>
<div id = "header">
<span id = "head">
<img src="images/header4.png" style = "width:260px;height:70px;" > 
</span>
</span>
<span id = "navhead">
<a id = "reg" href = "<%= request.getContextPath() %>/editPageAction.action" >Редагувати</a>
<a id = "reg" href = "<%= request.getContextPath() %>/personalPageAction.action" >Пресональна сторінка</a>
<a id = "reg" href = "enter.htm" >Налаштування</a>
<a id = "reg" href="<%= request.getContextPath() %>/logoutAction.action" >Вихід</a>

</span>
<div id="content">
<form action="changePersonalData" method="post" >
    <fieldset class="main">
      <label for="_name">Ім'я</label>
      <input type="text" name="name" id="_name"  value=<%=user.getName() %> />
	  <label for="_surname">Прізвище</label>
      <input type="text" name="surname" id="_surname" value=<%=user.getSurname() %>  />
	  <label for="_number">Телефон</label>
      <input type="text" name="phone" id="_phone" value=<%=user.getPhone() %>  />
      <label for="_aboutme">Про себе</label>
      <input type="text" name="aboutme" id="_aboutme" value=<%=user.getAboutme() %>  ></textarea>

       </fieldset>
    
    <fieldset class="dop">
      <label for="_email">E-mail</label>
      <input type="email" name="email" id="_email" value=<%=user.getEmail() %>  />
      
      
	   <label for="_password">Пароль</label>
      <input type="password" name="password" id="_password"  />
      
      <label for="_repeat">Повторіть пароль</label>
      <input type="password" name="repeat" id="_repeat"  />
      
      
      
    </fieldset>
    
    <form action="uploadPhoto" method="post" enctype="multipart/form-data">
      <label for="myFile">Upload your file</label>
      <input type="file" name="myFile" />
      <input type="submit" value="Upload"/>
   </form>
    
    
    <fieldset class="bottom">
      <button type="submit" id="ssubmit" >Зберегти зміни</button>

    </fieldset>
           <%
      String message="";
      if (session.getAttribute("changedata")=="yes") 
      {
    	  message="Зміни збережено";
    	  session.setAttribute("changedata", "no");
      }
 %>
     <label ><%=message %></label>
  </form>

</div>

<div id="footer">
© BrickByBrick
</div >
  <script language="javascript">
        function autoResizeDiv()
        {
            document.getElementById('content').style.height = window.innerHeight-190 +'px';
        }
        window.onresize = autoResizeDiv;
        autoResizeDiv();
    </script>
</body>
</html>
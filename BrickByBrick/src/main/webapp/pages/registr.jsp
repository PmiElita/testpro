<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="uk">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
<link rel="stylesheet" type="text/css" href="css/reg.css">
<link rel="shortcut icon" href="favico.png" type="image/x-icon" />

<title>BrickByBrick</title>
</head>
<body>
<div id = "header">
<span id = "head">
<img src="images/header4.png" style = "width:260px;height:70px;" > 
</span>
<div id="content">
<s:form action="addUserAction" >


    <fieldset class="main">
      <label for="_name">Ім'я</label>
      <input type="text" name="name" id="_name" placeholder="" required />
	  <label for="_surname">Прізвище</label>
      <input type="text" name="surname" id="_surname" placeholder="" required />
	  <label for="_number">Телефон</label>
      <input type="text" name="phone" id="_phone" placeholder="" required />
      

       </fieldset>
    
    <fieldset class="dop">
      <label for="_email">E-mail</label>
      <input type="email" name="email" id="_email" placeholder="" required />
      <label for="_aboutme">Про себе</label>
      <textarea type="text" name="aboutme" id="_aboutme" placeholder="" required ></textarea>
      
	   <label for="_password">Пароль</label>
      <input type="password" name="password" id="_password" required />
      
      <label for="_repeat">Повторіть пароль</label>
      <input type="password" name="repeat" id="_repeat" required />
      
      
      
    </fieldset>
    
   
    
    
    <fieldset class="bottom">
      <button type="submit" id="ssubmit" >Зареєструватися</button>
    </fieldset>
  </form>
</s:form>

 
</body>
</html>
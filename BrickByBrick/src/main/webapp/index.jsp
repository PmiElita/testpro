<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="shortcut icon" href="favico.png" type="image/x-icon" />
<script src="js/jquery-1.4.3.js" type="text/javascript"></script>
<script src="js/jquery-1.7.2.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title> Brick| Welcome</title>
</head>
<body>
<div id = "header">
<span id = "head">
<img src="images/header4.png" style = "width:260px;height:70px;" > 
</span>
<a id = "reg" href = "<%= request.getContextPath() %>/registrPageAction.action" >Реєстрація</a>
<a  class = "reg" >Вхід</a>
</div>
<div class = "popup" >
<form action="loginAction" method="post">
 <fieldset class="dop">
      <label for="_email">E-mail</label>
      <input type="email" name="email" id="_email" placeholder="" required />
      
      
	   <label for="_password">Пароль</label>
      <input type="password" name="password" id="_password" required />
	  </fieldset>
	  <fieldset class="bottom">
      <button type="submit" id="ssubmit" >Вхід</button>
    </fieldset>
	</form>
</div>
<div id = "content">
<div id = "work-er">
<h1>Ми - це чесний і легкий спосіб заробітку</h1>
</div >

<img src="images/info3.png">

</div>
<div id  = "text">
<h1>Популярні завдання</h1>
</div>
<div id = "example">
<ul>
<li ><a href = "index.jsp">
<img src = "images/rondo.jpg">
<span>I need to cry</span>
<p> My name is vova and i want to tell you about my childhood.
Я хочу, щоб мені відсосали. Умови оплати в лічку. P.S. Лише дівчата
</p>
</a>

</li>
<li><a href = "index.jsp">

<img src = "images/36.jpg"><span>I need to cry</span>
<p> My name is vova and i want to tell you about my childhood.
Я хочу, щоб мені відсосали. Умови оплати в лічку. P.S. Лише дівчата
</p>
</a></li>
<li><a href = "index.jsp">
<img src = "images/kolo.jpg">
<span>I need to cry</span>
<p> My name is vova and i want to tell you about my childhood
Я хочу, щоб мені відсосали. Умови оплати в лічку. P.S. Лише дівчата
</p>
</a></li>
<li><a href = "index.jsp">
<img src = "images/oleg.JPG">
<span>I need to cry</span>
<p> My name is vova and i want to tell you about my childhood.
Я хочу, щоб мені відсосали. Умови оплати в лічку. P.S. Лише дівчата
</p>
</a></li>
</ul>
</div>
<div id = "but">
<h1 style = "margin-left:100px;margin-top:30px;margin-bottom:10px;"> Хто ми?</h1>
<a href = "pages/registr.jsp">Реєестрація</a>
<p>Ми - це вебсайт, який дає можливість легко і швидко заробити гроші на  прогулянку з друзями, чи 
на похід у кіно з дівчиною. Маєте вільну годинку часу? Заходьте на наш сайт, пошукайте чим зайнятись 
і отримайте за елементарні завдання непогані гроші. Ми - це найлегший спосіб заробітку для людей,
які не хочуть тратити на тяжку роботу багато часу.</p>
<h2>Не маєш часу, щоб зробити деяку роботу?</h2>
<p>
Тоді наш вебсервіс саме для тебе! Нехай це зробить хтось з наших працівників.
Потрібно перенести меблі, забити поличку, збігати за пивом?
Кілька кліків і все готово, а Ви за цей час займаєтесь улюбленими справами!

</p> 
<div class = "hover"></div>
</div>
<div id = "footer">
All rights reserved
</div>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src = "js/script.js" type = "text/javascript"></script>
</body>
<script src = "js/script.js" type = "text/javascript"></script>

</body>
</html>
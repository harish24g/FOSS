<%-- 
    Document   : exam
    Created on : 3 Nov, 2020, 10:09:42 PM
    Author     : harish
--%>

<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>ONLINE TEST</title></head>
<body>
<center>
<h1>Online Python test</h1>
</center>
<form action="calculate.jsp" method="POST">
<div align="left">
<b>Register Number:</b> <input type="text" name="reg"></div>
<div align="left">
<b>Name:</b> <input type="text" name="name" size="50"><br>
</div>
<br><br>
<b>1. Tuples are immutable.</b><br/>
<input type="radio" name="group1" value="True">True
<input type="radio" name="group1" value="False">False<br><br>
<b>2. Python is an interpretor based language</b><br/>
<input type="radio" name="group2" value="True">True
<input type="radio" name="group2" value="False">False<br><br>
<b>3. a = {i: i * i for i in range(4)}<br>
 print (a)<br>
op:{0:0,1:1,2:4,3:9}</b><br/>
<input type="radio" name="group3" value="True">True
<input type="radio" name="group3" value="False">False<br><br>
<b>4. list1.add(list2) is a valid method?</b><br/>
<input type="radio" name="group4" value="True">True
<input type="radio" name="group4" value="False">False<br><br>
<b>5. __init__() is a called explicitly?</b><br/>
<input type="radio" name="group5" value="True">True
<input type="radio" name="group5" value="False">False<br><br>
<b>6. Not all functions need to have a return statement in
python?</b><br/>
<input type="radio" name="group6" value="True">True
<input type="radio" name="group6" value="False">False<br><br>
<b>7. To shuffle the list(say list1) shuffle(list1) is used?</b><br/>
<input type="radio" name="group7" value="True">True
<input type="radio" name="group7" value="False">False<br><br>
<b>8.list[-2] denoted the last third element in the list?</b><br/>
<input type="radio" name="group8" value="True">True
<input type="radio" name="group8" value="False">False<br><br>
<b>9. print("hello"*2) diplays hello2 ?</b><br/>
<input type="radio" name="group9" value="True">True
<input type="radio" name="group9" value="False">False<br><br>
<b>10.numpy is a module for mathematical implementation
?</b><br/>
<input type="radio" name="group10" value="True">True
<input type="radio" name="group10" value="False">False<br><br>
<br><br>
<center>
<input type="submit" value="Submit"><br><br>
</center>
</form>
</body>
</html>
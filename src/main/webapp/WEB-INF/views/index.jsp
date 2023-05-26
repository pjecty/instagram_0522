<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-22
  Time: 오후 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/resources/css/main.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<html>
<head>
    <title>instargram</title>
</head>
<body>
<div id="mainLeft" style=" float: left;
     position: relative; left:470px; top:150px; width: 30%">
    <img src="/resources/img/instar1.PNG" alt="">
</div>
<div id="mainRight" style="float: left;
        position: relative; left: 330px; top: 180px;
      border: 3px solid gainsboro; width: 22%; height: 450px;">
    <form action="/login" method="post" enctype="multipart/form-data">
        <div id="mainLogin">
            <a href="/"><img src="/resources/img/instar2.PNG" alt="" style="display:block; margin:auto;margin-top: 40px;"></a><br>
            <input type="text" name="memberEmail" placeholder="이메일을 입력하세요"> <br>
            <input type="text" name="memberPassword" placeholder="비밀번호를 입력하세요"> <br>
            <input type="submit" value="로그인" style="background-color: dodgerblue; color: white; border-radius: 12px; font-size: 16px;" ><br>
            <h4 style="text-align: center">비밀번호를 잊으셨나요?</h4>
            </form>
        </div>
        </div>
<form action="/saveform" method="get" enctype="multipart/form-data" style="float: left;
      position: relative; left: -95px; top: 660px;
      border: 3px solid gainsboro; width: 22%; height: 90px; ">
    <div id="mainBottom">
        <input type="submit" value="회원가입" style="background-color: dodgerblue; color: white; position: relative; top: 20px; border-radius: 12px; font-size: 16px;">
</form>
</div>
<%@include file="./component/footer.jsp"%>
</body>
</html>

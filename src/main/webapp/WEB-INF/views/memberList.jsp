<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-23
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/resources/css/main.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <title>[관리자모드]instargram ⊙ 회원목록</title>
</head>
<body>
<div id="memberList" style="position: relative; left: 300px; top: 70px;
      border: 3px solid gainsboro; width: 70%; height: 800px;">
  <a href="/"><img src="/resources/img/instar2.PNG" alt="" style="display:block; margin:auto; margin-top: 40px;"></a><br>
  <div id="memberListAdmin">
  <table style="position: relative; top: 20px; left: -10px;">
    <tr style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">
      <th style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">회원번호</th>
      <th style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">닉네임</th>
      <th style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">이메일</th>
      <th style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">비밀번호</th>
      <th style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">이름</th>
      <th style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">전화번호</th>
    </tr>
    <c:forEach items="${memberList}" var="member">
      <tr>
        <td style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">${member.id}</td>
        <td style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">${member.memberNickName}</td>
        <td style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">${member.memberEmail}</td>
        <td style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">${member.memberPassword}</td>
        <td style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">${member.memberName}</td>
        <td style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;
    font-size: 20px;">${member.memberMobile}</td>
        <td style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;"><button onclick="member_detailAdmin('${member.memberEmail}')"
                                          style="color: white; font-size: 20px; background-color: dodgerblue;">조회</button></td>
        <td style="text-align: center;
    padding: 15px;
    border: 3px solid gainsboro;"><button onclick="member_deleteAdmin('${member.id}')"
                                          style="color: white; font-size: 20px; background-color: dodgerblue;">삭제</button></td>
      </tr>
    </c:forEach>
  </table>
  </div>
</div>
<script>
  const member_detailAdmin = (email) => {
    location.href = "/memberDetailAdmin?memberEmail="+email;
  }
  const member_deleteAdmin = (id) => {
    location.href = "/delete?id="+id;
  }
</script>
</body>
</html>

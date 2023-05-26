<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-22
  Time: 오후 4:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>[관리자모드]회원상세정보 ⊙ instagram </title>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/resources/css/main.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
  <script>
    function showImage(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
          var imageElement = document.getElementById('uploadedImage');
          imageElement.src = e.target.result;
        };

        reader.readAsDataURL(input.files[0]);
      }
    }
  </script>
</head>
<body>
<div id="memberSave" style="
        position: relative; left: 650px; top: 70px;
      border: 3px solid gainsboro; width: 30%; height: 950px;">
  <form action="/updateA" method="post" name="updateForm" enctype="multipart/form-data">
    <div id="mainLogin">
      <img src="/resources/img/instar2.PNG" alt="" style="display:block; margin:auto; margin-top: 40px;"><br>
      <img id="uploadedImage" src="/resources/img/profile.png" alt="" style="max-width: 150px; max-height: 150px;
             border-radius: 80px; display:block; margin:auto;"><br>
      <input type="file" name="proFile" multiple onchange="showImage(this);"> <br>
      <input type="text" name="id" value="${member.id}" placeholder="회원번호"> <br>
      <input type="text" name="memberNickName" value="${member.memberNickName}" placeholder="닉네임"> <br>
      <input type="text" name="memberEmail" value="${member.memberEmail}" placeholder="이메일"> <br>
      <input type="text" name="memberPassword"  value="${member.memberPassword}" placeholder="비밀번호"> <br>
      <input type="text" name="memberName" value="${member.memberName}" placeholder="이름"> <br>
      <input type="text" name="memberMobile" value="${member.memberMobile}" placeholder="전화번호"> <br>
      <input type="text" name="memberCreatedDate" value="<fmt:formatDate value="${member.memberCreatedDate}" pattern="yyyy-MM-dd HH:mm:ss" />">
      <input type="button" onclick="update()" value="수정하기" style="background-color: dodgerblue; color: white; border-radius: 12px; font-size: 16px;" ><br>
    </div>
  </form>
</div>
</body>
<script>
  const update = () => {
    document.updateForm.submit();
    }
</script>
</html>

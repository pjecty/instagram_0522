<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-22
  Time: 오후 4:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>가입하기 ⊙ instagram </title>
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
      border: 3px solid gainsboro; width: 30%; height: 840px;">
    <form action="save" method="post" enctype="multipart/form-data">
        <div id="mainLogin">
            <img src="/resources/img/instar2.PNG" alt="" style="display:block; margin:auto; margin-top: 40px;"><br>
            <img id="uploadedImage" src="/resources/img/profile.png" alt="" style="max-width: 150px; max-height: 150px;
             border-radius: 80px; display:block; margin:auto;"><br>
            <input type="file" name="proFile" multiple onchange="showImage(this);"> <br>
            <input type="text" name="memberNickName" placeholder="닉네임을 입력하세요"> <br>
            <input type="text" name="memberEmail" placeholder="이메일을 입력하세요"> <br>
            <input type="text" name="memberPassword" placeholder="비밀번호를 입력하세요"> <br>
            <input type="text" name="memberName" placeholder="이름을 입력하세요"> <br>
            <input type="text" name="memberMobile" placeholder="전화번호를 입력하세요"> <br>
            <input type="submit" value="회원가입" style="background-color: dodgerblue; color: white; border-radius: 12px; font-size: 16px;" ><br>
    </form>
</div>
</body>
</html>

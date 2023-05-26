<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-26
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게시글업로드 ⊙ instagram </title>
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
<div id="boardSave" style="
      border: 3px solid gainsboro; width: 500px; height: 840px;">
    <form action="boardSave" method="post" enctype="multipart/form-data" style="margin-top: 50px;">
        <div id="mainLogin">
            <img src="/resources/img/instar2.PNG" alt="" style="display:block; margin:auto; margin-top: 40px;"><br>
            <img id="uploadedImage" src="/resources/img/boardSave.PNG" alt="" style="max-width: 200px; max-height: 200px;
             display:block; margin:auto;"><br>
            <div>
            <button type="button" onclick="document.getElementById('boardFile').click()" style="display:block;
                    top:50px;
                    margin:auto;
                    width: 300px;
                    height: 50px;
                    border-radius: 5px;
                    border-color: gainsboro; background-color: dodgerblue; color: white">사진가져오기</button>
            <input type="file" id="boardFile" name="boardFile" multiple onchange="showImage(this);" style="display: none;">
            </div>
            <div style="margin-top: 50px">
                <input type="text" name="boardTitle" placeholder="제목을 입력하세요"> <br>
            <textarea name="boardContents" cols="30" rows="10" placeholder="내용을 작성해주세요"></textarea> <br>
            <input type="submit" value="게시글 작성" style="background-color: dodgerblue; color: white; border-radius: 12px; font-size: 16px;" ><br>
            </div>
        </div>
    </form>
</div>
</body>
</html>

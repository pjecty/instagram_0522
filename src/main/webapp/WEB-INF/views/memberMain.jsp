<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-23
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <title>instargram ⊙ memberMain</title>
</head>
<body>
<div id="memberMain" style="position: relative; left: 550px; top: 40px;
      border: 3px solid gainsboro; width: 40%; height: 100%;">
    <h1 style="position: relative; left: 70px; top: 20px; font-size: 40px;"> ${sessionScope.loginEmail}</h1>
    <div style="display: flex; position: relative; left: 600px; top: -55px;">
<%--        <a href="boardSave"><img src="/resources/img/boardContents.PNG" alt="" style="width: 50px; height: 50px; display: block;"></a>--%>
    <img id="boardSave" src="/resources/img/boardContents.PNG" onclick="javascript:boardSave();" style="cursor:pointer; width: 50px; height: 50px; display: block;">
        <a href="/"><img src="/resources/img/logout.PNG" alt="" style="margin-left: 10px; width: 50px; height: 50px; display: block;"></a>
    </div>
    <img src="/resources/img/profile.png" alt="" style=" position: relative; left: 70px; top: 50px; display:block; float: left;">
    <div id="mainList">
        <table>
            <tr>
                <th>게시물</th>
                <th>팔로워</th>
                <th>팔로잉</th>
            </tr>
            <tr>
                <td>0</td>
                <td>0</td>
                <td>0</td>
            </tr>
        </table>
    </div>
    <div id="buttonL" style="position: relative; left: 50px; top: 120px;">
        <button onclick="memberDetail('${member.memberEmail}')" style="float: left; border-radius: 30px; width: 310px; padding: 15px; font-size: 25px;
">프로필 편집</button>
        <div style="background-color: white; float: left; width: 30px; height: 30px"></div>
        <button style="float: left; border-radius: 30px; width: 310px; padding: 15px; font-size: 25px;">프로필 공유</button>
    </div>

</div>


    <div id="board">
        <table>
        <c:if test="${member.fileAttached == 1}">
            <tr>
                <td>
                    <c:forEach items="${memberFileList}" var="boardFile">
                        <img src="${pageContext.request.contextPath}/upload/${memberFile.storedFileName}"
                             alt="" width="100" height="100">
                    </c:forEach>
                </td>
            </tr>
        </c:if>
        </table>
    </div>



</div>

</body>
<script>
    const memberDetail = () => {
        const memberEmail = '${sessionScope.loginEmail}';
        location.href = "/member?memberEmail="+memberEmail;
    }

    function boardSave() {
        var screenWidth = window.screen.width;
        var screenHeight = window.screen.height;
        var windowWidth = 550;
        var windowHeight = 800;
        var left = (screenWidth - windowWidth) / 2;
        var top = (screenHeight - windowHeight) / 2;

        window.open("boardSave", "boardSave", "width=550,height=800,left=" + left + ",top=" + top);
    }

</script>
</html>

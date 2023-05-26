<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/resources/css/main.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<div id="footer">

</div>
<script>
    const date = new Date();
    console.log(date);
    console.log(date.getFullYear());
    const footer = document.getElementById("footer");
    footer.innerHTML = "<p>&copy; " + date.getFullYear() + "&nbsp; Instagram from Meta </p>";
</script>

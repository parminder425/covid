<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<div align="center">
<jsp:include page="header.jsp"/>
    <font color="green">${successMessage}</font>
    <font color="red">${errorMessage}</font>

    <form method="post" action="welcome">
        Name : <input type="text" name="username" placeholder="Username"/><br/><br/>
        Password : <input type="password" name="password" placeholder="Password"/><br/><br/>
        <input type="submit"/>
    </form>
    <br/><br/>
    <a href="/">Click here to register</a>
</div>
</body>
</html>
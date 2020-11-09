<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
</head>
<body>
<div align="center">
<jsp:include page="header.jsp"/>
    <font color="green">${successMessage}</font>
    <font color="red">${errorMessage}</font>

    <form action="register" action="post">
        Email : <input type="text" name="email" placeholder="Email" maxlength="50"/><br/><br/>
        Username : <input type="text" name="username" placeholder="Username" maxlength="50"/><br/><br/>
        Password : <input type="password" name="password" placeholder="Password" maxlength="50"/><br/><br/>
        <input type="submit"/><br/><br/>
    </form>
    Already registered
    <a href="/login">Login here</a>
</div>
</body>
</html>
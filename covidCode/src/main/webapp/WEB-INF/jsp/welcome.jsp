<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>E-User Wallet System</title>
</head>
<body>

<div align="center">
<jsp:include page="header.jsp"/>
    <font color="green">${successMessage}</font>
    <font color="red">${errorMessage}</font>
    Login User : ${sessionScope.user.username }
    <br><br>
    Wallet Amount : ${walletAmount.amount}
    <br> <br>
    Rewards Amount : ${walletAmount.rewardAmount}
    <br> <br>
    <a href="/addMoney">Add Money</a><br> <br>
    <a href="/payMoney">Pay Money</a><br> <br>

    <a href="/passbook">View Passbook</a><br>


    <jsp:include page="footer.jsp"/>

</div>
</body>
</html>
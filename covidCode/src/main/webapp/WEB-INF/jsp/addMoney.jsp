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

    <form action="addWalletMoney" method="post">

        User : ${sessionScope.user.username }
        <br> <br>
        Wallet Amount : ${walletAmount.amount}
        <br> <br>
        Rewards Amount : ${walletAmount.rewardAmount}
        <br> <br>
        <input type="number" name="amount" min="1" max="100000"
                  step="1"
                  onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                  title="Numbers only"/>
        <br> <br>
        <input type="submit" value="Add Money"/>
    </form>
    <br> <br>
    <a href="${pageContext.request.contextPath }/welcome"><< Back</a>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
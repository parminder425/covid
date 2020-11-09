<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>E-User Wallet System</title>
</head>
<body>

<div align="center">
<jsp:include page="header.jsp"/>
    <table border="1" cellpadding="5">
    <c:set var="count" value="0" scope="page" />

        <caption><h2>${transactionHeading}</h2></caption>
        <tr>
            <th>Sr No.</th>
            <th>Transaction For</th>
            <th>Transaction Type</th>
            <th>Date</th>
            <th>Amount</th>
        </tr>
        <c:forEach var="transaction" items="${transactions}">
            <c:set var="count" value="${count + 1}" scope="page"/>
            <tr>
                <td><c:out value="${count}"/></td>
                <td><c:out value="${transaction.transactionFor}"/></td>
                <td><c:out value="${transaction.transactionType}"/></td>
                <td><c:out value="${transaction.transactionDate}"/></td>
                <td><c:out value="${transaction.transactionAmount}"/></td>
            </tr>
        </c:forEach>
    </table>
    <br> <br>
    <a href="${pageContext.request.contextPath }/rewardHistory">Rewards Passbook</a>  |   <a href="${pageContext.request.contextPath }/walletHistory">Wallet Passbook</a>
    <br> <br>
    <a href="${pageContext.request.contextPath }/welcome"><< Back</a>
    <br>
    <jsp:include page="footer.jsp"/>

</div>
</body>
</html>
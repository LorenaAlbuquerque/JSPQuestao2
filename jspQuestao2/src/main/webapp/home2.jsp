<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String palavra = request.getParameter("palavra");

boolean Palindromo = true;
int comprimento = palavra.length();

for (int i = 0; i < comprimento / 2; i++) {
    if (palavra.charAt(i) != palavra.charAt(comprimento - i - 1)) {
        Palindromo = false;
        break;
    }
}

if (Palindromo) {
    out.print("A palavra " + request.getParameter("palavra") + " é um palíndromo.");
} else {
    out.print("A palavra " + request.getParameter("palavra") + " não é um palíndromo.");
}
%>

</body>
</html>
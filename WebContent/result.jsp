<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleForm/style.css">
    <title>Student Survey Form</title>
</head>
<body>
    <div class="content-wrapper">
        <header>
            <h2>Tư vấn tuyển sinh đại học</h2>
        </header>
        <section class="teachersContainer">
                
        <table>
            <thead>
                <td><h3>Kết quả</h3></td>
            </thead>

            <tbody>
                <c:forEach var="e" items="${list}">
                    <tr>
                        <td>${e.ketQua}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        </section>
    </div>
</body>
</html>
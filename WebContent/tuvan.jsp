<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="css/styleForm/style.css">
  </head>
    <title>Student Survey Form</title>
</head>
<body>
    <div class="content-wrapper">
        <header>
            <h2>Tư vấn tuyển sinh đại học</h2>
        </header>
        <section class="struggleConatiner">    
            <article class="trQuestion">
                <h4 style="text-align: center;">Bạn thuộc nhóm người: <span>${sessionScope.c.nhom_nguoi.ten}</span></h4>
            </article>
        </section>
        <form  action="/TuVanTuyenSinhDaiHoc/consult" method="post">
            <section class="struggleConatiner">    
                <article class="trQuestion">
                    <p>Chọn Khối thi</p>
                    <select name="kt" class="form-select" aria-label="Default select example">
                        <c:forEach var="e" items="${listKt}">
                            <option value="${e.id}">${e.ten}</option>
                        </c:forEach>
                    </select>
                </article>
            </section>
            <section class="struggleConatiner">
                <article class="trQuestion">
                    <p>Chọn Học Phí</p>
                    <select name="hp" class="form-select" aria-label="Default select example">
                        <c:forEach var="e" items="${listHp}">
                            <option value="${e.id}">${e.loai}</option>
                        </c:forEach>
                    </select>
                </article>
            </section>
            <section class="struggleConatiner"> 
                <article class="trQuestion">
                    <p>Chọn Khoảng điểm dự kiến</p>
                    <select name="diem" class="form-select" aria-label="Default select example">
                        <c:forEach var="e" items="${listDiem}">
                            <option value="${e.id}">${e.loai}</option>
                        </c:forEach>
                    </select>
                </article>
            </section>
            <section class="struggleConatiner"> 
                <article class="trQuestion">
                    <p>Chọn Khu vực thi</p>
                    <select name="kv" class="form-select" aria-label="Default select example">
                        <c:forEach var="e" items="${listKv}">
                            <option value="${e.id}">${e.ten}</option>
                        </c:forEach>
                    </select>
                </article>
            </section>

            <button type="submit" class="btn btn-primary btn-lg">Submit</button>        
        </form>
    </div>
</body>
</html>
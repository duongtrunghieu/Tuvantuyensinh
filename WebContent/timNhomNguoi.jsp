<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="css/styleForm/style.css">
    <title>Student Survey Form</title>
</head>
<body>
    <div class="content-wrapper">
        <header>
            <h2>Tư vấn tuyển sinh đại học</h2>
        </header>

        <form action="/TuVanTuyenSinhDaiHoc/timNhomNguoi" method="post">
            <!-- To-do list: All the questions. Text boxes, check boxes, radio buttons, text areas, submit button -->

            <section class="teachersContainer">
                <h3>Nhóm câu hỏi 1</h3>
                
                <article class="trQuestion">
                    <p>Tôi có tính tự lập</p><br>
                    <input type="radio" id="tt1" name="tt1" value=0><label for="tt1">0</label>
                    <br><br>
                    <input type="radio" id="tt1" name="tt1" value=1><label for="tt1">1</label>
                    <br><br>
                    <input type="radio" id="tt1" name="tt1" value=2><label for="tt1">2</label>
                    <br><br>
                    <input type="radio" id="tt1" name="tt1" value=3><label for="tt1">3</label>
                    <br><br>
                    <input type="radio" id="tt1" name="tt1" value=4><label for="tt1">4</label>
                    <br><br>
                </article>
                
                <article class="trQuestion">
                    <p>Tôi suy nghĩ thực tế</p><br>
                    <input type="radio" id="tt2" name="tt2" value=0><label for="tt2">0</label>
                    <br><br>
                    <input type="radio" id="tt2" name="tt2" value=1><label for="tt2">1</label>
                    <br><br>
                    <input type="radio" id="tt2" name="tt2" value=2 checked><label for="tt2">2</label>
                    <br><br>
                    <input type="radio" id="tt2" name="tt2" value=3><label for="tt2">3</label>
                    <br><br>
                    <input type="radio" id="tt2" name="tt2" value=4><label for="tt2">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thích tìm hiểu khám phá nhiều vấn đề mới</p><br>
                    <input type="radio" id="tt3" name="tt3" value=0><label for="tt3">0</label>
                    <br><br>
                    <input type="radio" id="tt3" name="tt3" value=1><label for="tt3">1</label>
                    <br><br>
                    <input type="radio" id="tt3" name="tt3" value=2><label for="tt3">2</label>
                    <br><br>
                    <input type="radio" id="tt3" name="tt3" value=3 checked><label for="tt3">3</label>
                    <br><br>
                    <input type="radio" id="tt3" name="tt3" value=4><label for="tt3">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi có khả năng phân tích vấn đề</p><br>
                    <input type="radio" id="tt4" name="tt4" value=0><label for="tt4">0</label>
                    <br><br>
                    <input type="radio" id="tt4" name="tt4" value=1><label for="tt4">1</label>
                    <br><br>
                    <input type="radio" id="tt4" name="tt4" value=2><label for="tt4">2</label>
                    <br><br>
                    <input type="radio" id="tt4" name="tt4" value=3 checked><label for="tt4">3</label>
                    <br><br>
                    <input type="radio" id="tt4" name="tt4" value=4><label for="tt4">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi là người dễ xúc động</p><br>
                    <input type="radio" id="tt5" name="tt5" value=0><label for="tt5">0</label>
                    <br><br>
                    <input type="radio" id="tt5" name="tt5" value=1><label for="tt5">1</label>
                    <br><br>
                    <input type="radio" id="tt5" name="tt5" value=2><label for="tt5">2</label>
                    <br><br>
                    <input type="radio" id="tt5" name="tt5" value=3 checked><label for="tt5">3</label>
                    <br><br>
                    <input type="radio" id="tt5" name="tt5" value=4><label for="tt5">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi có óc tưởng tượng phong phú</p><br>
                    <input type="radio" id="tt6" name="tt6" value=0><label for="tt6">0</label>
                    <br><br>
                    <input type="radio" id="tt6" name="tt6" value=1><label for="tt6">1</label>
                    <br><br>
                    <input type="radio" id="tt6" name="tt6" value=2><label for="tt6">2</label>
                    <br><br>
                    <input type="radio" id="tt6" name="tt6" value=3 checked><label for="tt6">3</label>
                    <br><br>
                    <input type="radio" id="tt6" name="tt6" value=4><label for="tt6">4</label>
                    <br><br>
                </article>
            </section>

            <section class="struggleConatiner">
                <h3>Nhóm câu hỏi 2</h3>
                
                <article class="trQuestion">
                    <p>Tôi là người thân thiện, hay giúp đỡ người khác</p><br>
                    <input type="radio" id="tt7" name="tt7" value=0><label for="tt7">0</label>
                    <br><br>
                    <input type="radio" id="tt7" name="tt7" value=1><label for="tt7">1</label>
                    <br><br>
                    <input type="radio" id="tt7" name="tt7" value=2 checked><label for="tt7">2</label>
                    <br><br>
                    <input type="radio" id="tt7" name="tt7" value=3><label for="tt7">3</label>
                    <br><br>
                    <input type="radio" id="tt7" name="tt7" value=4><label for="tt7">4</label>
                    <br><br>
                </article>
                
                <article class="trQuestion">
                    <p>Tôi thích gặp gỡ, làm việc với con người</p><br>
                    <input type="radio" id="tt8" name="tt8" value=0><label for="tt8">0</label>
                    <br><br>
                    <input type="radio" id="tt8" name="tt8" value=1><label for="tt8">1</label>
                    <br><br>
                    <input type="radio" id="tt8" name="tt8" value=2 checked><label for="tt8">2</label>
                    <br><br>
                    <input type="radio" id="tt8" name="tt8" value=3><label for="tt8">3</label>
                    <br><br>
                    <input type="radio" id="tt8" name="tt8" value=4><label for="tt8">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi là người có tính phiêu lưu, mạo hiểm</p><br>
                    <input type="radio" id="tt9" name="tt9" value=0><label for="tt9">0</label>
                    <br><br>
                    <input type="radio" id="tt9" name="tt9" value=1><label for="tt9">1</label>
                    <br><br>
                    <input type="radio" id="tt9" name="tt9" value=2 checked><label for="tt9">2</label>
                    <br><br>
                    <input type="radio" id="tt9" name="tt9" value=3><label for="tt9">3</label>
                    <br><br>
                    <input type="radio" id="tt9" name="tt9" value=4><label for="tt9">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi có tính quyết đoán</p><br>
                    <input type="radio" id="tt10" name="tt10" value=0><label for="tt10">0</label>
                    <br><br>
                    <input type="radio" id="tt10" name="tt10" value=1><label for="tt10">1</label>
                    <br><br>
                    <input type="radio" id="tt10" name="tt10" value=2><label for="tt10">2</label>
                    <br><br>
                    <input type="radio" id="tt10" name="tt10" value=3 checked><label for="tt10">3</label>
                    <br><br>
                    <input type="radio" id="tt10" name="tt10" value=4><label for="tt10">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi là người có đầu óc sắp xếp, tổ chức</p><br>
                    <input type="radio" id="tt11" name="tt11" value=0><label for="tt11">0</label>
                    <br><br>
                    <input type="radio" id="tt11" name="tt11" value=1><label for="tt11">1</label>
                    <br><br>
                    <input type="radio" id="tt11" name="tt11" value=2 checked><label for="tt11">2</label>
                    <br><br>
                    <input type="radio" id="tt11" name="tt11" value=3><label for="tt11">3</label>
                    <br><br>
                    <input type="radio" id="tt11" name="tt11" value=4><label for="tt11">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi có tính cẩn thận</p><br>
                    <input type="radio" id="tt12" name="tt12" value=0><label for="tt12">0</label>
                    <br><br>
                    <input type="radio" id="tt12" name="tt12" value=1><label for="tt12">1</label>
                    <br><br>
                    <input type="radio" id="tt12" name="tt12" value=2><label for="tt12">2</label>
                    <br><br>
                    <input type="radio" id="tt12" name="tt12" value=3 checked><label for="tt12">3</label>
                    <br><br>
                    <input type="radio" id="tt12" name="tt12" value=4><label for="tt12">4</label>
                    <br><br>
                </article>
            </section>

            <section class="struggleConatiner">
                <h3>Nhóm câu hỏi 3</h3>
                
                <article class="trQuestion">
                    <p>Tôi là người thích nghi với môi trường mới</p><br>
                    <input type="radio" id="tt13" name="tt13" value=0><label for="tt13">0</label>
                    <br><br>
                    <input type="radio" id="tt13" name="tt13" value=1><label for="tt13">1</label>
                    <br><br>
                    <input type="radio" id="tt13" name="tt13" value=2 checked><label for="tt13">2</label>
                    <br><br>
                    <input type="radio" id="tt13" name="tt13" value=3><label for="tt13">3</label>
                    <br><br>
                    <input type="radio" id="tt13" name="tt13" value=4><label for="tt13">4</label>
                    <br><br>
                </article>
                
                <article class="trQuestion">
                    <p>Tôi có thể vận hành, điều khiển các máy móc thiết bị</p><br>
                    <input type="radio" id="tt14" name="tt14" value=0><label for="tt14">0</label>
                    <br><br>
                    <input type="radio" id="tt14" name="tt14" value=1><label for="tt14">1</label>
                    <br><br>
                    <input type="radio" id="tt14" name="tt14" value=2 checked><label for="tt14">2</label>
                    <br><br>
                    <input type="radio" id="tt14" name="tt14" value=3><label for="tt14">3</label>
                    <br><br>
                    <input type="radio" id="tt14" name="tt14" value=4><label for="tt14">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi biết suy nghĩ một cách mạch lạc, chặt chẽ</p><br>
                    <input type="radio" id="tt15" name="tt15" value=0><label for="tt15">0</label>
                    <br><br>
                    <input type="radio" id="tt15" name="tt15" value=1><label for="tt15">1</label>
                    <br><br>
                    <input type="radio" id="tt15" name="tt15" value=2 checked><label for="tt15">2</label>
                    <br><br>
                    <input type="radio" id="tt15" name="tt15" value=3><label for="tt15">3</label>
                    <br><br>
                    <input type="radio" id="tt15" name="tt15" value=4><label for="tt15">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thích thực hiện các thí nghiệm hay nghiên cứu</p><br>
                    <input type="radio" id="tt16" name="tt16" value=0><label for="tt16">0</label>
                    <br><br>
                    <input type="radio" id="tt16" name="tt16" value=1><label for="tt16">1</label>
                    <br><br>
                    <input type="radio" id="tt16" name="tt16" value=2><label for="tt16">2</label>
                    <br><br>
                    <input type="radio" id="tt16" name="tt16" value=3 checked><label for="tt16">3</label>
                    <br><br>
                    <input type="radio" id="tt16" name="tt16" value=4><label for="tt16">4</label>
                    <br><br>
                </article>  

                <article class="trQuestion">
                    <p>Tôi có khả năng thuyết trình, diễn xuất</p><br>
                    <input type="radio" id="tt17" name="tt17" value=0><label for="tt17">0</label>
                    <br><br>
                    <input type="radio" id="tt17" name="tt17" value=1><label for="tt17">1</label>
                    <br><br>
                    <input type="radio" id="tt17" name="tt17" value=2><label for="tt17">2</label>
                    <br><br>
                    <input type="radio" id="tt17" name="tt17" value=3 checked><label for="tt17">3</label>
                    <br><br>
                    <input type="radio" id="tt17" name="tt17" value=4><label for="tt17">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thích sự tự do, không theo những quy định , quy tắc</p><br>
                    <input type="radio" id="tt18" name="tt18" value=0><label for="tt18">0</label>
                    <br><br>
                    <input type="radio" id="tt18" name="tt18" value=1 checked><label for="tt18">1</label>
                    <br><br>
                    <input type="radio" id="tt18" name="tt18" value=2><label for="tt18">2</label>
                    <br><br>
                    <input type="radio" id="tt18" name="tt18" value=3><label for="tt18">3</label>
                    <br><br>
                    <input type="radio" id="tt18" name="tt18" value=4><label for="tt18">4</label>
                    <br><br>
                </article>
             
                <h3>Nhóm câu hỏi 4</h3>
                
                <article class="trQuestion">
                    <p>Tôi là người lịch sự, tử tế</p><br>
                    <input type="radio" id="tt19" name="tt19" value=0><label for="tt19">0</label>
                    <br><br>
                    <input type="radio" id="tt19" name="tt19" value=1><label for="tt19">1</label>
                    <br><br>
                    <input type="radio" id="tt19" name="tt19" value=2 checked><label for="tt19">2</label>
                    <br><br>
                    <input type="radio" id="tt19" name="tt19" value=3><label for="tt19">3</label>
                    <br><br>
                    <input type="radio" id="tt19" name="tt19" value=4><label for="tt19">4</label>
                    <br><br>
                </article>
                
                <article class="trQuestion">
                    <p>Tôi thích khuyên bảo, huấn luyện hay giảng giái cho người khác</p><br>
                    <input type="radio" id="tt20" name="tt20" value=0><label for="tt20">0</label>
                    <br><br>
                    <input type="radio" id="tt20" name="tt20" value=1><label for="tt20">1</label>
                    <br><br>
                    <input type="radio" id="tt20" name="tt20" value=2 checked><label for="tt20">2</label>
                    <br><br>
                    <input type="radio" id="tt20" name="tt20" value=3><label for="tt20">3</label>
                    <br><br>
                    <input type="radio" id="tt20" name="tt20" value=4><label for="tt20">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi là người năng động</p><br>
                    <input type="radio" id="tt21" name="tt21" value=0><label for="tt21">0</label>
                    <br><br>
                    <input type="radio" id="tt21" name="tt21" value=1><label for="tt21">1</label>
                    <br><br>
                    <input type="radio" id="tt21" name="tt21" value=2><label for="tt21">2</label>
                    <br><br>
                    <input type="radio" id="tt21" name="tt21" value=3 checked><label for="tt21">3</label>
                    <br><br>
                    <input type="radio" id="tt21" name="tt21" value=4><label for="tt21">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi có khả năng diễn đạt, tranh luận, và thuyết phục người khác</p><br>
                    <input type="radio" id="tt22" name="tt22" value=0><label for="tt22">0</label>
                    <br><br>
                    <input type="radio" id="tt22" name="tt22" value=1><label for="tt22">1</label>
                    <br><br>
                    <input type="radio" id="tt22" name="tt22" value=2><label for="tt22">2</label>
                    <br><br>
                    <input type="radio" id="tt22" name="tt22" value=3 checked><label for="tt22">3</label>
                    <br><br>
                    <input type="radio" id="tt22" name="tt22" value=4><label for="tt22">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi là người chu đáo, chính xác và đáng tin cậy</p><br>
                    <input type="radio" id="tt23" name="tt23" value=0><label for="tt23">0</label>
                    <br><br>
                    <input type="radio" id="tt23" name="tt23" value=1><label for="tt23">1</label>
                    <br><br>
                    <input type="radio" id="tt23" name="tt23" value=2><label for="tt23">2</label>
                    <br><br>
                    <input type="radio" id="tt23" name="tt23" value=3 checked><label for="tt23">3</label>
                    <br><br>
                    <input type="radio" id="tt23" name="tt23" value=4><label for="tt23">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thích công việc tính toán sổ sách, ghi chép số liệu</p><br>
                    <input type="radio" id="tt24" name="tt24" value=0><label for="tt24">0</label>
                    <br><br>
                    <input type="radio" id="tt24" name="tt24" value=1><label for="tt24">1</label>
                    <br><br>
                    <input type="radio" id="tt24" name="tt24" value=2><label for="tt24">2</label>
                    <br><br>
                    <input type="radio" id="tt24" name="tt24" value=3 checked><label for="tt24">3</label>
                    <br><br>
                    <input type="radio" id="tt24" name="tt24" value=4><label for="tt24">4</label>
                    <br><br>
                </article>
            </section>

            <section class="struggleConatiner">
                <h3>Nhóm câu hỏi 5</h3>
                
                <article class="trQuestion">
                    <p>Tôi làm các công việc thủ công như gấp giấy, đan, móc</p><br>
                    <input type="radio" id="tt25" name="tt25" value=0><label for="tt25">0</label>
                    <br><br>
                    <input type="radio" id="tt25" name="tt25" value=1><label for="tt25">1</label>
                    <br><br>
                    <input type="radio" id="tt25" name="tt25" value=2><label for="tt25">2</label>
                    <br><br>
                    <input type="radio" id="tt25" name="tt25" value=3 checked><label for="tt25">3</label>
                    <br><br>
                    <input type="radio" id="tt25" name="tt25" value=4><label for="tt25">4</label>
                    <br><br>
                </article>
                
                <article class="trQuestion">
                    <p>Tôi thích tiếp xúc với thiên nhiên, động vật, cây cỏ</p><br>
                    <input type="radio" id="tt26" name="tt26" value=0><label for="tt26">0</label>
                    <br><br>
                    <input type="radio" id="tt26" name="tt26" value=1><label for="tt26">1</label>
                    <br><br>
                    <input type="radio" id="tt26" name="tt26" value=2><label for="tt26">2</label>
                    <br><br>
                    <input type="radio" id="tt26" name="tt26" value=3 checked><label for="tt26">3</label>
                    <br><br>
                    <input type="radio" id="tt26" name="tt26" value=4><label for="tt26">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi có khả năng tổng hợp, khái quát, suy đoán những vấn đề</p><br>
                    <input type="radio" id="tt27" name="tt27" value=0><label for="tt27">0</label>
                    <br><br>
                    <input type="radio" id="tt27" name="tt27" value=1><label for="tt27">1</label>
                    <br><br>
                    <input type="radio" id="tt27" name="tt27" value=2 checked><label for="tt27">2</label>
                    <br><br>
                    <input type="radio" id="tt27" name="tt27" value=3><label for="tt27">3</label>
                    <br><br>
                    <input type="radio" id="tt27" name="tt27" value=4><label for="tt27">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thích những hoạt động điều tra, phân loại, kiểm tra, đánh giá</p><br>
                    <input type="radio" id="tt28" name="tt28" value=0><label for="tt28">0</label>
                    <br><br>
                    <input type="radio" id="tt28" name="tt28" value=1><label for="tt28">1</label>
                    <br><br>
                    <input type="radio" id="tt28" name="tt28" value=2 checked><label for="tt28">2</label>
                    <br><br>
                    <input type="radio" id="tt28" name="tt28" value=3><label for="tt28">3</label>
                    <br><br>
                    <input type="radio" id="tt28" name="tt28" value=4><label for="tt28">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi có thể chụp hình hoặc vẽ tranh, trang trí, điêu khắc</p><br>
                    <input type="radio" id="tt29" name="tt29" value=0><label for="tt29">0</label>
                    <br><br>
                    <input type="radio" id="tt29" name="tt29" value=1><label for="tt29">1</label>
                    <br><br>
                    <input type="radio" id="tt29" name="tt29" value=2 checked><label for="tt29">2</label>
                    <br><br>
                    <input type="radio" id="tt29" name="tt29" value=3><label for="tt29">3</label>
                    <br><br>
                    <input type="radio" id="tt29" name="tt29" value=4><label for="tt29">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi có năng khiếu âm nhạc</p><br>
                    <input type="radio" id="tt30" name="tt30" value=0><label for="tt30">0</label>
                    <br><br>
                    <input type="radio" id="tt30" name="tt30" value=1><label for="tt30">1</label>
                    <br><br>
                    <input type="radio" id="tt30" name="tt30" value=2 checked><label for="tt30">2</label>
                    <br><br>
                    <input type="radio" id="tt30" name="tt30" value=3><label for="tt30">3</label>
                    <br><br>
                    <input type="radio" id="tt30" name="tt30" value=4><label for="tt30">4</label>
                    <br><br>
                </article>
            </section>

            <section class="struggleConatiner">
                <h3>Nhóm câu hỏi 6</h3>
                
                <article class="trQuestion">
                    <p>Tôi là người biệt lắng nghe</p><br>
                    <input type="radio" id="tt31" name="tt31" value=0><label for="tt31">0</label>
                    <br><br>
                    <input type="radio" id="tt31" name="tt31" value=1><label for="tt31">1</label>
                    <br><br>
                    <input type="radio" id="tt31" name="tt31" value=2 checked><label for="tt31">2</label>
                    <br><br>
                    <input type="radio" id="tt31" name="tt31" value=3><label for="tt31">3</label>
                    <br><br>
                    <input type="radio" id="tt31" name="tt31" value=4><label for="tt31">4</label>
                    <br><br>
                </article>
                
                <article class="trQuestion">
                    <p>Tôi thích các hoạt động chăm sóc sức khỏe của bản thân và người khác</p><br>
                    <input type="radio" id="tt32" name="tt32" value=0><label for="tt32">0</label>
                    <br><br>
                    <input type="radio" id="tt32" name="tt32" value=1><label for="tt32">1</label>
                    <br><br>
                    <input type="radio" id="tt32" name="tt32" value=2><label for="tt32">2</label>
                    <br><br>
                    <input type="radio" id="tt32" name="tt32" value=3 checked><label for="tt32">3</label>
                    <br><br>
                    <input type="radio" id="tt32" name="tt32" value=4><label for="tt32">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thích các việc quản lý, đánh giá</p><br>
                    <input type="radio" id="tt33" name="tt33" value=0><label for="tt33">0</label>
                    <br><br>
                    <input type="radio" id="tt33" name="tt33" value=1><label for="tt33">1</label>
                    <br><br>
                    <input type="radio" id="tt33" name="tt33" value=2 checked><label for="tt33">2</label>
                    <br><br>
                    <input type="radio" id="tt33" name="tt33" value=3><label for="tt33">3</label>
                    <br><br>
                    <input type="radio" id="tt33" name="tt33" value=4><label for="tt33">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thường đặt ra các mục tiêu, kế hoạch trong cuộc sống</p><br>
                    <input type="radio" id="tt34" name="tt34" value=0><label for="tt34">0</label>
                    <br><br>
                    <input type="radio" id="tt34" name="tt34" value=1><label for="tt34">1</label>
                    <br><br>
                    <input type="radio" id="tt34" name="tt34" value=2 checked><label for="tt34">2</label>
                    <br><br>
                    <input type="radio" id="tt34" name="tt34" value=3><label for="tt34">3</label>
                    <br><br>
                    <input type="radio" id="tt34" name="tt34" value=4><label for="tt34">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thích các công việc lưu trữ, phân loại, cập nhất thông tin</p><br>
                    <input type="radio" id="tt35" name="tt35" value=0><label for="tt35">0</label>
                    <br><br>
                    <input type="radio" id="tt35" name="tt35" value=1><label for="tt35">1</label>
                    <br><br>
                    <input type="radio" id="tt35" name="tt35" value=2 checked><label for="tt35">2</label>
                    <br><br>
                    <input type="radio" id="tt35" name="tt35" value=3><label for="tt35">3</label>
                    <br><br>
                    <input type="radio" id="tt35" name="tt35" value=4><label for="tt35">4</label>
                    <br><br>
                </article>

                <article class="trQuestion">
                    <p>Tôi thích dự kiến các khoản thu chi</p><br>
                    <input type="radio" id="tt36" name="tt36" value=0><label for="tt36">0</label>
                    <br><br>
                    <input type="radio" id="tt36" name="tt36" value=1><label for="tt36">1</label>
                    <br><br>
                    <input type="radio" id="tt36" name="tt36" value=2 checked><label for="tt36">2</label>
                    <br><br>
                    <input type="radio" id="tt36" name="tt36" value=3><label for="tt36">3</label>
                    <br><br>
                    <input type="radio" id="tt36" name="tt36" value=4><label for="tt36">4</label>
                    <br><br>
                </article>
       
            </section>
            <button type="submit" class="btn btn-primary btn-lg">Tiếp tục</button>
        </form>
    </div>
</body>
</html>
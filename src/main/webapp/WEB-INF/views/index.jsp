<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/WEB-INF/views/include/header.jsp" />

        <div class="slider">
            <div class="inner"><img src="/images/img01.jpg" alt=""></div>
            <div class="inner"><img src="/images/img02.jpg" alt=""></div>
            <div class="inner"><img src="/images/img03.jpg" alt=""></div>
            <div class="inner"><img src="/images/img04.jpg" alt=""></div>
        </div>

<jsp:include page="/WEB-INF/views/include/footer.jsp" />

    <script>
    $(document).ready(function(){
        var slider = $('.slider').bxSlider({
            auto: true, 
            mode:'horizontal',
            onSlideAfter: function() {
            slider.stopAuto();
            slider.startAuto();
        }
            
    });
});

    </script>
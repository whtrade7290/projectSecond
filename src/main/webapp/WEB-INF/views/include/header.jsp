<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/header.css">
    
    <!-- 구글폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
	
    <title>Guest House</title>
    <script src="https://kit.fontawesome.com/d6fd3b6ecc.js" crossorigin="anonymous"></script>
    <!-- 헤더 css -->
    <script src="/js/header.js" defer></script>
    <!-- 제이쿼리 & 아작스-->
    <script src="/js/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>
<body>
    <div id="wrap">
        <header>
            <nav class="member">
	            <c:choose>
	            	<c:when test="${ sessionScope.member_name ne null }">
		               <ul class="member__menu">
		            		<li><a href="#">${ sessionScope.member_name } 님 :)</a></li>
		                    <li><a href="">mypage</a></li>
		                    <li><a href="/reservation/calendar">reservation</a></li>
		                    <li><a href="/member/logout">logout</a></li>
		               </ul>
	            	</c:when>
	            	<c:otherwise>
	            	   <ul class="member__menu">
	                   	   <li><a href="/member/login">login</a></li>
	                       <li><a href="/member/joinView">join</a></li>
	                       <li><a href="/reservation/calendar">reservation</a></li>
                       </ul>
	            	</c:otherwise>
	            </c:choose>
             
            </nav>
            <nav class="navbar">
        
                <div class="navbar__logo">
                    
                    <a href="/home/" id="main__logo"><i class="fas fa-home"></i>Guest House</a>
                </div>
                <ul class="navbar__menu">
                    <li><a href="">PROLOGUE</a></li>
                    <li><a href="">ROOMS</a></li>
                    <li><a href="">SERVICE</a></li>
                    <li><a href="">TRAVEL</a></li>
                    <li><a href="/reservation/calendar">RESERVATION</a></li>
                    <li><a href="/community/board">COMMUNITY</a></li>
                </ul>
                <ul class="navbar__icons">
                    <li><i class="fab fa-twitter"></i></li>
                    <li><i class="fab fa-facebook-square"></i></li>
                    <li><i class="fab fa-instagram"></i></li>
                </ul>
               		<c:choose>
		            	<c:when test="${ sessionScope.member_name ne null }">
			                <ul class="member__smallMenu">
			            		<li><a href="#">${ sessionScope.member_name } 님 :)</a></li>
			                    <li><a href="">mypage</a></li>
			                    <li><a href="/reservation/calendar">reservation</a></li>
			                    <li><a href="/member/logout">logout</a></li>
			               </ul>
			            </c:when>
			            <c:otherwise>
			             	<ul class="member__smallMenu">
			                	<li><a href="/member/login">login</a></li>
			                    <li><a href="/member/joinView">join</a></li>
			                    <li><a href="/reservation/calendar">reservation</a></li>
			                </ul>
			            </c:otherwise>
		            </c:choose>
                <a href="#" class="navbar__toggleBtn">
                    <i class="fas fa-bars"></i>
                </a>
            </nav>
        </header>
</body>
</html>
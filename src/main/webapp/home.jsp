<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Portfolyx - Home</title>
     <link rel="stylesheet" type="text/css" href="style.css">
     <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
</head>
<body>
<%@include file="mainnavbar.jsp" %>
     <div class="heading">
          <h1>Welcome to Portfolyx</h1>
          <h3>The One Stop Solution for Managing Student Projects and Portfolios!</h3>
     </div>
     <div class="headingcontent">
          <p>Easily showcase your academic and personal projects, organize your work, and track your progress with ease. Whether you're a student building a professional portfolio or an educator reviewing multiple projects, Portfolyx streamlines the process for everyone. Start managing your projects, monitor milestones, and display your achievements effortlessly!</p>
     </div>
     <button><a href="stureg">Sign up now to get started!</a></button>
     <img src="/images/clouds.webp" alt="Transparent clouds modular" class="clouds_bottom">
     <div class="gradient"></div>
     <header class="head">
          <div class="about">
               <h1>About Us</h1>
               <p>Portfolyx is a project management platform designed to help students and educators manage their projects and portfolios with ease. Our platform allows students to showcase their academic and personal projects, organize their work, and track their progress. Educators can use Portfolyx to review multiple projects, monitor milestones, and provide feedback to students. Whether you're a student building a professional portfolio or an educator managing student projects, Portfolyx streamlines the process for everyone. Sign up today to start managing your projects, monitoring milestones, and displaying your achievements effortlessly!</p>
          </div>
          <div class="team">
               <h1>Meet Our Team</h1>
               <div class="mentor">
                    <a href="https://www.linkedin.com/in/suryakiran1993/" target="_blank"><img src="/images/JSKSir.jpg" alt="JSK SIR"></a>
                    <h2>Mr. Jonnalagadda Surya Kiran</h2>
                    <p id="p1">Project Mentor , Assistant Professor - KL University</p>
                    <p>Meet our remarkable mentor, whose unwavering dedication and expertise have profoundly shaped our learning journey. With years of teaching experience, he inspires not only us but countless students to achieve their fullest potential. His passion for mentorship and steadfast support make him an invaluable asset to our team. We are truly grateful for his guidance and proud to have him by our side!</p>
               </div>
               <div class="row">               <div class="member">
                    <a href="https://www.linkedin.com/in/alla-kavya-reddy/" target="_blank"><img src="/images/kavya.png" alt="Kavya"></a>
                    <h2>Alla Kavya</h2>
                    <p>Contributor</p>
               </div>
               <div class="member">
                    <a href="https://www.linkedin.com/in/telaprolu-roopa-sri-lakshmi-sai/" target="_blank"><img src="/images/roopa.jpg" alt="Roopa"></a>
                    <h2>Roopa Telaprolu</h2>
                    <p>Contributor</p>
               </div>
               <div class="member">
                    <a href="https://www.linkedin.com/in/mulpuru-charishma-11312a261/" target="_blank"><img src="/images/charishma.jpg" alt="Charishma"></a>
                    <h2>Mulpuru Charishma</h2>
                    <p>Contributor</p>
               </div>
               </div>
          </div>
     </header>
     <footer>
          <p style="font-size: 50px; color: #e2e7f2;">
               &copy; 2021 Portfolyx. All rights reserved.
          </p>
     </footer>
     <script src="script.js"></script>
</body>
</html>
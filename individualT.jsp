<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>κ°μΈμν</title>
   <link href="header.css" rel="stylesheet" />
   <link href="footer.css" rel="stylesheet" />
   <link href="reset.css" rel="stylesheet" />
   <style type="text/css">
      .section {
         margin: auto;
         justify-content: center;
         width: 60%;
      }

      .left {
         width: 20%;
         float: left;
         box-sizing: border-box;
      }

      .right {
         position: static;
         overflow: hidden;
         width: 80%;
         float: right;
         box-sizing: border-box;
      }

      .left2 {
         width: 50%;
         height: 100%;
         float: left;
         box-sizing: border-box;
         border-radius: 20px 0px 0px 20px;
      }

      .right2 {
         position: relative;
         overflow: hidden;
         width: 50%;
         height: 100%;
         float: right;
         box-sizing: border-box;
         border-radius: 0px 20px 20px 0px;
      }

      #button3 {
         color: #FFB02E;
      }

      a:link {
         color: inherit;
         text-decoration: none;
      }

      a:visited {
         color: inherit;
         text-decoration: none;
      }

      a:hover {
         color: #996b20;
      }

      .menu-active {
         color: #FFB02E;
      }

      .contents {
         width: 99%;
         background-color: rgba(255, 176, 46, 0.1);
         box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
         border-radius: 20px;
         padding: 1% 1%;
         box-sizing: border-box;
      }

      .box {
         display: -webkit-flex;
         display: flex;
         -webkit-align-items: center;
         align-items: center;
         position: relative;
         width: 100%;
         justify-content: space-between;
      }

      .box2 {
         display: -webkit-flex;
         display: flex;
         -webkit-align-items: center;
         align-items: center;
         position: relative;
         width: 100%;
         justify-content: space-between;
         height: 200px;
         border-radius: 20px;
      }

      .box3 {
         margin-top: 7px;
         display: -webkit-flex;
         display: flex;
         -webkit-align-items: center;
         align-items: center;
         position: relative;
         width: 100%;
         justify-content: space-between;
         height: 500px;
         border-radius: 17px;
         background-color: rgba(255, 176, 46, 0.15);
         align-content: center;
      }

      .location {
         color: lightsalmon;
         font-weight: bold;
      }

      .region {
         width: 100%;
      }

      .region input {
         width: 20px;
         /* λλΉ μ€μ  */
         height: 20px;
         /* λμ΄ μ€μ  */
      }

      .pimg {
         width: 80px;
         height: 80px;
         border-radius: 100%;
         border: 3px solid #FFB02E;
         box-shadow: 0px 0px 5px #fff;
         justify-content: space-between;
         display: block;
         margin: 0px auto;
      }

      .img {
         object-fit: cover;
         width: 90%;
         height: 90%;
         border-radius: 100%;
         border: 3px solid #FFB02E;
         box-shadow: 0px 0px 5px #fff;
         display: block;
         margin: 0px;
         position: relative;
         top: 50%;
         left: 50%;
         transform: translate(-50%, -50%);
         justify-content: center;
      }

      .introduce {
         position: absolute;
         top: 7%;
         left: 7%;
      }

      .request {
         background-color: #F9F5EA;
         padding: 5px;
         width: 80%;
         border: none;
         cursor: pointer;
         border-radius: 10px;
         text-align: center;
         box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
         font-weight: bold;
         color: #996b20;
         position: absolute;
         bottom: 1px;
         left: 50%;
         transform: translate(-50%, -50%);
      }

      .request:hover {
         background-color: #996b20;
         color: #F9F5EA;
      }

      .buttons {
         text-align: center;
         width: 100%;
         position: absolute;
         bottom: 1px;
         left: 50%;
         transform: translate(-50%, -50%);
      }

      .make {
         background-color: #F9F5EA;
         padding: 10px;
         width: 30%;
         border: none;
         cursor: pointer;
         border-radius: 10px;
         text-align: center;
         box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
         font-weight: bold;
         color: #996b20;
      }

      .make:hover {
         background-color: #996b20;
         color: #F9F5EA;
      }

      .cancel {
         background-color: #F9F5EA;
         padding: 10px;
         width: 30%;
         border: none;
         cursor: pointer;
         border-radius: 10px;
         text-align: center;
         box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.25);
         font-weight: bold;
         color: #996b20;
      }

      .cancel:hover {
         background-color: #996b20;
         color: #F9F5EA;
      }

      hr {
         border: 3px solid #F9F5EA;
      }

      #Seoul {
         display: block;
      }

      #Daegu {
         display: none;
      }

      #Busan {
         display: none;
      }

      #Daejeon {
         display: none;
      }

      #Gg {
         display: none;
      }

      #Gw {
         display: none;
      }

      #Gs {
         display: none;
      }

      #Jl {
         display: none;
      }

      #Cc {
         display: none;
      }

      #Jeju {
         display: none;
      }

      #Btn1 {
         display: block;
      }

      #Btn2 {
         display: none;
      }

      input[type='radio'],
      input[type='radio']:checked {
         appearance: none;
         width: 0.9rem;
         height: 0.9rem;
         border-radius: 20%;
         margin-right: 0.1rem;
      }

      input[type='radio'] {
         background-color: floralwhite;
         border: 2px solid #FFB02E;
      }

      input[type='radio']:checked {
         background-color: #FFB02E;
      }
        
    .dropdown {
      position: relative;
      display: inline-block;
    }

    .dropbtn_icon {
      font-family: 'Material Icons';
      padding: 10px;
      font-size: 13px;
      vertical-align: middle;
    }

    .dropbtn {
      border: none;
      background-color: #FFB02E;
      font-weight: bold;
      color: rgb(37, 37, 37);
      padding: 12px;
      width: 140px;
      text-align: left;
      cursor: pointer;
      font-size: 12px;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      z-index: 1;
      font-weight: 400;
      background-color: #f9f9f9;
      background-color: #ff6ea8;
      background-color: rgba(247, 119, 170, 0.95);
      min-width: 140px;
      text-align: center;
      border-radius: 15px;
    }

    .dropdown-content a {
      display: block;
      text-decoration: none;
      color: rgb(37, 37, 37);
      color: white;
      font-size: 12px;
      font-weight: bold;
      padding: 12px 20px;
    }

    .dropdown-content a:hover {
      background-color: #b37f29;
      border-radius: 15px;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }

    .profile {
      height: 30%;
      width: 30%;
      border-radius: 70%;
      vertical-align: middle;
    }
   </style>
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript">
      $(document).ready(function () {
         $("#btn1").click();
      });
      $(document).ready(function () {
         $("input:radio[value=seoul]").click(function () {
            $('#Seoul').css('display', 'block');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=daegu]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'block');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=busan]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'block');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=daejeon]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'block');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=gg]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'block');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=gw]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'block');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=gs]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'block');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=jl]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'block');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=cc]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'block');
            $('#Jeju').css('display', 'none');
         });
         $("input:radio[value=jeju]").click(function () {
            $('#Seoul').css('display', 'none');
            $('#Daegu').css('display', 'none');
            $('#Busan').css('display', 'none');
            $('#Daejeon').css('display', 'none');
            $('#Gg').css('display', 'none');
            $('#Gw').css('display', 'none');
            $('#Gs').css('display', 'none');
            $('#Jl').css('display', 'none');
            $('#Cc').css('display', 'none');
            $('#Jeju').css('display', 'block');
         });
      });
$(document).ready(function () {
   $("button[id=btn1]").click(function () {
      $('#Btn1').css('display', 'block');
      $('#Btn2').css('display', 'none');
   });
   $("button[id=btn2]").click(function () {
      $('#Btn1').css('display', 'none');
      $('#Btn2').css('display', 'block');
   });
});
</script>
</head>

<body style="background-color: #F9F5EA;">
<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
%>
   <header style="background-color: #FFB02E;">
      <section class="section">
         <br>
         <table class="header">
            <tr>
               <td style="width: 17%;">
                  <a href="main.jsp">
                     <img src="img/logo.png" style="height: 50px">
                  </a>
               </td>
               <td style="width: 50%; align-items: stretch;">
                  <input class="input" type="text" name="search" placeholder="κ²μμ΄λ₯Ό μλ ₯νμΈμ">
                  <input class="submit" type="submit" value="submit"></input>
               </td>
               <td style="width: 17%;"></td>
               <td style="width: 8%;">
          <%
          	if(userID == null){
          %>
            	<button class="signUp" onclick="location.href='signUp.jsp'">Sign up</button>
            </td>
            <td style="width: 8%;">
                <button class="signIn" onclick="location.href='signIn.jsp'">Sign in</button>
            </td>
          <%	
          	} else {
          %>
            <div class="dropdown">
              <button class="dropbtn">
                <img class="profile" src="img/profile.png">
                <span class="dropbtn_icon" value="userID">νκΈΈλ λ</span>
              </button>
              <div class="dropdown-content">
                <a href="updatePro.jsp">νμμ λ³΄λ³κ²½</a>
                <a href="requireList.html">μμ²­λͺ©λ‘</a>
                <a href="logoutAction.jsp">λ‘κ·Έμμ</a>
              </div>
            </div>
          <%
          	}
          %>
               </tr>
            </table>
         <br>
         <ul></ul>
         <ul class="nav">
            <div>
               <li><a id="button1" href="#none" style="font-weight: 900;">μμ²΄μμ½</a></li>
               <li><a id="button2" href="community.jsp" style="font-weight: 900;">μ»€λ?€λν°</a></li>
               <li><a id="button3" href="individualT.jsp" style="font-weight: 900;">μν</a></li>
               <li><a id="button4" href="Int.jsp" style="font-weight: 900;">νμ¬μκ°</a></li>
            </div>
         </ul>
      </section>
   </header>
   <br>
   <br>
   <br>
   <article>
      <section class="section">
         <div style="display: flex;">
            <div class="left">
               <br>
               <button type="button" class="menu-link" data-menu="1" onclick="location.href='#'"
               id="btn1">κ°μΈμν</button><br><br>
               <button type="button" class="menu-link" data-menu="2" id="btn2">μνμ μ μ²­</button><br><br><br>
               <script>
                  var menuLinks = document.querySelectorAll('.menu-link');

                  function clickMenuHandler() {
                     for (var i = 0; i < menuLinks.length; i++) {
                        menuLinks[i].classList.remove('menu-link-active');
                     }
                     this.classList.add('menu-link-active');
                  }

                  for (var i = 0; i < menuLinks.length; i++) {
                     menuLinks[i].addEventListener('click', clickMenuHandler);
                  }
               </script>
            </div>
            <div class="right" id="Btn1">
               <div class="contents">
                  <div class="box" style="border-bottom: 2px solid #8a611e;">
                     <h1>&nbspμ§μ­ μ ν</h1>
                     <span class="location"><a onclick="getUserLocation();">λ΄μ£Όλ³&nbsp</a></span>
                     <script>
                        function success({ coords, timestamp }) {
                           const latitude = coords.latitude;
                           const longitude = coords.longitude;

                           //if ((latitude >= 35.91 && latitude <= 35.92) && (longitude >= 128.81 && latitude <= 128.82)) {
                            $(document).ready(function () {
                              $("#gs").click();
                           });
                        // }
                      }

                      function getUserLocation() {
                        if (!navigator.geolocation) {
                          throw "μμΉ μ λ³΄κ° μ§μλμ§ μμ΅λλ€.";
                       }
                       navigator.geolocation.watchPosition(success);
                    }

                    getUserLocation();
                 </script>
              </div>
              <br>
              <div>
               <table class="region">
                  <tr>
                     <td width="40%"><label for="seoul"> μμΈ</label></td>
                     <td width="5%"><input type="radio" name="region" id="seoul" value="seoul" class="seoul"
                        checked></td>
                        <td width="10%"></td>
                        <td width="40%"><label for="busan"> λΆμ°</label></td>
                        <td width="5%"><input type="radio" name="region" id="busan" value="busan" class="busan"></td>
                     </tr>
                     <tr>
                        <td><label for="daegu"> λκ΅¬</label></td>
                        <td width="5%"><input type="radio" name="region" id="daegu" value="daegu" class="daegu"></td>
                        <td></td>
                        <td><label for="daejeon"> λμ </label></td>
                        <td width="5%"><input type="radio" name="region" id="daejeon" value="daejeon"
                           class="daejeon">
                        </td>
                     </tr>
                     <tr>
                        <td><label for="gg"> κ²½κΈ°</label></td>
                        <td width="5%"><input type="radio" name="region" id="gg" value="gg" class="gg"></td>
                        <td></td>
                        <td><label for="gw"> κ°μ</label></td>
                        <td width="5%"><input type="radio" name="region" id="gw" value="gw" class="gw">
                        </td>
                     </tr>
                     <tr>
                        <td><label for="gs"> κ²½μ</label></td>
                        <td width="5%"><input type="radio" name="region" id="gs" value="gs" class="gs"></td>
                        <td></td>
                        <td><label for="jl"> μ λΌ</label></td>
                        <td width="5%"><input type="radio" name="region" id="jl" value="jl" class="jl">
                        </td>
                     </tr>
                     <tr>
                        <td><label for="cc"> μΆ©μ²­</label></td>
                        <td width="5%"><input type="radio" name="region" id="cc" value="cc" class="cc"></td>
                        <td></td>
                        <td><label for="jeju"> μ μ£Ό</label></td>
                        <td width="5%"><input type="radio" name="region" id="jeju" value="jeju" class="jeju">
                        </td>
                     </tr>
                  </table>
                  <br>
               </div>
            </div>
            <br>
            <div class="contents">
               <div class="box">
                  <h1>&nbspμΈκΈ° νλ‘ν</h1>
               </div>
               <div class="box">
                  <img src="img/a.JPG" class="pimg">
                  <img src="img/b.JPG" class="pimg">
                  <img src="img/c.JPG" class="pimg">
                  <img src="img/d.JPG" class="pimg">
                  <img src="img/e.JPG" class="pimg">
                  <img src="img/f.JPG" class="pimg">
                  <br>
               </div>
               <br>
            </div>
            <br>
            <div class="print">
               <div class="box2" id="Seoul">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">κΉν λ¦¬<br>λ§ν°μ¦<br>200316<br>κ· μΌμ¦<br>νκ° μ°μ± μ’μν΄μ~!</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/b.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λλΆ<br>λ§ν°μ¦<br>210325<br>μλ λ₯΄κΈ°X<br>νκ° μ°μ± μ«μ΄ν΄μ~!</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/e.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μ¬λ¦¬λΈ<br>A<br>190316<br>μλ λ₯΄κΈ°X<br>μ°μ΄ λ¬λ²></span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/f.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λͺ½μ€μ΄<br>λΉμ<br>180602<br>λλλ¬κΈ°<br>μ¬λμ μ’μν΄μ^_^</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Daegu">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/c.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μ΄λ‘±μ΄<br>A<br>190316<br>λ° λ¬ΌκΈ°<br>λ¬Όλμ΄λ₯Ό μ’μν©λλΉ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/d.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λ―Έλ―Έ<br>E<br>220101<br>μλ λ₯΄κΈ°X<br>λͺ©μμ μ’μνκ³  μν΄μ~</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/g.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λͺ¨μ°<br>B<br>200202<br>λ­κ³ κΈ° μλ λ₯΄κΈ°<br>μμ  λ¬λ²></span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/h.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">ν΄νΌ<br>C<br>180219<br>κ°λ €μμ¦<br>μ¬λμ μ’μν΄μ:)</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Busan">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/aaa.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">κ΅¬λ¦μ΄<br>λ§ν°μ¦<br>210111<br>μ°μ΄ μλ¬μ§<br>μ¬λμ μ’μν΄μ~</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/bbb.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μλ£¨<br>κ³¨λ  λ¦¬νΈλ¦¬λ²<br>220131<br>μλ λ₯΄κΈ°X<br>λ―μ κ°λ €μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ccc.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μ½©μ΄<br>κ³¨λ  λ¦¬νΈλ¦¬λ²<br>220204<br>μλ λ₯΄κΈ°X<br>μ°μ± κ΅μ‘ μ€μ΄μμ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ddd.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λ³΄λ¦μ΄<br>μ¬λͺ¨μλ<br>200519<br>νΌλΆμΌμ¦<br>κ°μμ§ μΉκ΅¬λ€μ μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Daejeon">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/hhh.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λ?€μ¦<br>λ―Ήμ€κ²¬<br>190421<br>μλ λ₯΄κΈ°X<br>ν°κ·Έ λμ΄λ₯Ό μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/eee.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">κΉμ°Ήμ<br>ν¬λ©λΌλμ<br>200620<br>μλ λ₯΄κΈ°X<br>μ‘°μ©ν κ³΅μ μ°μ±μ μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/fff.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μ€κ΅¬<br>νΈλ€<br>211222<br>μλ λ₯΄κΈ°X<br>μ°μ±μ λ¬΄μμν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ggg.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λ£¨λ£¨<br>ν μ΄νΈλ€<br>210321<br>λ­κ³ κΈ° μλ¬μ§<br>κ°μμ§ μΉκ΅¬λ€μ μ’μν΄μ~</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Gg">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/iii.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μμ΄<br>λ―Ήμ€κ²¬<br>220116<br>νΌλΆμΌμ¦<br>μ°μ±μ μ’μν΄μ~~</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/jjj.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">κ°λ³΄λ¦¬<br>λ―Ήμ€κ²¬<br>190707<br>μλ λ₯΄κΈ°X<br>λ¨μλ₯Ό λ¬΄μμν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a1.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λλμ΄<br>λλΈλΌλλ¦¬νΈλ¦¬λ²<br>201208<br>λ€λ¦¬κ° μ‘°κΈ λΆνΈν΄μ<br>μ°μ±μ νλ€μ΄ν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a2.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λͺ½μ<br>νΈλ€<br>191116<br>κ²¬κ³Όλ₯ μλ λ₯΄κΈ°<br>κ°μ λλ¬΄ μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Gw">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a3.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">νμμ΄<br>λ§ν°μ¦<br>201104<br>μλ λ₯΄κΈ°X<br>μμμ΄ μλ νΈμ΄μμ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a4.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μ£Όμ£Ό<br>λΉμ<br>201010<br>μΌμͺ½ λ μΌμ¦<br>νκΈ° λμΉλ νΈμ΄μμ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a5.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λ³΅μ€μ΄<br>λΉμ<br>210822<br>μλ λ₯΄κΈ°<br>μ¬λμ μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a6.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">κΌ¬λ―Έ<br>μ€μ½ν°μ¬ν΄λ<br>120531<br>μλ λ₯΄κΈ°X<br>μμ¬ν νΈμ΄μμ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Gs">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a7.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λΉλ¦¬<br>λλ©μ€ν±μΌνΈν€μ΄<br>200525<br>νΌλΆ μΌμ¦<br>μ κ΅λ₯Ό μ λΆλ €μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a8.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λλΉ<br>μ»¬λ¬ν¬μΈνΈ μν€μ΄<br>190420<br>μλ λ₯΄κΈ°X<br>μ¬λμ λ¬΄μμν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a9.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μκΈμ΄<br>λ§ν°μ¦<br>211221<br>κ· μΌμ¦<br>μ°μ± λλ¬΄ μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/a10.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μμΌμ΄<br>μ½λ¦¬μμν€μ΄<br>190827<br>κ½κ°λ£¨ μλ λ₯΄κΈ°<br>μ§μμ λΈλ κ±Έ λ μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Jl">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/aa.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μμ₯¬<br>ν μ΄νΈλ€<br>220202<br>νΌλΆλ³ μΉλ£μ€<br>λ―μ λ§μ΄ κ°λ €μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/bb.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">νμΆ<br>ν¬λ©λΌλμ<br>180406<br>μλ λ₯΄κΈ° O<br>μ‘°μ©ν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/cc.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">κΉλ―Έ<br>νλ μΉ λΆλ<br>201104<br>μλ λ₯΄κΈ°X<br>μ°μ±μ΄ λ§μ΄ νμν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/dd.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λ£¨λΉ<br>λ¬μμλΈλ£¨<br>191217<br>κ· μΌμ¦<br>νΌμ μλκ²μ μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Cc">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ee.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λ­ν€<br>λΉκΈ<br>210418<br>μλ λ₯΄κΈ°X<br>λ€μ μ°λ§ν΄μγ _γ </span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ff.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μ½©μ΄<br>λ§ν°μ¦<br>120531<br>νΌλΆ μΌμ¦<br>λμ΄κ° λ§μ μ²΄λ ₯μ΄ λΆμ‘±ν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/gg.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λ‘μ΄<br>λ―Έλν<br>220405<br>λΌμ§κ³ κΈ° μλ¬μ§<br>μ¬λμ μ’μν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/hh.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">μΏ΅μ΄<br>λ³΄λμ½λ¦¬<br>180827<br>μλ λ₯΄κΈ°X<br>λλ¬Όμ λ§μ΄ νλ €μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
               <div class="box2" id="Jeju">
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/ii.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">νμ΄<br>λΉμ<br>200911<br>κ· μΌμ¦<br>λ?μ μ΄ νμν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/jj.jpg" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λΌλΌ<br>μ°μμ½κΈ°<br>190315<br>λ­κ³ κΈ° μλ λ₯΄κΈ°<br>μλ―Όν΄μ</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <hr>
                  <div class="left2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/g.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">λͺ¨λͺ¨<br>B<br>200202<br>λ­κ³ κΈ° μλ λ₯΄κΈ°<br>μμ  λ¬λ²</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
                  <div class="right2">
                     <div class="left2" style="background-color: rgba(0255, 176, 46, 0.2);">
                        <img src="img/b.JPG" class="img">
                     </div>
                     <div class="right2" style="background-color: rgba(0255, 176, 46, 0.7);">
                        <span class="introduce">νΈνΈ<br>λ§ν°μ¦<br>180219<br>κ°λ €μμ¦<br>μ¬λμ μ’μν΄μ:)</span>
                        <button class="request">μμ²­νκΈ°</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="right" id="Btn2" style="overflow: visible;">
            <div class="contents">
               <div class="box" style="border-bottom: 2px solid #8a611e;">
                  <h1>&nbspμνμ νλ‘ν μμ±</h1>
               </div>
               <div class="box3">
                  <br>
                  <span class="buttons">
                     <tr><button class="make">μμ±νκΈ°</button></tr>
                     <tr><button class="cancel">μ·¨μνκΈ°</button></tr>
                  </span>
               </div>
            </div>
         </div>
      </div>
      <br>
   </section>
</article>
<footer id="footer">
   <div class="footer-main">
      <div id="copyright">
         <ul class="copyright-list">
            <li>κ³ κ°λ¬Έμ <a href="mailto:cs@happypetppy.com">cs@happypetppy.com</a>
            </li>
            <li>μ ν΄λ¬Έμ <a href="mailto:contact@happypetppy.com">contact@happypetppy.com</a></li>
         </ul>
         <br>
         <ul class="copyright-list">
            <li>μ§μ­κ΄κ³  <a href="mailto:ad@happypetppy.com">ad@happypetppy.com</a>
            </li>
            <li>PRλ¬Έμ <a href="mailto:pr@happypetppy.com">pr@happypetppy.com</a>
            </li>
         </ul>
         <br><br>
         <ul class="copyright-list">
            <li>
               <address>κ²½μλΆλ κ²½μ°μ νμμ νμλ‘ 13-13 (Happy Petppy)</address>
            </li>
         </ul>
         <br><br>
         <ul class="copyright-list">
            <li>μ¬μμ λ±λ‘λ²νΈ : 001-002-0003</li>
            <li>μ§μμ λ³΄μ κ³΅μ¬μ μ κ³ λ²νΈ : J0000000000000</li>
         </ul>
         <div class="copyright-text">Β©Happy Petppy Inc.</div>
      </div>
   </div>
</footer>
</body>

</html>
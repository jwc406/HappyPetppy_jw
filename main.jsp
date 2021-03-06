<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<html>

<head>
  <title>Main</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="main.css" />
  <link rel="stylesheet" href="header.css" />
  <link rel="stylesheet" href="footer.css" />
  <link rel="stylesheet" href="reset.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
  <style type="text/css">
    .section {
      margin: auto;
      justify-content: center;
      width: 60%;
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
  <script type="text/javascript">
    function button1() {
      document.getElementById("button1").click();
    }
    function button2() {
      document.getElementById("button2").click();
    }
    function button3() {
      document.getElementById("button3").click();
    }
    function button4() {
      document.getElementById("button4").click();
    }
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
            <input class="input" type="text" name="search" placeholder="???????????? ???????????????">
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
                <span class="dropbtn_icon" value="userID">????????? ???</span>
              </button>
              <div class="dropdown-content">
                <a href="showPro.jsp">??????????????????</a>
                <a href="requireList.jsp">????????????</a>
                <a href="logoutAction.jsp">????????????</a>
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
        <div class="menu">
          <li><a id="button1" href="#none" style="font-weight: 900;">????????????</a></li>
          <li><a id="button2" href="community.jsp" style="font-weight: 900;">????????????</a></li>
          <li><a id="button3" href="individualT.jsp" style="font-weight: 900;">??????</a></li>
          <li><a id="button4" href="Int.jsp" style="font-weight: 900;">????????????</a></li>
        </div>
      </ul>
    </section>
  </header>
  <div class="main_container">
    <div class="content_container">
      <div class="row1">
        <p class="text">???????????? ?????? ???????????? ???????????????????</p>
        <div class="row1_container">
          <div class="row1_col">
            <a href="individualT.jsp"><img src="img/col1-1.png" alt="?????????1" /></a>
            <p>?????? ??????</p>
          </div>
          <div class="row1_col">
            <a href="#none"><img src="img/col1-2.png" alt="?????????2" /></a>
            <p>?????? ??????</p>
          </div>
        </div>
      </div>
      <div class="row2">
        <p class="text">?????? ????????? ???????????????????</p>
        <div class="parent">
          <div class="swiper-button-prev" style="background-image: none; width: fit-content; height: fit-content;">
          </div>
          <div class="swiper-container" style="padding: 0 10px;">
            <div class="swiper-wrapper">
              <a href="#none" class="swiper-slide"><img src="img/row2-a.png"></a>
              <a href="#none" class="swiper-slide"><img src="img/row2-b.png"></a>
              <a href="#none" class="swiper-slide"><img src="img/row2-c.png"></a>
              <a href="#none" class="swiper-slide"><img src="img/row2-d.png"></a>
              <a href="#none" class="swiper-slide"><img src="img/row2-e.png"></a>
              <a href="#none" class="swiper-slide"><img src="img/row2-a.png"></a>
              <a href="#none" class="swiper-slide"><img src="img/row2-b.png"></a>
              <a href="#none" class="swiper-slide"><img src="img/row2-c.png"></a>
            </div>
          </div>
          <div class="swiper-button-next" style="background-image: none; width: fit-content; height: fit-content;">
          </div>
        </div>
      </div>
      <div class="row3">
        <p class="text">?????? ?????? ???????????? ????????????!</p>
        <div class="row3_container">
          <div class="row3_col">
            <div class="row3_col-title">
              <p>?????????</p>
              <a href="community.jsp">
                <p>+ ?????????</p>
              </a>
            </div>
            <div class="row3_col-post">
              <a href="#none">
                <p>???? ?????? ???????????? ???!</p>
              </a>
              <a href="#none">
                <p>???? ???????????? ?????? ???????????????</p>
              </a>
              <a href="#none">
                <p>???? ?????? ????????? ??????????</p>
              </a>
              <a href="#none">
                <p>???? ????????? ?????????</p>
              </a>
            </div>
          </div>
          <div class="row3_col">
            <div class="row3_col-title">
              <p>?????????</p>
              <a href="community.jsp">
                <p>+ ?????????</p>
              </a>
            </div>
            <div class="row3_col-post">
              <a href="#none">
                <p>???? ??????????????? ??????????????????</p>
              </a>
              <a href="#none">
                <p>???? ????????????~</p>
              </a>
              <a href="#none">
                <p>???? ?????????????????????</p>
              </a>
              <a href="#none">
                <p>???? ????????? ???????????????</p>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer id="footer">
    <div class="footer-main">
      <div id="copyright">
        <ul class="copyright-list">
          <li>???????????? <a href="mailto:cs@happypetppy.com">cs@happypetppy.com</a>
          </li>
          <li>???????????? <a href="mailto:contact@happypetppy.com">contact@happypetppy.com</a></li>
        </ul>
        <br>
        <ul class="copyright-list">
          <li>???????????? <a href="mailto:ad@happypetppy.com">ad@happypetppy.com</a>
          </li>
          <li>PR?????? <a href="mailto:pr@happypetppy.com">pr@happypetppy.com</a>
          </li>
        </ul>
        <br><br>
        <ul class="copyright-list">
          <li>
            <address>???????????? ????????? ????????? ????????? 13-13 (Happy Petppy)</address>
          </li>
        </ul>
        <br><br>
        <ul class="copyright-list">
          <li>????????? ???????????? : 001-002-0003</li>
          <li>???????????????????????? ???????????? : J0000000000000</li>
        </ul>
        <div class="copyright-text">??Happy Petppy Inc.</div>
      </div>
    </div>
  </footer>

  <script src="swiper.js"></script>
</body>

</html>
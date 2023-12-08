<style>
 * {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   font-family: Inika;
}
body {
   font-family: 'Inika', sans-serif;
   background-color: #FCF5ED;
   height: 350px;
}
.wrkctg-header {
   background-color: #F4BF96;
   padding: 10px;
   display: flex;
   justify-content: space-between;
   align-items: center;
   width: 100%;
   position: fixed;
   top: 0;
   left: 0;
   z-index: 1000;
}
.wrkctg-header a {
   color: black;
   text-decoration: none;
   margin: 0 10px;
}
.wrkctg-header button {
    width: 100%;
    height: 40px;
    color: #000;
    border-radius: 10px;
    border: 3px solid #000;
    background: #FCF5ED;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    cursor: pointer;
    transition: background-color 0.3s;
}

.wrkctg-header button:hover {
    background-color: #CE5A67;
}

.wrkctg-h4 {
   overflow: hidden;
   position: relative;
   width: 400px;
   height: 220px;
   margin-top:60px;
   font-family: Inika, sans-serif;
   color: rgb(30, 30, 30);
   font-size: 30px;
   font-weight: 400;
   line-height: 260.6px;
   right:100%;

}
.wrkctg-h1 {
   overflow: hidden;
   position: relative;
   width: 400px;
   height: 220px;
   margin: -120px 0px 26px 230px;
   font-family: Inika, sans-serif;
   color: rgb(30, 30, 30);
   font-size: 25px;
   line-height: 260.6px;
   text-align: left;
   margin-top: 30px;
   font-weight: bold;
   top:-270px;
}
.wrkctg-div {
   position: relative;
   width: 500px;
   height: 400px;
   margin: -100px 0px 20px 50px;
   background: rgb(244, 191, 150);
   border: 3px solid rgb(0, 0, 0);
   border-radius: 30px;
   box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);
   overflow: auto;
   top:-270px;
}
.wrkctg-p {
   position: relative;
   width: 400px;
   height: 70px;
   font-family: Inika, sans-serif;
   color: rgb(30, 30, 30);
   font-size: 17px;
   font-weight: 300;
   line-height: 65.15px;
   overflow: auto;
   left:50px;
}

.wrkctg-p2 {
   position: relative;
   width: 400px;
   height: 70px;
   margin: 0 auto;
   font-family: Inika, sans-serif;
   color: rgb(30, 30, 30);
   font-size: 30px;
   font-weight: 400;
   line-height: 65.15px;
   overflow: hidden;
}



.wrkctg-div2 {
   position: relative;
   width: 300px;
   height: 32px;
   background-color:#CE5A67;
   border: 3px solid rgb(0, 0, 0);
   border-radius: 30px;
   box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);
   overflow: auto;
   text-align: center;
   margin: 0px 0px 20px 130px;
   top:-270px;
}
.wrkctg-div3 {
   position: relative;
   width: 800px;
   height: 300px;
   margin: -620px 0px 20px 600px;
   background: rgb(244, 191, 150);
   border: 3px solid rgb(0, 0, 0);
   border-radius: 30px;
   box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);
   overflow: auto;
   top:-10px;
   padding-bottom:10px;
}
.wrkctg-footer {
    background-color: rgba(244, 191, 150, 0.93); /* Change the color of rectangles */
    width: 100%;
    position: absolute;
    bottom: 0;
}

.orange-rectangles {
    display: flex;
    justify-content: space-between;
    padding: 20px 0;
}
.wrkctg-logout {
   width: 20px;
   height: auto;
}

.h1{
     color: black;
     font-size: 36px;
     text-align:center;
     margin-top:90px
}

.description{
    text-align:center; 
    padding-bottom:10px;
}

.wrkctg-h5{
      position: relative;
        width: 350px;
        height: 119px;
        left:890px;
        top:30px;
        font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
          Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
          "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
          "Source Han Sans CN", sans-serif;
        color: #1e1e1e;
        font-size: 35px;
        font-weight: bold;
        line-height: 91.21px;
}

</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
    response.setHeader("Pragma", "no-cache");
    
    response.setHeader("Expires", "0");
    
    if(session.getAttribute("username")==null && session.getAttribute("password")==null)
    {
        response.sendRedirect("HakiFit_Login");
        response.sendRedirect("HakiFit_Login.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HakiFit Track Progress</title>
        
    </head>

    <body class="wrkctg-body">
        <header class="wrkctg-header"> 
            <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="${initParam.headerValue}"/></a>
            <a href="HakiFit_WorkoutCategories.jsp">Workouts</a>
            <a href="HakiFit_Nutrients_List.jsp">Nutrition</a>
            <a href="HakiFit_Profile.jsp">Profile</a>
            <form action="Logout"><button type="submit"><img class="wrkctg-logout" src="Images/shutdown.png"></button></form>
        </header>
        
        <h1 class="h1">HakiFit Track Progess!!</h1>   
        <p  class="description">Let's see how far you have accomplish</p> 
        <h4 class="wrkctg-h5">Day 1/2/23</h4> 
        
            
        <h4 class="wrkctg-h1">Progress!!</h4>  
        <div class="wrkctg-div">
            <p class="wrkctg-p">Day 1/2/23: Strength </p>
            <p class="wrkctg-p">Day 1/9/23: Yoga</p>
            <p class="wrkctg-p">Day 1/16/23: Push-ups</p>
            <p class="wrkctg-p">Day 1/23/23: Squats</p>
            <p class="wrkctg-p">Day 2/1/23: Yoga</p>
           <p class="wrkctg-p">Day 2/8/23: Bicep Curls</p>
            <p class="wrkctg-p">Day 2/15/23: Squats</p> 
            <p class="wrkctg-p">Day 2/22/23: Push-ups</p> 
            <p class="wrkctg-p">Day 3/1/23: Strength</p><br>
            
        </div>
        
        <div class="wrkctg-div2"><a href ="HakiFit_Profile_TrackProgress.jsp">Reload</a></div>
       
        
        <div class="wrkctg-div3"> 
            <p class="wrkctg-p2">Category: Strength </p>
            <p class="wrkctg-p2">Exercise: Push-ups</p>
            <p class="wrkctg-p2">Time of Exercise: 2pm</p>
            <p class="wrkctg-p2">Number of Breaks: 0 </p>
        </div>

        <footer class="wrkctg-footer">
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
                ${initParam.footerValue}
            </div>
        </footer>
    </body>
</html>

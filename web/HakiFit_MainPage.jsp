<%-- 
    Document   : HakiFit
    Created on : 12 2, 23, 2:32:15 PM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HakiFit</title>
        <style>
              
            * {
                 margin: 0;
                 padding: 0;
                 box-sizing: border-box;
                 font-family: Inika;
               }
               
         body {
              font-family: 'Inika', sans-serif;
              background-color:#FCF5ED;
            }
            
        /* Apply general styling for the header */
            .wrkctg-header {
                background-color: #F4BF96;
                padding: 10px; /* Add padding if needed */
                display: flex;
                justify-content: space-between;
                align-items: center;
                width: 100%; /* Ensure the header spans the entire width */
                position: fixed; /* Change from static to fixed */
                top: 0; /* Stick to the top of the viewport */
                left: 0;
                z-index: 1000; /* Set a higher z-index to ensure it's on top of other elements */
            }
            .wrkctg-header a {
              color: black;
              text-decoration: none;
              margin: 0 10px;
            }
        /* Apply styles to the footer */
            .wrkctg-footer {
                background-color: #F4BF96;
                height: 50px;
                position: fixed; /* Change from relative or static to fixed */
                bottom: 0;
                left: 0;
                width: 100%;
            }
        /* Adjustments for the logout image */
            .wrkctg-logout {
              width: 20px;
              height: auto;
            }
            /* Optional: Apply some spacing to the page content */
            .wrkctg-body {
              padding: 20px;
            }
            
            .wrkctg-h1{
                margin-bottom:0px;
                margin-top:170px;
                font-size:60px;
                margin-left:180px;
            }            
            
            .wrkctg-p{
                margin-top:65px; 
                font-size:25px;
                justify-content:center; 
                margin-left:85px;
            }
            
            .wrkctg-hakifitlogo2{
                top:30px;
                height:85px;
                weight:35px;
            }
            
            .wrkctg-heart{
                  position: absolute;
                   width: 160px;
                    height: 158px;
                    top: 280px;
                    left: 835px;
                    background: no-repeat center;
                    background-size: cover;
                    z-index: 12;
            }
            
            .wrkctg-muscle{
                position: absolute;
                width: 172px;
                height: 140px;
                top: 135px;
                left: 940px;
                background: no-repeat center;
                background-size: cover;
                z-index: 13;
            }
            
            .wrkctg-yoga{
                  position: absolute;
                  width: 183px;
                  height: 163px;
                  top: 130px;
                  left: 1160px;
                  background: no-repeat center;
                   background-size: cover;
                   z-index: 14;       
            }
            
            .wrkctg-track{
                position: absolute;
                width: 157px;
                height: 159px;
                top: 280px;
                left: 1320px;
                background: no-repeat center;
                background-size: cover;
                z-index: 11;   
            }
            
            .wrkctg-history{
                flex-shrink: 0;
                 position: relative;
                width: 202px;
                height: 166px;
                background:  no-repeat center;
                background-size: cover; 
                z-index: 16;
                left: 1120px;
                bottom:25px;
            }
            
            .wrkctg-postworkout{
                  flex-shrink: 0;
                  position: relative;
                  width: 172px;
                  height: 176px;
                  left:730px;
                  bottom:18px;
                  background: no-repeat center;
                  background-size: cover;
                  z-index: 15;
            }
            
            .wrkctg-hakifitlogo3{
                 position: absolute;
                width: 300px;
                height: 130px;
                top: 310px;
                left: 1010px;
                bottom:20px;
                background:no-repeat center;
                background-size: cover;
                z-index: 18;
            }
            
            
            @keyframes bounce {
                0%, 20%, 50%, 80%, 100% {
                  transform: translateY(0);
                }
                40% {
                  transform: translateY(-20px);
                }
                60% {
                  transform: translateY(-10px);
                }
              }
              
            .wrkctg-heart,
            .wrkctg-muscle,
            .wrkctg-yoga,
            .wrkctg-track,
            .wrkctg-history,
            .wrkctg-postworkout,
            .wrkctg-hakifitlogo3 {
              animation: bounce 1s infinite; /* Adjust the duration as needed */
            }  
            
            
        </style>
    </head>
    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/></a>
            <a href="HakiFit_WorkoutCategories.jsp">Workouts</a>
            <a href="HakiFit_Nutrients_List.jsp">Nutrition</a>
            <a href="HakiFit_Profile.jsp">Profile</a>
            <a href="HakiFit_Login"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>
        <h1 class="wrkctg-h1">
            This is <img class="wrkctg-hakifitlogo2" src="Images/HakiFitLogo.png"/>
        </h1>
        <p class="wrkctg-p">
            An online playground where enjoyment and fitness <br>
            collide! Envision a society where working up a sweat is as thrilling as<br>
            finishing a level in your preferred video game.<br> 
            Now introduce yourself to HakiFit, the fitness web <br>
            application that makes working out a fantastic journey.
        </p>

        <img class="wrkctg-hakifitlogo3" src="Images/HakiFitLogo.png"/>
        <img class="wrkctg-heart" src="Images/Heart.png" alt="heart"/>
        <img class="wrkctg-muscle" src="Images/Muscle.png" alt="muscle"/>
        <img class="wrkctg-yoga" src="Images/yoga.png" alt="yoga"/>
        <img class="wrkctg-track" src="Images/track.png" alt="Fifth HakiFit Logo"/>
        <img class="wrkctg-history" src="Images/History.png" alt="history"/>
        <img class="wrkctg-postworkout" src="Images/postWorkout.png" alt="postworkout"/>

        <footer class="wrkctg-footer">

        </footer>
    </body>
</html>

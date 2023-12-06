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
            
        </style>
    </head>
    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit.jsp"><img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/></a>
            <a href="WorkoutCategories.jsp">Workouts</a>
            <a href="PersonalWorkout.jsp">Personal Workout</a>
            <a href="Nutrition.jsp">Nutrition</a>
            <a href="Profile.jsp">Profile</a>
            <a href="index.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>
        <h1 class="wrkctg-h1">
            This is <img class="wrkctg-hakifitlogo2" src="Images/HakiFitLogo.png"/>
        </h1>
        <p class="wrkctg-p">
            An online playground where enjoyment and fitness <br>
            collide! Envision a society where working up a sweat is as thrilling as<br>
            finishing a level in your preferred video game.<br> 
            Now introduce yourself to HakiFit, the fitness web <br>
            application that makes working out a fantastic journey.
        </p>
        
        <img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/>
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

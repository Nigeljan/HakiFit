<%-- 
    Document   : PersonalWorkout
    Created on : 12 2, 23, 3:40:29 PM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Personal Workout</title>
        <style>
        * {
                 margin: 0;
                 padding: 0;
                 box-sizing: border-box;
                 font-family: Inika;
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
        <h1 class="wrkctg-h1">Personal Workout</h1>
        <div class="wrkctg-div">
            <span class="wrkctg-span1"><button type="submit"><a href="TrackProgress.jsp"><img src="Images/Start_Workout.png">Start Workout</a></button></div>
            <span class="wrkctg-span2"><button type="submit"><a href="TrackProgress.jsp"><button type="submit"><img src="Images/Track Progress.png">Track Progress</a></button></div>
            <span class="wrkctg-span3"><button type="submit"><a href="Timer.jsp"><button type="submit"><img src="Images/Pause.png">Pause/Resume/End</a></button></div>    
            <span class="wrkctg-span4"><button type="submit"><a href="Post-WorkoutFeedback.jsp"><button type="submit"><img src="Images/Feedback.png">Post-Workout Feedback</a></button></div> 
        </div>
        
        <footer class="wrkctg-footer">
            
        </footer>
    </body>
</html>

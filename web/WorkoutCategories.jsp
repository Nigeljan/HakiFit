<%-- 
    Document   : WorkoutCategories
    Created on : 12 2, 23, 3:32:42 PM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Workout Categories</title>
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
            <a href="HakiFit.jsp"><img class="wrkctg-hakifitlogo"src="Images/HakiFitLogo.png"/></a>
            <a href="WorkoutCategories.jsp">Workouts</a>
            <a href="PersonalWorkout.jsp">Personal Workout</a>
            <a href="Nutrition.jsp">Nutrition</a>
            <a href="Profile.jsp">Profile</a>
            <a href="index.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>

        <h1 class="wrkctg-h1">Workout Categories</h1>

        <p class="wrkctg-p">Please select a workout!!</p>
        
        <div class="wrkctg-div">
            <span class="wrkctg-span1">
                <button type="submit">
                    <a href="Cardio.jsp">
                        <img src="Images/Cardio.jpg" class="wrkctg-cardio">Cardio
                    </a></button>
            </span>

            <span class="wrkctg-span2">
                <button type="submit">
                    <a href="StrengthTraining.jsp">
                        <button type="submit">
                            <img src="Images/Strength_Training.jpg" class="wrkctg-strengthtraining">Strength Training
                    </a></button>
            </span>

            <span class="wrkctg-span3">
                <button type="submit">
                    <a href="Yoga.jsp">
                        <button type="submit">
                            <img src="Images/Yoga.jpg" class="wrkctg-yoga">Yoga
                    </a></button>
            </span>     
        </div>
        
        <footer class="wrkctg-footer">
            
        </footer>
    </body>
</html>
 

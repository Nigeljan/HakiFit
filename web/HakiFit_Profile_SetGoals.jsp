<%-- 
    Document   : SetGoals
    Created on : 12 3, 23, 10:23:24 AM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Goals!!</title>
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
            
        
           .wrkctg-setgoals {
            width: 20%;
            margin: auto;
            min-height: 100px; /* Set a fixed height for the firstGoal section */
            overflow-y: scroll; /* Enable vertical scrollbar */
            border: 1px solid black; /* Optional: Add border for clarity */
            padding: 10px;
            left:100px;
            background-color:#F4BF96;
           }
            .wrkctg-goalhistory{
                width: 20%;
                margin: auto;
                min-height: 100px; /* Set a fixed height for the firstGoal section */
                border: 1px solid black; /* Optional: Add border for clarity */
                padding: 10px;
                right:100px;
                background-color:#F4BF96;
            }
            
            .wrkctg-input{
                background-color:#CE5A67;
                border: 1px solid black; 
            }
        
          
        </style>
    </head>

    <body class="wrkctg-body">
         <header class="wrkctg-header">
            <a href="HakiFit.jsp"><img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/></
            <a href="WorkoutCategories.jsp">Workouts</a>
            <a href="PersonalWorkout.jsp">Personal Workout</a>
            <a href="Nutrition.jsp">Nutrition</a>
            <a href="Profile.jsp">Profile</a>
            <a href="index.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>
        
       <h1 class="wrkctg-h1">Set Goals!</h1>
        
        <div class="wrkctg-div1">
            <p class="wrkctg-p1">Set Goals!!</p>
            <div class="wrkctg-setgoals">
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea><br>
            </div>
        </div>

        <div class="wrkctg-div2">
            <p class="wrkctg-p2">Goal History!!</p>
            <div class="wrkctg-goalhistory">
                <p class="wrkctg-input">agheth</p>
            </div>
        </div>
 <footer class="wrkctg-footer">
            
 </footer>
    </body>
</html>

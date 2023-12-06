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

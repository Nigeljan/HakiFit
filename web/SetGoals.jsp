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
           .setGoals {
            width: 20%;
            margin: auto;
            min-height: 100px; /* Set a fixed height for the firstGoal section */
            overflow-y: scroll; /* Enable vertical scrollbar */
            border: 1px solid black; /* Optional: Add border for clarity */
            padding: 10px;
            left:100px;
            background-color:#F4BF96;
           }
            .goalHistory{
                width: 20%;
                margin: auto;
                min-height: 100px; /* Set a fixed height for the firstGoal section */
                border: 1px solid black; /* Optional: Add border for clarity */
                padding: 10px;
                right:100px;
                background-color:#F4BF96;
            }
            
            .input{
                background-color:#CE5A67;
                 border: 1px solid black; 
            }
        
          
        </style>
    </head>
    <body>
         <header>
            <a href="HakiFit.jsp"><img class="hakiFitLogoHeader" src="Images/HakiFitLogo.png"/></
            <a href="WorkoutCategories.jsp">Workouts</a>
            <a href="PersonalWorkout.jsp">Personal Workout</a>
            <a href="Nutrition.jsp">Nutrition</a>
            <a href="Profile.jsp">Profile</a>
            <a href="index.jsp"><img class="logout" src="Images/shutdown.png"></a>
        </header>
        <h1>Set Goals!</h1>
        
        <div class="firstGoal">
            <p>Set Goals!!</p>
            <div class="setGoals">
                <textarea class="input"></textarea><br>
                <textarea class="input"></textarea><br>
                <textarea class="input"></textarea><br>
                <textarea class="input"></textarea><br>
                <textarea class="input"></textarea><br>
            </div>
        </div>
        <div class="secondGoal">
            <p>Goal History!!</p>
            <div class="goalHistory">
                <p class="input">agheth</p>
            </div>
        </div>
    </body>
</html>

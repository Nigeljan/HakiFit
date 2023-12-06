<%-- 
    Document   : Post-WorkoutFeedback
    Created on : 12 3, 23, 9:35:38 AM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Post-Workout Feedback</title>
        <style>
            *{
              background-color:#FCF5ED;
            }
            wrkctg-header,wrkctg-footer{
                background-color:#F4BF96;
            }
           
            .wrkctg-metrics1,.wrkctg-metrics2,.wrkctg-metrics3,.wrkctg-history1,.wrkctg-history2,.wrkctg-textfeedback{
            width: 20%;
            margin: auto;
            min-height: 100px; /* Set a fixed height for the firstGoal section */
            border: 1px solid black; /* Optional: Add border for clarity */
            padding: 10px;
            background-color:#F4BF96;
            } 
            .wrkctg-input{
                background-color:#CE5A67;
                border: 1px solid black; 
            }
            .wrkctg-textfeedback{
                overflow-y: scroll; /* Enable vertical scrollbar */
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
        <h1 class="wrkctg-h1">Others</h1>
        
        <div class="wrkctg-div1">
            <p class="wrkctg-p1">View Metrics</p>
            <div class="wrkctg-metrics1">
                
            </div>
            <br>
            <div class="wrkctg-metrics2">
               
            </div>
            <br>
            <div class="wrkctg-metrics3">
                
            </div>
        </div>
        
        <div class="wrkctg-div2">
            <p class="wrkctg-p2">Goal History!!</p>
            <div class="wrkctg-history1">
                <p class ="what">Lorem ipsum<br>
                Lorem ipsum<br>
                Lorem ipsum</p>
            </div>
            <br>
            <div class="wrkctg-history2">
               <p>Lorem ipsum</p>
            </div>
        </div>
        
        <div class="wrkctg-div3">
            <p class="wrkctg-p3">Feedback</p>
            <div class="wrkctg-textfeedback">
                <textarea class="wrkctg-input"></textarea>
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea>
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea> 
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea>
                <textarea class="wrkctg-input"></textarea><br>
            </div>
        </div>
        <button type="submit"><a href="SetGoals.jsp">Set Goals!!</a></button>
        <footer class="wrkctg-footer">
            
        </footer>
    </body>
</html>

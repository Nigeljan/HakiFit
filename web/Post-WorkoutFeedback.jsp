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
            header,footer{
                background-color:#F4BF96;
            }
           
            .metrics1,.metrics2,.metrics3,.history1,.history2,.textFeedback{
            width: 20%;
            margin: auto;
            min-height: 100px; /* Set a fixed height for the firstGoal section */
            border: 1px solid black; /* Optional: Add border for clarity */
            padding: 10px;
            background-color:#F4BF96;
            } 
            .input{
                background-color:#CE5A67;
                border: 1px solid black; 
            }
            .textFeedback{
                overflow-y: scroll; /* Enable vertical scrollbar */
            }
        </style>
    </head>
    <body>
        <header>
         <a href="HakiFit.jsp"><img class="hakiFitLogoHeader" src="Images/HakiFitLogo.png"/></a>
            <a href="WorkoutCategories.jsp">Workouts</a>
            <a href="PersonalWorkout.jsp">Personal Workout</a>
            <a href="Nutrition.jsp">Nutrition</a>
            <a href="Profile.jsp">Profile</a>
            <a href="index.jsp"><img class="logout" src="Images/shutdown.png"></a>
        </header>    
        <h1>Others</h1>
        
        <div class="metrics">
            <p>View Metrics</p>
            <div class="metrics1">
                
            </div>
            <br>
            <div class="metrics2">
               
            </div>
            <br>
            <div class="metrics3">
                
            </div>
        </div>
        
        <div class="history">
            <p>Goal History!!</p>
            <div class="history1">
                <p class ="what">Lorem ipsum<br>
                Lorem ipsum<br>
                Lorem ipsum</p>
            </div>
            <br>
            <div class="history2">
               <p>Lorem ipsum</p>
            </div>
        </div>
        
        <div class="feedback">
            <p>Feedback</p>
            <div class="textFeedback">
                <textarea class="input"></textarea>
                <textarea class="input"></textarea><br>
                <textarea class="input"></textarea>
                <textarea class="input"></textarea><br>
                <textarea class="input"></textarea> 
                <textarea class="input"></textarea><br>
                <textarea class="input"></textarea>
                <textarea class="input"></textarea><br>
            </div>
        </div>
        <button type="submit"><a href="SetGoals.jsp">Set Goals!!</a></button>
        <footer>
            
        </footer>
    </body>
</html>

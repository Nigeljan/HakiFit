<%-- 
    Document   : TrackProgress
    Created on : 12 3, 23, 9:34:53 AM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Track Progress</title>
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
        <h1>Track Progress!!</h1>
        <p>No matter how you performed, just make sure you do your best!!</p>
        
        <div class="progressStats">
            <p>Number of Reps: </p>
            <p>Minutes Spent: </p>
            <p>Number of Breaks: </p><br>
            <button type="submit" class="submit"><a href="Timer.jsp">Start Workout</a></button>
            <button type="submit" class="submit"><a href="HakiFit.jsp">Return to Main</a></button>
        </div>
    </body>
</html>

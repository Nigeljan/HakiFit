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

    <body class="wrkctg-body">
        <header class="wrkctg-header"> 
            <a href="HakiFit.jsp"><img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/></a>
            <a href="WorkoutCategories.jsp">Workouts</a>
            <a href="PersonalWorkout.jsp">Personal Workout</a>
            <a href="Nutrition.jsp">Nutrition</a>
            <a href="Profile.jsp">Profile</a>
            <a href="index.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>

        <h1 class="wrkctg-h1">Track Progress!!</h1>

        <p class="wrkctg-p">No matter how you performed, just make sure you do your best!!</p>
        
        <div class="wrkctg-div">
            <p class="wrkctg-p">Number of Reps: </p>
            <p class="wrkctg-p">Minutes Spent: </p>
            <p class="wrkctg-p">Number of Breaks: </p><br>
            <button type="submit" class="submit"><a href="Timer.jsp">Start Workout</a></button>
            <button type="submit" class="submit"><a href="HakiFit.jsp">Return to Main</a></button>
        </div>

 <footer class="wrkctg-footer">
            
 </footer>
    </body>
</html>

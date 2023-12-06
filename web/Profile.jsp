<%-- 
    Document   : Profile
    Created on : 12 2, 23, 3:33:39 PM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Profile</title>
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
        <h1 class="wrkctg-h1">Profile!!</h1>
        <p class="wrkctg-p">View your metrics, set goals, and view your history on this app!!</p>
        
         <div class="wrkctg-div">
            <span class="span1"><button type="submit"><a href="Post-WorkoutFeedback.jsp"><img src="Images/View Metrics.png" class="wrkctg-viewmetrics">View Metrics</a></button></div>
            <span class="span2"><button type="submit"><a href="SetGoals.jsp"><button type="submit"><img src="Images/Set Goals.jpg" class="wrkctg-setgoals">Set Goals</a></button></div>
            <span class="span3"><button type="submit"><a href="Post-WorkoutFeedback.jsp"><button type="submit"><img src="Images/History.png" class="wrkctg-history">View History</a></button></div>    
        </div>

    <footer class="wrkctg-footer">
    </footer>
    </body>
</html>

<%-- 
    Document   : Yoga
    Created on : 12 2, 23, 3:34:58 PM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Yoga</title>
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
        <h1>Yoga Workout!!</h1>
        <p>Yoga workouts involve a series of poses, stretches, and controlled breathing techniques <br>
           designed to enhance flexibility, balance, and mindfulness. Yoga promotes physical and <br>
           mental well-being by combining various postures with meditation and deep breathing exercises.</p>
        
        <div>
            <span class="startWorkout"><button type="submit"><a href="Timer.jsp"><img src="Images/Yoga.jpg">Start Workout</a></button></span>
            <span class="trackProgress"><button type="submit"><a href="TrackProgress.jsp"><button type="submit"><img src="Images/Track Progress.png">Track Progress</a></button></span>
        </div>
    </body>
</html>

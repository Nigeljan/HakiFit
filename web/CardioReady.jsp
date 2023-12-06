<%-- 
    Document   : CardioReady
    Created on : 12 3, 23, 11:43:39 AM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Are you Ready??</title>
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
        <h1>Are you Ready??</h1>
        <div>
            <span class="startWorkout">
                <button type="submit">
                    <a href="Timer.jsp">
                        <img src="Images/Cardio.jpg">Start Workout
                    </a>
                </button>
            </span>
            <span class="trackProgress">
                <button type="submit">
                    <a href="TrackProgress.jsp">
                        <button type="submit">
                            <img src="Images/Track Progress.png">Track Progress
                            </a></button>
            </span>
        </div>
        
    </body>
</html>

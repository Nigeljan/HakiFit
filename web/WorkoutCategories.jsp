<%-- 
    Document   : WorkoutCategories
    Created on : 12 2, 23, 3:32:42 PM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Workout Categories</title>
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
        <h1>Workout Categories</h1>
        <p>Please select a workout!!</p>
        
        <div>
            <span class="cardio"><button type="submit"><a href="Cardio.jsp"><img src="Images/Cardio.jpg">Cardio</a></button></div>
            <span class="strengthTraining"><button type="submit"><a href="StrengthTraining.jsp"><button type="submit"><img src="Images/Strength_Training.jpg">Strength Training</a></button></div>
            <span class="yoga"><button type="submit"><a href="Yoga.jsp"><button type="submit"><img src="Images/Yoga.jpg">Yoga</a></button></div>     
        </div>
        
        <footer>
            
        </footer>
    </body>
</html>

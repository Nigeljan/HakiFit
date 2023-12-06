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
    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit.jsp"><img class="wrkctg-hakifitlogo"src="Images/HakiFitLogo.png"/></a>
            <a href="WorkoutCategories.jsp">Workouts</a>
            <a href="PersonalWorkout.jsp">Personal Workout</a>
            <a href="Nutrition.jsp">Nutrition</a>
            <a href="Profile.jsp">Profile</a>
            <a href="index.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>

        <h1 class="wrkctg-h1">Workout Categories</h1>

        <p class="wrkctg-p">Please select a workout!!</p>
        
        <div class="wrkctg-div">
            <span class="wrkctg-span1">
                <button type="submit">
                    <a href="Cardio.jsp">
                        <img src="Images/Cardio.jpg" class="wrkctg-cardio">Cardio
                    </a></button>
            </span>

            <span class="wrkctg-span2">
                <button type="submit">
                    <a href="StrengthTraining.jsp">
                        <button type="submit">
                            <img src="Images/Strength_Training.jpg" class="wrkctg-strengthtraining">Strength Training
                    </a></button>
            </span>

            <span class="wrkctg-span3">
                <button type="submit">
                    <a href="Yoga.jsp">
                        <button type="submit">
                            <img src="Images/Yoga.jpg" class="wrkctg-yoga">Yoga
                    </a></button>
            </span>     
        </div>
        
        <footer class="wrkctg-footer">
            
        </footer>
    </body>
</html>
 

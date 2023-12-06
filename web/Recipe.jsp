<%-- 
    Document   : Recipe
    Created on : 12 3, 23, 10:05:47 AM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Recipes</title>
        <style>
            .wrkctg-div1,.wrkctg-otherrecipes1,.wrkctg-otherrecipes2,.wrkctg-otherrecipes3{
            width: 20%;
            margin: auto;
            min-height: 100px; /* Set a fixed height for the firstGoal section */
            border: 1px solid black; /* Optional: Add border for clarity */
            padding: 10px;
            background-color:#F4BF96;
            } 
            .wrkctg-div2{
                text-align:center;
            }
            .wrkctg-div1{
                left:100px;
            }
            .wrkctg-otherrecipes1,.wrkctg-otherrecipes2,.wrkctg-otherrecipes3{
                right:100px;
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

        <h1 class="wrkctg-h1">Recipes!!</h1>

         <div class="wrkctg-div1">
            <p class="wrkctg-p">Lagay ng picture ng pagkain</p>
            <p class="wrkctg-p">and name ng recipe dito</p>
            <p class="wrkctg-p">Lorem ipsum</p>
            <p class="wrkctg-p">Lorem ipsum</p>
            <p class="wrkctg-p">Lorem ipsum</p>
        </div>
    
        <div class="wrkctg-div2">
            <p class="wrkctg-p">Lagay ng mga ingredients</p>
            <p class="wrkctg-p">dito</p>
            <p class="wrkctg-p">Lorem ipsum</p>
            <p class="wrkctg-p">Lorem ipsum</p>
            <p class="wrkctg-p">Lorem ipsum</p>
        </div>
        
        <div class="wrkctg-otherrecipes1">  
        
        </div>
        <br>
        <div class="wrkctg-otherrecipes2">  
        
        </div>
        <br>
        <div class="wrkctg-otherrecipes3">  
        
        </div>

 <footer class="wrkctg-footer">
            
 </footer>
    </body>
</html>

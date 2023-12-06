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
            .recipeDishes,.otherRecipes1,.otherRecipes2,.otherRecipes3{
            width: 20%;
            margin: auto;
            min-height: 100px; /* Set a fixed height for the firstGoal section */
            border: 1px solid black; /* Optional: Add border for clarity */
            padding: 10px;
            background-color:#F4BF96;
            } 
            .ingredients{
                text-align:center;
            }
            .recipeDishes{
                left:100px;
            }
            .otherRecipes.otherRecipes2.otherRecipes3{
                right:100px;
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
        <h1>Recipes!!</h1>
        <div class="recipeDishes">
            <p>Lagay ng picture ng pagkain</p>
            <p>and name ng recipe dito</p>
            <p>Lorem ipsum</p>
            <p>Lorem ipsum</p>
            <p>Lorem ipsum</p>
        </div>
    
        <div class="ingredients">
            <p>Lagay ng mga ingredients</p>
            <p>dito</p>
            <p>Lorem ipsum</p>
            <p>Lorem ipsum</p>
            <p>Lorem ipsum</p>
        </div>
        
        <div class="otherRecipes1">  
        
        </div>
        <br>
        <div class="otherRecipes2">  
        
        </div>
        <br>
        <div class="otherRecipes3">  
        
        </div>
    </body>
</html>

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
            
            * {
                 margin: 0;
                 padding: 0;
                 box-sizing: border-box;
                 font-family: Inika;
               }

/* Apply general styling for the header */
            .wrkctg-header {
                background-color: #F4BF96;
                padding: 10px; /* Add padding if needed */
                display: flex;
                justify-content: space-between;
                align-items: center;
                width: 100%; /* Ensure the header spans the entire width */
                position: fixed; /* Change from static to fixed */
                top: 0; /* Stick to the top of the viewport */
                left: 0;
                z-index: 1000; /* Set a higher z-index to ensure it's on top of other elements */
            }

            .wrkctg-header a {
              color: black;
              text-decoration: none;
              margin: 0 10px;
            }

/* Apply styles to the footer */
            .wrkctg-footer {
                background-color: #F4BF96;
                height: 50px;
                position: fixed; /* Change from relative or static to fixed */
                bottom: 0;
                left: 0;
                width: 100%;
            }

/* Adjustments for the logout image */
            .wrkctg-logout {
              width: 20px;
              height: auto;
            }

            /* Optional: Apply some spacing to the page content */
            .wrkctg-body {
              padding: 20px;
            }
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

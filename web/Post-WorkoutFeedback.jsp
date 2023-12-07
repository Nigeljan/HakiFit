<%-- 
    Document   : Post-WorkoutFeedback
    Created on : 12 3, 23, 9:35:38 AM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Post-Workout Feedback</title>
        <style>
            
              
            * {
                 margin: 0;
                 padding: 0;
                 box-sizing: border-box;
                 font-family: Inika;
               }

               
         body {
              font-family: 'Inika', sans-serif;
              background-color:#FCF5ED;
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
            
            .wrkctg-p1, .wrkctg-p2,.wrkctg-p3{
               color: black;
               text-decoration: none;
               font-family: 'Inika', sans-serif;
               text-align:center; 
               
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

            .wrkctg-h1 {
              color: black;
              font-size: 36px;
              text-align:center;
              margin-top:90px
            }
            
            /* Optional: Apply some spacing to the page content */
            .wrkctg-body {
              padding: 20px;
            }
            
             .wrkctg-metrics1,.wrkctg-metrics2,.wrkctg-metrics3,.wrkctg-history1,.wrkctg-history2,
            width: 20%;
            margin: auto;
            min-height: 100px; /* Set a fixed height for the firstGoal section */
            border: 1px solid black; /* Optional: Add border for clarity */
            padding: 10px;
            background-color:#F4BF96;
            } 
            .wrkctg-input{
                background-color:#CE5A67;
                border: 1px solid black; 
            }
            .wrkctg-textfeedback{
                overflow-y: scroll; /* Enable vertical scrollbar */
            }
            
            .wrkctg-div1 {
                font-family: 'Inika', sans-serif;
                position: relative;
                width:100%;
                height:100%; 
                margin-right:300px;
                margin-left:-400px;
                border-radius: 30px;
                text-align:center;
                float: left;
            }
            
            .wrkctg-div2 {
                font-family: 'Inika', sans-serif;
                position: relative;
                width: 100%; /* Adjust the width as needed */
                height: 100%;
                margin-top:20px;
                border-radius: 30px;
                text-align: center;
                background-size: cover;
            }
             
            .wrkctg-div3{
                font-family: 'Inika', sans-serif;
                   position: relative;
                   width: 100%; /* Adjust the width as needed */
                   height: 100%;
                   float: right;
                   margin-right:-400px;/* Reset the right margin */
                   margin-left:500px;
                   margin-top:-500px;
                   border-radius: 30px;
                   text-align: center;
                   
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
        <h1 class="wrkctg-h1">Others</h1>
        
        <div class="wrkctg-div1">
            <p class="wrkctg-p1">View Metrics</p>
            <div class="wrkctg-metrics1">
                
            </div>
            <br>
            <div class="wrkctg-metrics2">
               
            </div>
            <br>
            <div class="wrkctg-metrics3">
                
            </div>
        </div>
        
        
        <div class="wrkctg-div2">
            <div class="wrkctg-history1">
                <p class="wrkctg-p2">History!!</p>
                <p class ="what">Lorem ipsum<br>
                Lorem ipsum<br>
                Lorem ipsum</p>
            </div>
            <br>
            <div class="wrkctg-history2">
               <p>Lorem ipsum</p>
            </div>
        </div>
        
        <div class="wrkctg-div3">
            <p class="wrkctg-p3">Feedback</p>
            <div class="wrkctg-textfeedback">
                <textarea class="wrkctg-input"></textarea>
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea>
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea> 
                <textarea class="wrkctg-input"></textarea><br>
                <textarea class="wrkctg-input"></textarea>
                <textarea class="wrkctg-input"></textarea><br>
            </div>
        </div>
        <button type="submit"><a href="SetGoals.jsp">Set Goals!!</a></button>
        <footer class="wrkctg-footer">
            
        </footer>
    </body>
</html>

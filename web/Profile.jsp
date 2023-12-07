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
        <style>
            
        * {
                 margin: 0;
                 padding: 0;
                 box-sizing: border-box;
                 font-family: Inika;
               }
               
            body, h1, p, button {
                 margin: 0;
                 padding: 0;
             }

            /* Set the font family for the entire document */
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

            /* Style the main heading */
            .wrkctg-h1 {
              color: black;
              font-size: 36px;
              text-align:center;
              margin-top:90px
            }

            /* Style the paragraph text */
            .wrkctg-p {
              color: #1E1E1E;
              font-size: 18px;
              text-align:center;
              margin-top:30px
            }

           
            /* Style the workout categories container */
            .wrkctg-div {
              display: flex;
              justify-content: space-evenly;
              margin-top: 20px;
              border-radius:10px;
            
            }

            .wrkctg-span1 button,
                .wrkctg-span2 button,
                .wrkctg-span3 button {
                    margin-top: 30px;
                    margin-left: 20px;
                    height: 220px;
                    width: 300px;
                    position: relative; /* Ensure relative positioning for absolute child */
                }
                
            .wrkctg-span1 button{
                    height: 225px;
                    width: 300px;
                }

                .wrkctg-span1 img,
                .wrkctg-span2 img,
                 .wrkctg-span3 img {
                        width: 100%;
                        height:100%;
                        border-radius: 15px;
                        border-style: solid;
                        border-width: thin;
                        position: absolute; /* Position the image absolutely within the button */
                        top: 0;
                        left: 0;
                    }

                .wrkctg-span1 .wrkctg-highkneesp,
                .wrkctg-span2 .wrkctg-highkneesp,
                .wrkctg-span3 .wrkctg-highkneesp {
                    position: absolute;
                    bottom: 0;
                    left: 0;
                    width: 100%;
                    text-align: center;
                    padding: 10px;
                    color:black;
                    font-family:Inika;
                    overflow: hidden;
                    position: relative;
                    width: 300px;
                    height: 15%;
                    margin-top:170px;
                    padding-bottom:30px;
                    background: rgb(206, 90, 103);
                    border: 3px solid rgb(0, 0, 0);
                    border-radius: 30px;
                    box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);
                    font-family: 'Inika', sans-serif;
                }
                
                .wrkctg-span1 .wrkctg-highkneesp{
                    margin-top:180px;
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

            /* Additional styles for buttons and links */
            button {
              background-color: #CE5A67;
              color: white;
              cursor: pointer;
              border-radius:20px;
              border-style:solid;
              border-width:thin;
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
            
            </style>
    </head>
    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit.jsp"><img class="wrkctg-hakifitlogo"  src="Images/HakiFitLogo.png"/></a>
            <a href="WorkoutCategories.jsp">Workouts</a>
            <a href="PersonalWorkout.jsp">Personal Workout</a>
            <a href="Nutrition.jsp">Nutrition</a>
            <a href="Profile.jsp">Profile</a>
            <a href="index.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>

        <h1 class="wrkctg-h1">Profile!!</h1><br>
        
        <p class="wrkctg-p"> View your metrics, set goals, and view your history on this app!!</p>
        
        <div class="wrkctg-div">
            <span class="wrkctg-span1">
                <button type="submit">
                    <a href="Post-WorkoutFeedback.jsp">
                        <img src="Images/View Metrics.png"  class="wrkctg-highknees"><p class="wrkctg-highkneesp">View Metrics
                        </p></a></button>
            </span>

            <span class="wrkctg-span2">
                <button type="submit">
                    <a href="SetGoals.jsp">
                        <img src="Images/Set Goals.jpg" class="wrkctg-squatjumps"><br><p class="wrkctg-highkneesp">Set Goals</p>
                    </a></button>
            </span>

            <span class="wrkctg-span3">
                <button type="submit">
                    <a href="Post-WorkoutFeedback.jsp">
                        <img src="Images/Views History.png" class="wrkctg-jogging"><br><p class="wrkctg-highkneesp">View History</p>
                    </a></button>
            </span>
        </div>

      <footer class="wrkctg-footer">
            
      </footer>  

    </body>
</html>

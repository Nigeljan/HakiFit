<%-- 
    Document   : Yoga
    Created on : 12 2, 23, 3:34:58 PM
    Author     : Nigel Jan Naniong
--%>
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
 .wrkctg-span2 button{
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
    .wrkctg-span2 img{
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
    .wrkctg-span2 .wrkctg-highkneesp{
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
    background-color: rgba(244, 191, 150, 0.93); /* Change the color of rectangles */
    width: 100%;
    position: absolute;
    bottom: 0;
}

.orange-rectangles {
    display: flex;
    justify-content: space-between;
    padding: 20px 0;
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
</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HakiFit Yoga</title>
    </head>

    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="${initParam.headerValue}"/></a>
            <a href="HakiFit_WorkoutCategories.jsp">Workouts</a>
            <a href="HakiFit_Nutrients_List.jsp">Nutrition</a>
            <a href="HakiFit_Profile.jsp">Profile</a>
            <a href="HakiFit_Login.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>

        <h1 class="wrkctg-h1">Yoga Workout!!</h1><br>
        
        <p class="wrkctg-p"> Yoga workouts involve a series of poses, stretches, and controlled breathing techniques <br>
                             designed to enhance flexibility, balance, and mindfulness. Yoga promotes physical and <br>
                             mental well-being by combining various postures with meditation and deep breathing exercises.</p>
        
        <div class="wrkctg-div">
            <span class="wrkctg-span1">
                <button type="submit">
                    <a href="HakiFit_Exercise_Ready.jsp">
                        <img src="Images/Yoga.jpg"  class="wrkctg-highknees"><p class="wrkctg-highkneesp">Start Workout
                        </p></a></button>
            </span>            
        </div>

        <footer class="wrkctg-footer">
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
                ${initParam.footerValue}
            </div>
        </footer> 

    </body>
</html>

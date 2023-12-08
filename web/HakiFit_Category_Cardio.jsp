<%-- 
    Document   : Cardio
    Created on : 12 2, 23, 3:34:47 PM
    Author     : Nigel Jan Naniong
--%>
<style>
/* Media query for smaller screens */
  @media only screen and (max-width: 768px) {
    /* Modify styles for smaller screens here */
    .wrkctg-h1 {
      font-size: 28px;
      margin-top: 50px;
    }

    .wrkctg-p {
      font-size: 16px;
      margin-top: 20px;
    }

    .wrkctg-span1 button,
    .wrkctg-span2 button,
    .wrkctg-span3 button {
      width: 100%;
      margin-top: 10px;
    }

    .wrkctg-span1 img,
    .wrkctg-span2 img,
    .wrkctg-span3 img {
      border-radius: 10px;
    }

    .wrkctg-span1 .wrkctg-highkneesp,
    .wrkctg-span2 .wrkctg-highkneesp,
    .wrkctg-span3 .wrkctg-highkneesp {
      font-size: 14px;
      margin-top: 100px;
      padding-bottom: 20px;
    }
  }

  /* Media query for larger screens */
  @media only screen and (min-width: 1200px) {
    /* Modify styles for larger screens here */
    .wrkctg-h1 {
      font-size: 42px;
      margin-top: 120px;
    }

    .wrkctg-p {
      font-size: 20px;
      margin-top: 40px;
    }

    .wrkctg-span1 button,
    .wrkctg-span2 button,
    .wrkctg-span3 button {
      width: 350px;
      height: 260px;
      margin-top: 20px;
    }

    .wrkctg-span1 img,
    .wrkctg-span2 img,
    .wrkctg-span3 img {
      border-radius: 15px;
    }

    .wrkctg-span1 .wrkctg-highkneesp,
    .wrkctg-span2 .wrkctg-highkneesp,
    .wrkctg-span3 .wrkctg-highkneesp {
      font-size: 18px;
      margin-top: 190px;
      padding-bottom: 40px;
    }
  }
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

.wrkctg-header button {
    width: 100%;
    height: 40px;
    color: #000;
    border-radius: 10px;
    border: 3px solid #000;
    background: #FCF5ED;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    cursor: pointer;
    transition: background-color 0.3s;
}

.wrkctg-header button:hover {
    background-color: #CE5A67;
}

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
            height: 100%;
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
        box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25)
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
    response.setHeader("Pragma", "no-cache");
    
    response.setHeader("Expires", "0");
    
    if(session.getAttribute("username")==null && session.getAttribute("password")==null)
    {
        response.sendRedirect("HakiFit_Login.jsp");
    }
    
     String buttonValue_fromp1 = (String) request.getAttribute("buttonValue_fromp1");
        if (buttonValue_fromp1 != null) {
            session.setAttribute("buttonValue_fromp1", buttonValue_fromp1);
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HakiFit Cardio</title>
    </head>

    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="${initParam.headerValue}"/></a>
            <a href="HakiFit_WorkoutCategories.jsp">Workouts</a>
            <a href="HakiFit_Nutrients_List.jsp">Nutrition</a>
            <a href="HakiFit_Profile.jsp">Profile</a>
            <form action="Logout"><button type="submit"><img class="wrkctg-logout" src="Images/shutdown.png"></button></form>
        </header>

        <h1 class="wrkctg-h1">Cardio Workout!!</h1><br>
        
        <p class="wrkctg-p"> Cardio exercises, short for cardiovascular exercises, are activities that elevate your heart <br>
            rate and improve the efficiency of your cardiovascular system.. Regular cardio workouts not <br>
            only enhance cardiovascular health but also aid in weight management, boost mood <br>
            through the release of endorphins, and contribute to overall fitness and stamina.</p>
        
        <form action="ExerciseSelection" method="get">
        <div class="wrkctg-div">
            <span class="wrkctg-span1">
                <button type="submit" name="button" value="c_highKnees">
                    <img src="Images/High Knees.jpg"  class="wrkctg-highknees">
                    <p class="wrkctg-highkneesp">High Knees</p>
                </button>
            </span>

            <span class="wrkctg-span2">
                <button type="submit" name="button" value="c_squatJumps">
                        <img src="Images/Squat Jumps.jpg" class="wrkctg-squatjumps">
                        <p class="wrkctg-highkneesp">Squat Jumps</p>
                </button>
            </span>

            <span class="wrkctg-span3">
                <button type="submit" name="button" value="c_jogging">
                    <a href="HakiFit_Exercise_Ready.jsp">
                        <img src="Images/Jogging.jpg" class="wrkctg-jogging"><br><p class="wrkctg-highkneesp">Jogging</p>
                    </a></button>
            </span>
        </div>
        </form>

      <footer class="wrkctg-footer">
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
                ${initParam.footerValue}
            </div>
      </footer>  
    </body>
</html>

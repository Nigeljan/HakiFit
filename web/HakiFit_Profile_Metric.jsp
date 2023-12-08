<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Inika;
}


body {
    font-family: 'Inika', sans-serif;
    background-color: #FCF5ED;
    overflow: hidden; /* Prevent scrolling */

}

/* Apply general styling for the header */
.wrkctg-header {
    background-color: #F4BF96;
    padding: 10px;
    /* Add padding if needed */
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    /* Ensure the header spans the entire width */
    position: fixed;
    /* Change from static to fixed */
    top: 0;
    /* Stick to the top of the viewport */
    left: 0;
    z-index: 1000;
    /* Set a higher z-index to ensure it's on top of other elements */
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

/* Adjustments for the logout image */
.wrkctg-logout {
    width: 20px;
    height: auto;
}

/* Optional: Apply some spacing to the page content */


.wrkctg-setgoals {
    width: 20%;
    margin: auto;
    min-height: 100px;
    /* Set a fixed height for the firstGoal section */
    overflow-y: scroll;
    /* Enable vertical scrollbar */
    border: 1px solid black;
    /* Optional: Add border for clarity */
    padding: 10px;
    left: 100px;
    background-color: #F4BF96;
}

.wrkctg-goalhistory {
    width: 20%;
    margin: auto;
    min-height: 100px;
    /* Set a fixed height for the firstGoal section */
    border: 1px solid black;
    /* Optional: Add border for clarity */
    padding: 10px;
    right: 100px;
    background-color: #F4BF96;
}

.wrkctg-input {
    background-color: #CE5A67;
    border: 1px solid black;
}

.wrkctg-h1 {
    text-align: center;
    font-family: Inika;
    color: black;
    padding: 20px;
    margin-top: 20px; /* Adjust the margin-top value as needed */
}

.wrkctg-box-1 {
    background-color: #F4BF96;
    border: 1px solid rgb(245, 217, 217);
    width: 630px;
    height: 295px;
    margin: auto;
    min-height: 100px;
    border: 2px solid black; /* Added black border */
    border-radius: 10px;
    padding: 5px;
    right: 360px; /* Added 'px' to the right property */
    position: relative;
}

.wrkctg-box-2 {
    background-color: #F4BF96;
    border: 2px solid black; /* Added black border */
    width: 637px;
    height: 295px;
    margin: auto;
    min-height: 100px;
    border-radius: 10px;
    padding: 10px;
    left: 370px; /* Added 'px' to the left property */
    top: -295px;
    position: relative;
}

.wrkctg-rectangle {
    position: relative;
    top: -278px;
    background-color: #F4BF96;
    border: 2px solid black; /* Added black border */
    width: 600%;
    margin: auto;
    min-height: 118px;
    border-radius: 10px;
    padding: 10px;
    max-width: 1280px; /* Changed 'width' to 'max-width' */
}

p {
    font-weight: bold;
    font-size: 20px;
    font-family: Inika;
    color: black;
    text-align: center;
    margin-bottom: 20px; /* Adjust the margin-bottom value as needed */
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
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HakiFit Goals!!</title>
</head>

<body class="wrkctg-body">
    <header class="wrkctg-header">
        <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="${initParam.headerValue}" /></a>
        <a href="HakiFit_WorkoutCategories.jsp">Workouts</a>
        <a href="HakiFit_Nutrients_List.jsp">Nutrition</a>
        <a href="HakiFit_Profile.jsp">Profile</a>
        <a href="HakiFit_Login.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        <form action="Logout"><button type="submit"><img class="wrkctg-logout" src="Images/shutdown.png"></button></form>
    </header>

    <h1 class="wrkctg-h1">Metrics</h1>
    <div class="wrkctg-box-1">
        <p>Average Number of Exercise per Day: </p>
        <p>Average Time per Day</p>
    </div>

    <div class="wrkctg-box-2">
        <p>Frequent Category You chose:</p>
        <p>Frequent Excercise you do:</p>
    </div>
    <div class="wrkctg-rectangle">
        <p>Nice You've done [TIME] today!</p>
        <p>Favorite Category of Exercise</p>
        <p>Favorite Exercise:</p>
    </div>

    <footer class="wrkctg-footer">
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
                ${initParam.footerValue}
            </div>
    </footer>
</body>
</html>

<style>
*{
    overflow: auto;
}
.wrkctg-stopbutton,
.wrkctg-pausebutton{
    width: 208px;
    height: 188px;
    background: center;
    background-size: cover;
    margin-left: 470px; /* Adjust as needed for spacing between images */
    margin-top:40px;
}

.wrkctg-stopbutton{
    margin-left:25px;
    height:100%;
}

.wrkctg-pausebutton{
    margin-right:25px;
}

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

body {
    font-family: 'Inika', sans-serif;
    background-color:#FCF5ED;
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

.wrkctg-buttons {
    display: flex;
    justify-content: center;
    margin-top: 40px;
}

.wrkctg-pausebutton, .wrkctg-stopbutton {
    width: 208px;
    height: 188px;
    background: center;
    background-size: cover;
    margin: 0 25px; /* Adjust margin as needed */
}

#timer{
    overflow: hidden;
    position: relative;
    width: 80%; /* Adjust width for responsiveness */
    height: auto; /* Adjust height for responsiveness */
    margin: 20px auto;
    font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
    Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
    "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
    "Source Han Sans CN",sans-serif;
    color: rgb(30, 30, 30);
    font-size: 10vw; /* Responsive font size based on viewport width */
    line-height: 1.5;
    font-weight: 400;
    text-align:center;
    margin-top:30px;
} 


.wrkctg-h3{  
    position: relative;
    width: 80%; /* Adjust width for responsiveness */
    height: auto; /* Adjust height for responsiveness */
    margin: 20px auto;
    font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
    Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
    "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
    "Source Han Sans CN", sans-serif;
    color: rgb(30, 30, 30);
    font-size: 3vw; /* Responsive font size based on viewport width */
    line-height: 1.5;
    font-weight: 400;
    overflow: hidden;
    text-align:center;
}

@media screen and (max-width: 768px) {
    /* Adjust styles for smaller screens */
    #timer {
        font-size: 8vw; /* Adjust font size for smaller screens */
    }

    .wrkctg-h3 {
        font-size: 4vw; /* Adjust font size for smaller screens */
    }

    .wrkctg-buttons {
        flex-direction: column; /* Change button layout for smaller screens */
        align-items: center; /* Center align buttons for smaller screens */
        margin-top: 10px; /* Adjust margin for smaller screens */
    }

    .wrkctg-pausebutton,
    .wrkctg-stopbutton {
        width: 100px; /* Adjust button width for smaller screens */
        height: auto; /* Adjust button height for smaller screens */
        margin: 5px 0; /* Adjust margin for smaller screens */
    }
}
</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Timer</title>
    </head>
    <body onload="startTimer()">

        <header class="wrkctg-header">
            <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="${initParam.headerValue}"/></a>
        </header>  

        <div id="timer"></div>
        <h3 class="wrkctg-h3">Stay Focus and Keep Grinding!!!</h3>
        
        <div class="wrkctg-buttons">
            <a onclick="pauseResumeTimer()">
                <img src="Images/Pause Button.png" class="wrkctg-pausebutton">
            </a>
            <a onclick="stopTimer()">
                <img src="Images/Stop Button.png" class="wrkctg-stopbutton">
            </a>
        </div>

        <footer class="wrkctg-footer">
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
                ${initParam.footerValue}
            </div>
        </footer>
    </body>
</html>
<script>
    var timerRunning = false;
    var startTime;
    var pauseTime = 0;
    var timerInterval;

    function startTimer() {
        startTime = Date.now() - pauseTime;
        timerRunning = true;
        timerInterval = setInterval(displayTime, 10);
    }

    function displayTime() {
        var currentTime = Date.now() - startTime;
        var formattedTime = new Date(currentTime).toISOString().substr(11, 8);
        document.getElementById('timer').innerHTML = timerRunning ? formattedTime : 'PAUSED';
    }

    function pauseResumeTimer() {
        if (timerRunning) {
            timerRunning = false;
            clearInterval(timerInterval);
            pauseTime = Date.now() - startTime;
            displayTime();
        } else {
            startTimer();
        }
    }

    function stopTimer() {
        if (timerRunning) {
            timerRunning = false;
            clearInterval(timerInterval);
            pauseTime = 0;
        }
        var elapsedTime = pauseTime > 0 ? pauseTime : Date.now() - startTime;
        saveProgress(elapsedTime);
        window.location.href = 'HakiFit_Profile_TrackProgress.jsp'; // Redirect to the progress tracking servlet
    }

    function saveProgress(elapsedTime) {
        // Send elapsedTime to the server to track progress (e.g., write to a file)
        // You can use AJAX or submit a form to send this data to the server
        // This example demonstrates the logic; actual implementation may differ
        var xhr = new XMLHttpRequest();
        
        xhr.open('POST', 'ProgressTrackingServlet', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.send('elapsedTime=' + elapsedTime);
    }
</script>

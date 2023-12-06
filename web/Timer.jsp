<%-- 
    Document   : Timer
    Created on : 12 3, 23, 10:00:35 AM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Timer</title>
    </head>
    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit.jsp"><img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/></a>
        </header>
        <h1 id="timer" class="wrkctg-h1">1:00</h1>
        <h3 class="wrkctg-h3">Stay Focus and Keep Grinding!!!</h3>
        
        <button onclick="startTimer()">Start</button>
        
        <a href="Pause.jsp" onclick="pauseTimer()">
            <img src="Images/Pause Button.png" class="wrkctg-pausebutton"/>
        </a>
       
        <a href="TrackProgress.jsp" onclick="stopTimer()">
            <img src="Images/Stop Button.png" class="wrkctg-stopbutton"/>
        </a>

        <script class="wrkctg-script">
            // Retrieve the remaining time from the URL
            var urlParams = new URLSearchParams(window.location.search);
            var remainingTime = urlParams.get('remainingTime');

            // Set the initial time
            var seconds = remainingTime ? parseInt(remainingTime) : 60;

            var timerDisplay = document.getElementById('timer');
            var timerInterval;

            function updateTimer() {
                var minutes = Math.floor(seconds / 60);
                var remainingSeconds = seconds % 60;

                var displayText = minutes + ':' + (remainingSeconds < 10 ? '0' : '') + remainingSeconds;

                timerDisplay.textContent = displayText;

                if (seconds > 0) {
                    seconds--;
                } else {
                    clearInterval(timerInterval);
                    alert('Time is up!');
                }
            }

            function startTimer() {
                // Check if the timer is already running to avoid multiple intervals
                if (!timerInterval) {
                    timerInterval = setInterval(updateTimer, 1000);
                }
            }

            function pauseTimer() {
                clearInterval(timerInterval);
            }

            function stopTimer() {
                clearInterval(timerInterval);
                seconds = 60;
                updateTimer(); // Update the display to reset the timer
            }

            // Initialize the timer when the page loads
            updateTimer();
        </script>

 <footer class="wrkctg-footer">
            
 </footer>
    </body>
</html>

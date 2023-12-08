<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Timer</title>
    <script>
        var timerRunning = false;
        var startTime;
        var pauseTime = 0;

        function startTimer() {
            startTime = Date.now() - pauseTime;
            timerRunning = true;
            displayTime();
        }

        function displayTime() {
            var currentTime = Date.now() - startTime;
            var formattedTime = new Date(currentTime).toISOString().substr(11, 8);
            document.getElementById('timer').innerHTML = formattedTime;
            if (timerRunning) {
                setTimeout(displayTime, 10);
            }
        }

        function pauseTimer() {
            if (timerRunning) {
                timerRunning = false;
                pauseTime = Date.now() - startTime;
                document.getElementById('timer').innerHTML = 'PAUSED';
            } else {
                startTimer();
            }
        }

        function stopTimer() {
            if (timerRunning) {
                timerRunning = false;
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
    
    <style>
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
                background-color: #F4BF96;
                height: 50px;
                position: fixed; /* Change from relative or static to fixed */
                bottom: 0;
                left: 0;
                width: 100%;
            }   
            
            
         #timer{
                overflow: hidden;
                position: relative;
                width: 805px;
                height: 261px;
                margin: 0 auto;
                font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
                Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
                "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
                "Source Han Sans CN",sans-serif;
                color: rgb(30, 30, 30);
                font-size: 200px;
                font-weight: 400;
                line-height: 260.6px;
                text-align:center;
                margin-top:30px;
            } 
            
            
          .wrkctg-h3{  
                position: relative;
                width: 1079px;
                height: 100px;
                margin: 0 auto;
                font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
                Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
                "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
                "Source Han Sans CN", sans-serif;
                color: rgb(30, 30, 30);
                font-size: 50px;
                font-weight: 400;
                line-height: 91.21px;
                overflow: hidden;
                text-align:center;
          }
    </style>
</head>
<body onload="startTimer()">
    
    <header class="wrkctg-header">
         <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/></a>
    </header>  
    
    <div id="timer"></div>
    <h3 class="wrkctg-h3">Stay Focus and Keep Grinding!!!</h3>
    <a onclick="pauseTimer()"><img src="Images/Pause Button.png" class="wrkctg-pausebutton"></a>
    <a onclick="stopTimer()"><img src="Images/Stop Button.png" class="wrkctg-stopbutton"></a>
    
    <footer class="wrkctg-footer">
        
    </footer>
</body>
</html>

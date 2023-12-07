<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Timer</title>
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
            
            .wrkctg-h1{
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
            
           .wrkctg-div {
                display: flex; /* Use flex container to align items in a row */
                justify-content: center; /* Adjust as needed for spacing between images */
                align-items: center; /* Center items vertically */
                width: 100%; /* Adjust the width as needed */
              }

              .wrkctg-stopbutton,
              .wrkctg-pausebutton{
                width: 208px;
                height: 188px;
                background: center;
                background-size: cover;
                margin: 0 auto; /* Adjust as needed for spacing between images */
              }
              
              .wrkctg-stopbutton{
                  margin-left:25px;
                  height:100%;
              }
              
              .wrkctg-pausebutton{
                  margin-right:25px;
              }
              
              button{
                  position: relative;
                  width: 100px;
                  height: 55px;
                  margin: -30px 0px 50px 670px;
                  background: rgb(206, 90, 103);
                  border: 3px solid rgb(0, 0, 0);
                  border-radius: 20px;
                  overflow: hidden;
                  box-sizing: border-box;
                  cursor: pointer;
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
            
        </style>
    </head>
    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit.jsp"><img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/></a>
        </header>
        <h1 id="timer" class="wrkctg-h1">1:00</h1>
        <h3 class="wrkctg-h3">Stay Focus and Keep Grinding!!!</h3>
        
        
        
       <div class="wrkctg-div"> 
        <a href="Pause.jsp" onclick="pauseTimer()">
            <img src="Images/Pause Button.png" class="wrkctg-pausebutton"/>
        </a>
       
        <a href="TrackProgress.jsp" onclick="stopTimer()">
            <img src="Images/Stop Button.png" class="wrkctg-stopbutton"/>
        </a>
       </div>
        
        <button onclick="startTimer()">Start</button>

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

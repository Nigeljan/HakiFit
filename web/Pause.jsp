<%-- 
    Document   : Pause
    Created on : 12 3, 23, 9:35:05 AM
    Author     : Nigel Jan Naniong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HakiFit Pause/Resume/End</title>
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
                width: 790px;
                height: 220px;
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
                width: 900px;
                height: 100px;
                margin: 0 auto;
                font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
                Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
                "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
                "Source Han Sans CN", sans-serif;
                color: rgb(30, 30, 30);
                font-size: 40px;
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
              .wrkctg-resumebutton{
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
              
              .wrkctg-resumebutton{
                  margin-right:25px;
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
         <a href="HakiFit.jsp"><img class="hakiFitLogoHeader" src="Images/HakiFitLogo.png"/></a>
        </header>  
        <h1 class="wrkctg-h1">Pause!!</h1>
        <h3 class="wrkctg-h3">It’s okay to take a break! Click resume is you wish to continue</h3>
        
      <div class="wrkctg-div">   
      <a href="Timer.jsp?remainingTime=" onclick="resumeTimer()">
        <img src="Images/Resume Button.png" class="wrkctg-resumebutton"/>
      </a>
        
        <a href="TrackProgress.jsp" onclick="stopTimer()">
                <img src="Images/Stop Button.png" class="wrkctg-stopbutton"/>
        </a>
      </div> 
        
        <script> 
        var seconds = 60; // Initial time
        var timerInterval;

    function updateTimer() {
        var minutes = Math.floor(seconds / 60);
        var remainingSeconds = seconds % 60;

        var displayText = minutes + ':' + (remainingSeconds < 10 ? '0' : '') + remainingSeconds;

        document.getElementById('timer').textContent = displayText;

        if (seconds > 0) {
            seconds--;
        } else {
            clearInterval(timerInterval);
            alert('Time is up!');
        }
    }

    function resumeTimer() {
        // Get the remaining time from the query parameter
        var queryString = window.location.search;
        var urlParams = new URLSearchParams(queryString);
        var remainingTime = urlParams.get('remainingTime');

        // Set the remaining time if available, otherwise use the default value (60 seconds)
        seconds = remainingTime ? parseInt(remainingTime) : 60;

        timerInterval = setInterval(updateTimer, 1000);
    }

    function stopTimer() {
        clearInterval(timerInterval);
        seconds = 60;
        updateTimer(); // Update the display to reset the timer
    }

    updateTimer();
</script>

<footer class="wrkctg-footer">

</footer>
        
    </body>
</html>

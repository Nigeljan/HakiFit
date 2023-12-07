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
</head>
<body onload="startTimer()">
    <div id="timer"></div>
    <button onclick="pauseTimer()">Pause</button>
    <button onclick="stopTimer()">Stop/Exit</button>
</body>
</html>
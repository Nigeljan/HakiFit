<%-- Document : HakiFit Created on : 12 2, 23, 2:32:15 PM Author : Nigel Jan Naniong --%>
    <style>
        @media only screen and (max-width: 768px) {
            .wrkctg-content {
                flex-direction: column;
                align-items: center;
            }

            .orange-rectangles {
                display: flex;
                justify-content: space-between;
                padding: 20px 0;
            }

            .wrkctg-left {
                position: relative;
                top: initial;
                left: initial;
                width: 100%;
                margin-right: 0;
                text-align: center;
            }

            .wrkctg-right {
                position: relative;
                top: initial;
                right: initial;
                width: 100%;
                height: auto;
                margin-top: 20px;
                /* Adjust margin as needed */
            }

            .circle {
                width: 80%;
                height: auto;
                margin: auto;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }

            .circle img {
                width: 80px;
                /* Adjust image size for smaller screens */
                margin: 10px;
                /* Adjust spacing between images */
            }
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Inika;
        }

        body {
            font-family: 'Inika', sans-serif;
            background-color: #FCF5ED;
        }

        /* Apply general styling for the header */
        .wrkctg-header {
            background-color: #F4BF96;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
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
            background-color: rgba(244, 191, 150, 0.93);
            /* Change the color of rectangles */
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

        .wrkctg-content {
            display: flex;
            align-items: flex-start;
            justify-content: space-between;
            margin-top: 80px;
            /* Adjust margin as needed */
            padding: 20px;
            /* Adjust padding as needed */
        }

        .wrkctg-left {
            position: absolute;
            top: 50%;
            left: 30%;
            transform: translate(-50%, -50%);
            width: 50%;
            /* Adjust width as needed */
            margin-right: 20px;
            /* Add margin between left and right content */
        }

        .wrkctg-headerlogo {
            position: relative;
            margin-bottom: 20px;
            text-align: center;
            right: 12%;
        }

        .wrkctg-headerlogo img {
            position: relative;
            right: 1px;
            top: 13px;
        }

        .wrkctg-p {
            position: relative;
            width: 500px;
            text-align: center;
            justify-content: center;
        }

        .wrkctg-right {
            position: absolute;
            top: 50px;
            right: 50px;
            width: 50%;
            height: calc(100% - 120px);
            /* Adjust the height to fit the remaining area */
            overflow: hidden;
            /* Hide any overflow content */
        }

        .circle {
            position: relative;
            border-radius: 50%;
            width: 500px;
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: auto;
        }

        .circle img {
            position: absolute;
            width: 100px;
            /* Adjust the image size */
            height: auto;
            /* Adjust the image size */
            margin: 0 100px;
            /* Adjust the horizontal spacing between images */
            transform-origin: center;
        }

        .circle .wrkctg-hakifitlogo {
            width: 150px;
            /* Adjust the HakiFit logo size */
            height: auto;
            /* Adjust the HakiFit logo size */
            margin: 0;
            /* Reset margin to ensure it's centered */
        }

        .wrkctg-hakifitlogo {
            z-index: 1;
            /* Set the logo image to be above others */
        }

        .wrkctg-heart {
            transform: rotate(-45deg) translate(120px) rotate(45deg);
        }

        .wrkctg-muscle {
            transform: rotate(-90deg) translate(120px) rotate(90deg);
        }

        .wrkctg-yoga {
            transform: rotate(-135deg) translate(120px) rotate(135deg);
        }

        .wrkctg-track {
            transform: rotate(45deg) translate(120px) rotate(-45deg);
        }

        .wrkctg-history {
            transform: rotate(90deg) translate(120px) rotate(-90deg);
        }

        .wrkctg-postworkout {
            transform: rotate(135deg) translate(120px) rotate(-135deg);
        }
    </style>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" );
            response.setHeader("Pragma", "no-cache" ); response.setHeader("Expires", "0" );
            if(session.getAttribute("username")==null && session.getAttribute("password")==null) {
            response.sendRedirect("HakiFit_Login.jsp"); } %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>HakiFit</title>
            </head>

            <body class="wrkctg-body">
                <header class="wrkctg-header">
                    <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="${initParam.headerValue}" /></a>
                    <a href="HakiFit_WorkoutCategories.jsp">Workouts</a>
                    <a href="HakiFit_Nutrients_List.jsp">Nutrition</a>
                    <a href="HakiFit_Profile.jsp">Profile</a>
                    <form action="Logout"><button type="submit"><img class="wrkctg-logout"
                                src="Images/shutdown.png"></button></form>
                </header>

                <div class="wrkctg-content">
                    <div class="wrkctg-left">
                        <div class="wrkctg-headerlogo">
                            <h1 class="wrkctg-h1">This is <img class="wrkctg-hakifitlogo2"
                                    src="Images/HakiFitLogo.png" /></h1>
                        </div>
                        <p class="wrkctg-p">
                            An online playground where enjoyment and fitness collide! Envision a society where working
                            up a sweat is as thrilling as finishing a level in your preferred video game. Now introduce
                            yourself to HakiFit, the fitness web application that makes working out a fantastic journey.
                        </p>
                    </div>

                    <div class="wrkctg-right">
                        <div class="circle">
                            <img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png" />
                            <img class="wrkctg-heart" src="Images/Heart.png" alt="heart" />
                            <img class="wrkctg-muscle" src="Images/Muscle.png" alt="muscle" />
                            <img class="wrkctg-yoga" src="Images/yoga.png" alt="yoga" />
                            <img class="wrkctg-track" src="Images/track.png" alt="Fifth HakiFit Logo" />
                            <img class="wrkctg-history" src="Images/History.png" alt="history" />
                            <img class="wrkctg-postworkout" src="Images/postWorkout.png" alt="postworkout" />
                        </div>
                    </div>
                </div>

                <footer class="wrkctg-footer">
                    <div class="orange-rectangles">
                        <!-- Top and bottom orange rectangles -->
                        ${initParam.footerValue}
                    </div>
                </footer>
            </body>

            </html>
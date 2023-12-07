<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HakiFit Track Progress</title>
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
                width: 400px;
                height: 220px;
                margin: 0 auto;
                font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
                Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
                "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
                "Source Han Sans CN",sans-serif;
                color: rgb(30, 30, 30);
                font-size: 55px;
                font-weight: 400;
                line-height: 260.6px;
                text-align:center;
                margin-top:30px;
            }
            
            .wrkctg-h3{
                position: relative;
                width: 900px;
                height: 80px;
                margin: 0 auto;
                font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
                Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
                "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
                "Source Han Sans CN", sans-serif;
                color: rgb(30, 30, 30);
                font-size: 30px;
                font-weight: 400;
                line-height: 91.21px;
                overflow: hidden;
                text-align:center;
               
            }
            
            .wrkctg-div{
                position: relative;
                width: 1221px;
                height: 280px;
                margin: 0 auto;
                background: rgb(244, 191, 150);
                border: 3px solid rgb(0, 0, 0);
                border-radius: 30px;
                box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);
                overflow: hidden;
            }
            
            .wrkctg-p{
                 position: relative;
                width: 400px;
                height: 70px;
                margin: 0 auto;
                font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
                  Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
                  "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
                  "Source Han Sans CN", sans-serif;
                color: rgb(30, 30, 30);
                font-size: 30px;
                font-weight: 400;
                line-height: 65.15px;
                overflow: hidden;
            }
            
            .wrkctg-submit1, .wrkctg-submit2{
                display: inline-block; /* Make the buttons inline */
                width: 120px;
                height: 45px;
                background: rgb(206, 90, 103);
                border: 3px solid rgb(0, 0, 0);
                border-radius: 30px;
                box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);
                margin: -30px 0px 50px 400px; /* Adjust as needed for spacing between buttons */
               justify-content:center;
               color:black;
            }
            
            .wrkctg-submit2{
                margin-left:20px;
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
            <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="Images/HakiFitLogo.png"/></a>
            <a href="HakiFit_WorkoutCategories.jsp">Workouts</a>
            <a href="HakiFit_Nutrients_List.jsp">Nutrition</a>
            <a href="HakiFit_Profile.jsp">Profile</a>
            <a href="HakiFit_Login"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>

        <h1 class="wrkctg-h1">Track Progress!!</h1>

        <h3 class="wrkctg-h3">No matter how you performed, just make sure you do your best!!</h3>
        
        <div class="wrkctg-div">
            <p class="wrkctg-p">Number of Reps: </p>
            <p class="wrkctg-p">Minutes Spent: </p>
            <p class="wrkctg-p">Number of Breaks: </p><br>
          
                <button type="submit" class="wrkctg-submit2"><a href="HakiFit_MainPage.jsp">Return to Main</a></button>
            
        </div>

 <footer class="wrkctg-footer">
            
 </footer>
    </body>
</html>

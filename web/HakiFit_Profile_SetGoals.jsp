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
        .wrkctg-div1 {
             position: relative;
                width: 4000px;
                height: 500px;
                margin-left:-1300px;
                padding-top:-30px;
                padding-bottom:10px;
                
                background: no-repeat center;
                border-radius:30px; 
                background-size: cover;
                top:-20px;
        }
        .wrkctg-h1 {
            color: black;
            font-size: 36px;
            text-align:center;
            margin-top:90px
        }
        .wrkctg-setgoals{
            border-radius:30px;  
            overflow: auto;
            left:50px;
        }
         .setgoals{
            position: relative;
            width: 170px;
            height: 77px;
            margin: 30px 0px 0px 300px;
            top:2px;
            right:50px;
            font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
              Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
              "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
              "Source Han Sans CN", sans-serif;
            color: #1e1e1e;
            font-size: 25px;
            font-weight: 600;
            line-height: 65.15px;
            text-align:left; 
         }
         .wrkctg-input1,.wrkctg-input2,.wrkctg-input3,.wrkctg-input4,.wrkctg-input5,.wrkctg-input6,.wrkctg-input7,.wrkctg-input8,.wrkctg-input9 {
                border-radius: 10px; 
                padding: 15px; /* Adjust the value as needed */
                top: 15px;
                
                background-color:#CE5A67;
            }
         
        .wrkctg-input1 { 
             right:50px;
             padding-right:60px;
             padding-top:25px;
        }
        .wrkctg-input2 { 
             right:50px;
             padding-right:60px;
             padding-top:25px;
        }
        .wrkctg-input3 { 
            right:50px;
             padding-right:60px;
             padding-top:25px;
        }
        .wrkctg-input4 { 
             right:50px;
             padding-right:60px;
             padding-top:25px;
        }
        .wrkctg-input5 { 
             right:50px;
             padding-right:60px;
             padding-top:25px;
        }
        .wrkctg-input6 { 
             right:50px;
             padding-right:60px;
             padding-top:25px;
        }
        .wrkctg-input7 { 
            right:50px;
            padding-right:60px;
            padding-top:25px;
        } 
         
         .wrkctg-input8 { 
             right:50px;
             padding-right:60px;
             padding-top:25px;
         }    
         
         
         .description{
             text-align:center; 
             padding-bottom:10px;
         }
</style>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
    </header>

        <h1 class="wrkctg-h1">Set Goals!!</h1><br>
     
    <p class="description">What goals do you want to achieve on your physical body?</p> 
    
    <p class="setgoals">Set Goals!!</p>
    <div class="wrkctg-div1">
        <div class="wrkctg-setgoals">
            <textarea class="wrkctg-input1"></textarea>
            <textarea class="wrkctg-input2"></textarea>
            <textarea class="wrkctg-input3"></textarea>
            <textarea class="wrkctg-input4"></textarea>
            <textarea class="wrkctg-input5"></textarea>
            <textarea class="wrkctg-input6"></textarea>
            <textarea class="wrkctg-input7"></textarea>
            <textarea class="wrkctg-input8"></textarea>
            <textarea class="wrkctg-input8"></textarea>
            
        </div>
    </div>
    <br>
    <footer class="wrkctg-footer">
        <div class="orange-rectangles">
            <!-- Top and bottom orange rectangles -->
            ${initParam.footerValue}
        </div>
    </footer>
</body>
</html>

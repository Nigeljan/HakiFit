<style type="text/css">
/* Basic Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Inika;
}

/* Container */
.container {
    max-width: 1920px;
    margin: 0 auto;
    position: relative;
    overflow: hidden;
     
}

.container_center {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
   
}

h1 {
    font-size: 24px;
    z-index: 10;
    position: relative;
    color: #000; 
}

/* Header Styles */
header {
    background-color: rgba(244, 191, 150, 0.93); /* Change the color of rectangles */
    width: 100%;
    position: absolute;
    z-index: 10;
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

/* Main Styles */
main {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    background-color: #FCF5ED; /* Change the background color */
}

.logo {
    width: 200px; /* Adjust the width as needed */
    height: auto;
}

.button-container {
    text-align: center;
    position: relative;
    
    
}

/* Animated Images */
.animated-images {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
    margin-right: 100px;
    margin-left: 100px;
}

.left-animated-image {
    height: 200px; /* Increased image size */
    animation: floatLeft 10s infinite ease-in-out;
}

.right-animated-image {
    height: 200px; /* Increased image size */
    animation: floatRight 10s infinite ease-in-out;
}

@keyframes floatLeft {
    0%, 100% {
        transform: translateY(0) rotate(-45deg);
    }
    50% {
        transform: translateY(-10px) rotate(-45deg);
    }
}

@keyframes floatRight {
    0%, 100% {
        transform: translateY(0) rotate(45deg);
    }
    50% {
        transform: translateY(-10px) rotate(45deg);
    }
}

    h1{
          text-align:center; 
          top:120px;
          font-size:50px;
    }
    
    .ready{
        border-radius:30px;
        overflow: hidden;
        background-color: #CE5A67;
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

    String buttonValue_fromp1 = (String) request.getAttribute("buttonValue_fromp1");
    String buttonValue_fromp2 = (String) request.getAttribute("buttonValue_fromp2");
    
    session.setAttribute("buttonValue_fromp1", buttonValue_fromp1);
    session.setAttribute("buttonValue_fromp2", buttonValue_fromp2);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Are you Ready??</title>
    </head>
    <body>
    <div class="container">
        <header>
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
                <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="${initParam.headerValue}"/></a>
            </div>
        </header>
        
        
        <main>
         <h1>Are you Ready??</h1>
            <div class="container_center">
                <div class="animated-images">
                    <img src="Images/dumbell.png" alt="Image 1" class="left-animated-image">
                </div>  
                <div class="button-container">
                        <div class="logo-container">
                            <form action="Ready" method="post">
                            <button type="submit" class="ready">
                                    <img src="Images/Squats.jpg">
                                    <p>READY!!</p>
                            </button>
                            </form>
                        </div>
                </div>
                <div class="animated-images">
                    <img src="Images/dumbell.png" alt="Image 2" class="right-animated-image">
                </div>
            </div>
        </main>
        <footer class="wrkctg-footer">
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
                ${initParam.footerValue}
            </div>
        </footer>
    </div>
    </body>
</html>

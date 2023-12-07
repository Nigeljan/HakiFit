<%-- 
    Document   : index
    Created on : Dec 2, 2023, 1:04:35 PM
    Author     : Christine
--%>
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

.container-login-transform {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
    transition: all 0.5s;
}

h1 {
    font-size: 24px;
    top: 220px; 
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

/* Footer Styles */
footer {
    background-color: rgba(244, 191, 150, 0.93); /* Change the color of rectangles */
    width: 100%;
    position: absolute;
    bottom: 0;
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
    width: 100px; /* Adjust the width as needed */
    height: auto;
}

.button-container {
    text-align: center;
    position: relative;
}

.top-logo {
    position: absolute;
    top: 175px; 
    left: 105px;
    z-index: 10;
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

.orange-rectangles {
    display: flex;
    justify-content: space-between;
    padding: 20px 0;
}

.rectangle-1 {
    width: 200px;
    height: 50px;
    border-radius: 30px;
    border: 3px solid #000;
    background: #F4BF96;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    transition: transform 0.5s, width 0.5s, height 0.5s;
    position: relative;
    text-align: center
}

.rectangle-1 .logo-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    position: absolute;
    top: 0px; 
    left: 50%; 
    transform: translateX(-50%); 
    z-index: 10; 
}

.rectangle-1 .top-logo,
.rectangle-1 h1 {
    position: absolute;
    z-index: 10; 
    color: #000;
    cursor: default;
}

.rectangle-1 .top-logo {
    top: -100px;
    left: 50%; 
    transform: translateX(-50%); 
    width: auto;
    height: 50px;
}

.rectangle-1 h1 {
    font-size: 24px;
    color: #000; 
    margin: 0; 
    top: -50px; 
    left: 50%; 
    transform: translateX(-50%); 
    white-space: nowrap;
}

.rectangle-1 p {
    position: absolute;
    margin: 0;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 1;
    transition: opacity 0.5s;
}

.rectangle-1.expanded p {
            opacity: 0; 
        }

.rectangle-1.expanded {
    width: 300px;
    height: 200px;
    cursor: default;
}

.rectangle-2 {
    width: 100%;
    height: 100%;
    display: none;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.rectangle-1.expanded .rectangle-2 {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.input-group {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 10px;
    width: 180px;
}

.rectangle-2 input {
    width: 100%;
    padding: 5px;
    border-radius: 5px;
    box-sizing: border-box;
    border: 3px solid #000;
    background: #CE5A67;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
}

.rectangle-2 button {
    width: 100%;
    height: 40px;
    color: #000;
    border-radius: 28px;
    border: 3px solid #000;
    background: #FCF5ED;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    cursor: pointer;
    transition: background-color 0.3s;
}

.rectangle-2 button:hover {
    background-color: #CE5A67;
}
        
</style>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HakiFit Log-In</title>
    </head>
    <body>
    <div class="container">
        <header>
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
                <img src="Images/HakiFitLogo.png" alt="Your Logo" class="logo">
            </div>
        </header>
        <main>
            <div class="container_center">
                <div class="animated-images">
                    <img src="Images/dumbell.png" alt="Image 1" class="left-animated-image">
                </div>  
                <div class="button-container">
                    <div class="rectangle-1" onclick="expandRectangle(this)">
                        <div class="logo-container">   
                            <img src="Images/HakiFitLogo.png" alt="Your Logo" class="top-logo">
                            <h1>Forge Your Body, Ignite Your Spirit</h1>
                        </div>
                        <p>Login</p>
                        <div class="rectangle-2">
                            <form id="loginForm" action="login" method="post">
                                <div class="inputs-container">
                                    <div class="input-group">
                                        <label for="username">Username:</label>
                                        <input type="text" id="username" name="username" onclick="event.stopPropagation();">
                                    </div>
                                    <div class="input-group">
                                        <label for="password">Password:</label>
                                        <input type="password" id="password" name="password" onclick="event.stopPropagation();">
                                    </div>
                                    <button type="submit" onclick="event.stopPropagation();">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="animated-images">
                    <img src="Images/dumbell.png" alt="Image 2" class="right-animated-image">
                </div>
            </div>
        </main>
        <footer>
            <div class="orange-rectangles">
                <!-- Top and bottom orange rectangles -->
            </div>
        </footer>
    </div>
    <script>
    function expandRectangle(element) {
        if (!element.classList.contains('expanded')) {
            element.classList.add('expanded');
        }
    }
    </script>
    </body>
</html>

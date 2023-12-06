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

/* Header Styles */
header {
  background-color: rgba(244, 191, 150, 0.93); /* Change the color of rectangles */
  width: 100%;
  position: absolute;
  z-index: 10;
}

.logo {
  width: 100px; /* Adjust the width as needed */
  height: auto;
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

.button-container {
  text-align: center;
  position: relative;
}

.top-logo {
  position: absolute;
  top: -30px;
  width: 60px; /* Adjust the width as needed */
  height: auto;
}

.top-left-logo {
  position: absolute;
  top: -30px;
  left: -30px;
  width: 60px; /* Adjust the width as needed */
  height: auto;
}

h1 {
  font-size: 24px;
  margin-bottom: 10px;
}

.login-button {
  width: 256px;
  height: 59px;
  padding: 10px 20px;
  font-size: 32px;
  background-color: #F4BF96; /* Change the button color */
  color: #1E1E1E; /* Button text color */
  border-radius: 30px;
  border: none;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.login-button:hover {
  background-color: #f4959b; /* Change button color on hover */
}

/* Animated Images */
.animated-images {
  display: flex;
  justify-content: space-between;
  margin-top: 20px;
}

.left-animated-image {
  height: 80px; /* Adjust image height as needed */
  left: 200px;
  transform: translateY(-50%);
  animation: floatUpDown 3s infinite ease-in-out;
}

.right-animated-image {
  height: 80px; /* Adjust image height as needed */
  right: 200px;
  transform: translateY(-50%);
  animation: floatUpDown 3s infinite ease-in-out;
}

@keyframes floatUpDown {
  0%, 100% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-10px); /* Change the floating distance */
  }
}

/* Footer Styles */
footer {
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
                        <img src="Images/HakiFitLogo.png" alt="Your Logo" class="top-logo">
                        <h1>Forge Your Body, Ignite Your Spirit</h1>
                        <button class="login-button">Log In</button>  
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
    </body>
</html>
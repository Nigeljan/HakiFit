<%-- 
    Document   : Recipe
    Created on : 12 3, 23, 10:05:47 AM
    Author     : Nigel Jan Naniong
--%>
<style>
* {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: Inika;
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

body {
  font-family: 'Inika', sans-serif;
  background-color:#FCF5ED;
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

.wrkctg-h1 {
  color: black;
  font-size: 36px;
  text-align:center;
  margin-top:90px
}

.wrkctg-div1,.wrkctg-otherrecipes1,.wrkctg-otherrecipes2,.wrkctg-otherrecipes3{
width: 20%;
margin: auto;
min-height: 100px; /* Set a fixed height for the firstGoal section */
border: 1px solid black; /* Optional: Add border for clarity */
padding: 10px;
background-color:#F4BF96;
} 
.wrkctg-div2 {
  position: relative;
  width: 400px;
  height: 200px;
  margin: -350px 0px 0px 600px;
  font-family: Inika, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
    Ubuntu, "Helvetica Neue", Helvetica, Arial, "PingFang SC",
    "Hiragino Sans GB", "Microsoft Yahei UI", "Microsoft Yahei",
    "Source Han Sans CN", sans-serif;
  color: rgb(30, 30, 30);
  font-size: 15px;
  font-weight: 400;
  line-height: 39.09px;

}

.wrkctg-p{
    text-align: center;
}

.wrkctg-div1{
   position: relative;
    width: 300px;
    height: 400px;
    background: rgb(244, 191, 150);
    border: 3px solid rgb(0, 0, 0);
    border-radius: 30px;
    box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);
    overflow: hidden;
    margin: 0px 50px 0px 50px;
    text-align: center; /* Center-align text horizontally */
}


.wrkctg-div3{
    margin: -250px 0px 0px 1000px; 

}

.wrkctg-otherrecipes1,.wrkctg-otherrecipes2,.wrkctg-otherrecipes3{
  position: relative;
    width: 260px;
    height: 120px;
    margin: 0 auto;
    background: rgb(244, 191, 150);
    border: 3px solid rgb(0, 0, 0);
    border-radius: 30px;
    box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);

}

.wrkctg-spicychicken{
    padding:50px 0px 15px 0px;
}

p,h4{
  text-align:center;   
}

.wrkctg-img{
    width:70px;
    height:70px;
}

.wrkctg-meal{
    margin:-50px 0px 0px 50px; 
}

</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HakiFit Recipes</title>
    </head>

    <body class="wrkctg-body">
        <header class="wrkctg-header">
            <a href="HakiFit_MainPage.jsp"><img class="wrkctg-hakifitlogo" src="${initParam.headerValue}"/></a>
            <a href="HakiFit_WorkoutCategories.jsp">Workouts</a>
            <a href="HakiFit_Nutrients_List.jsp">Nutrition</a>
            <a href="HakiFit_Profile.jsp">Profile</a>
            <a href="HakiFit_Login.jsp"><img class="wrkctg-logout" src="Images/shutdown.png"></a>
        </header>

        <h1 class="wrkctg-h1">Meal plans/Recipes!!</h1>

         <div class="wrkctg-div1">
            <img src="Images/Spicy Chicken.jpg" class="wrkctg-spicychicken"/>
            <p class="wrkctg-p">Spicy Chicken With Couscous</p>
           
           
           
        </div>
    
        <div class="wrkctg-div2">
            <p class="wrkctg-p"> <h3>Ingredients!!</h3>
            <ul>
                <li>250g couscous</li>
                <li>3 tbsp olive oil </li>
                <li>1 chopped onion</li> 
                <li>2 large sliced skinless boneless chicken breast fillets </li>
                <li>85g blanched almonds </li>
                <li>1 tbsp hot curry paste</li> 
                <li>100g halved ready-to-eat apricots</li>
                <li>120g pack fresh coriander</li>
            </ul>
            </p>
        </div>
        
        
       <div class="wrkctg-div3">
           <h4>Meal Plans!!!</h4>
            <div class="wrkctg-otherrecipes1">  
              <p>Breakfast!</p>
              <img src="Images/Oatmeal.jpg" class="wrkctg-img">
              <p class="wrkctg-meal">Oatmeal</p>
            </div>
            <br>
            <div class="wrkctg-otherrecipes2">  
               <p>Lunch!</p>
               <img src="Images/Honey Garlic Chicken.jpg" class="wrkctg-img">
               <p class="wrkctg-meal">Honey Garlic Salmon</p>
            </div>
            <br>
              
            <div class="wrkctg-otherrecipes3">  
                <p>Dinner!</p>
                <img src="Images/Sesame Chicken.jpg" class="wrkctg-img">
                <p class="wrkctg-meal">Sesame Chicken</p>
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

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="/css/loginPageCSS.css">
  </head>
  <body>
    <div class="actionbar">
      <div class="welcome">
        <h1>Welcome to eShop</h1>
        <h4>Powered by WTF4J</h4>
      </div>
      <div class="actions">
        <a class="link" href="homepage">Home</a>
        <a class="link" href="productspage">Products</a>
        <a class="link" href="loginpage">Login</a>
        <a class="link" href="registerpage">Register</a>
        <a class="link" href="aboutus">About Us</a>
      </div>
    </div><p></p>

    <div class="login-form">
        <div id="header">
          <h1 id="logintoregister">Login</h1>
        </div>
        <form action="loginValidation" method="GET">
          <div class="group">
            <input name="username" class="inputMaterial" type="text" required>
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>Username</label>
          </div>
          <div class="group">
            <input name="password" class="inputMaterial" type="password" required>
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>Password</label>
          </div>
          <button id="loginButton" type="submit">Login</button>
        </form>
        <div id="footer-box"><p class="footer-text">Not a member?<span class="sign-up">
          <a id="signupNow" href="registerpage"> Sign up now</a>
        </span></p></div>
      </div>

  </body>
</html>

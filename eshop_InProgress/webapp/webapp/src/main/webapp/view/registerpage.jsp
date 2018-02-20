<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title></title>
  <link rel="stylesheet" href="/css/registerPageCSS.css">
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

  <div id="regForm">
    <div class="register-form">
      <div id="header">
        <h1 id="logintoregister">Register Form</h1>
      </div>
        <form:form action="registry" modelAttribute="user" method="POST">
          <form:hidden path="id"></form:hidden>
          <div class="group">
            <form:input path="usersDetail.firstName" class="inputMaterial" type="text" />
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>First name</label>
          </div>
          <div class="group">
            <form:input path="usersDetail.lastName" class="inputMaterial" type="text" />
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>Last name</label>
          </div>
          <div class="group">
            <form:input path="usersDetail.email" class="inputMaterial" type="text" />
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>E-mail Address</label>
          </div>
          <div class="group">
            <form:input path="usersDetail.phoneNumber" class="inputMaterial" type="text" />
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>Phone number</label>
          </div>
        <div class="group">
          <form:input path="username" class="inputMaterial" type="text" />
          <span class="highlight"></span>
          <span class="bar"></span>
          <label>Username</label>
        </div>
        <div class="group">
          <form:input path="password" class="inputMaterial" type="text" />
          <span class="highlight"></span>
          <span class="bar"></span>
          <label>Password</label>
        </div>
          <div class="group">
          <form:checkbox  path="flag" value="1"/>Client
          <form:checkbox  path="flag" value="2"/>Member
          <span class="highlight"></span>
          <span class="bar"></span>
          </div>
        
     
        <button id="loginButton" type="submit">Submit</button>
        </form:form>
      <div id="footer-box"><p class="footer-text">Already a member?<span class="sign-up">
        <a id="goToLogin" href="loginPage.html"> Head to login</a>
      </span></p></div>
    </div>
  </div>

  <script type="text/javascript" src="/js/registerPageJS.js">
  </script>

</body>
</html>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>HomePage</title>
  <link rel="stylesheet" href="/css/productsPageCSS.css">
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

  <div id="selectors">
    <button class="btn active" onclick="filterSelection('all')"> Show all</button>
    <button class="btn" onclick="filterSelection('meat')"> Meat</button>
    <button class="btn" onclick="filterSelection('seafood')"> Seafood</button>
  </div>

  <div class="item-container">
      <div class="item-overview meat">
        <img src="/images/beef.jpg" alt="Avatar">
        <p><span><b>BEEF</b></span></p>
        <p>100% farmer Beef!</p>
      </div><p></p>
      <div class="item-overview meat">
        <img src="/images/chicken.jpg" alt="Avatar">
        <p><span><b>CHICKEN</b></span></p>
        <p>100% farmer Chicken!</p>
      </div><p></p>
      <div class="item-overview meat">
        <img src="/images/pork.jpg" alt="Avatar">
        <p><span><b>PORK</b></span></p>
        <p>100% farmer Pork!</p>
      </div><p></p>

      <div class="item-overview seafood">
        <img src="/images/shrimps.jpg" alt="Avatar">
        <p><span><b>SHRIMPS</b></span></p>
        <p>100% fisherman Shrimps!</p>
      </div><p></p>
      <div class="item-overview seafood">
        <img src="/images/lobster.jpg" alt="Avatar">
        <p><span><b>LOBSTER</b></span></p>
        <p>100% fisherman Lobster!</p>
      </div><p></p>
      <div class="item-overview seafood">
        <img src="/images/salmon.jpg" alt="Avatar">
        <p><span><b>SALMON</b></span></p>
        <p>100% fisherman Salmon!</p>
      </div><p></p>
  </div>

<script type="text/javascript" src="/js/productsPageJS.js">
</script>
</body>
</html>

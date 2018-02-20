<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>HomePage</title>
  <link rel="stylesheet" href="css/productsPageMemberCSS.css">
  <script defer src="../js/fontawesome-all.js"></script>
</head>
<body>
  <div class="actionbar">
    <div class="welcome">
      <h1>Welcome to eShop</h1>
      <h4>Powered by WTF4J</h4>
    </div>
    <div class="actions">
        <a class="link" href="homepage/${id}">Home</a>
      <a class="link" href="productsPageMember/${id}">Products</a>
      <div class="menuDropdown">
        <a class="link" href="#" id="menu">Menu</a>
        <div class="menuContent">
          <a href="memberMenuCart.html">Cart</a>
          <a href="#">Wishlist</a>
          <a href="memberMenuProfile.html">My Profile</a>
          <a href="#">Orders history</a>
          <a href="../homePage.html">Logout</a>
        </div>
      </div>
      <a class="link" href="aboutUsMember.html">About Us</a>
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
      <input type="text" placeholder="Enter amount of kg"><span>
      <button class="cartADD" onclick="showPopup(PopupBeef)">
        <i class="fas fa-cart-plus"></i>
        <span class="popuptext" id="PopupBeef">Added to Cart!</span>
      </button></span>
    </div><p></p>
    <div class="item-overview meat">
      <img src="/images/chicken.jpg" alt="Avatar">
      <p><span><b>CHICKEN</b></span></p>
      <p>100% farmer Chicken!</p>
      <input type="text" placeholder="Enter amount of kg"><span>
      <button class="cartADD" onclick="showPopup(PopupChicken)">
        <i class="fas fa-cart-plus"></i>
        <span class="popuptext" id="PopupChicken">Added to Cart!</span>
      </button></span>
    </div><p></p>
    <div class="item-overview meat">
      <img src="/images/pork.jpg" alt="Avatar">
      <p><span><b>PORK</b></span></p>
      <p>100% farmer Pork!</p>
      <input type="text" placeholder="Enter amount of kg"><span>
      <button class="cartADD" onclick="showPopup(PopupPork)">
        <i class="fas fa-cart-plus"></i>
        <span class="popuptext" id="PopupPork">Added to Cart!</span>
      </button></span>
    </div><p></p>

    <div class="item-overview seafood">
      <img src="/images/shrimps.jpg" alt="Avatar">
      <p><span><b>SHRIMPS</b></span></p>
      <p>100% fisherman Shrimps!</p>
      <input type="text" placeholder="Enter amount of kg"><span>
      <button class="cartADD" onclick="showPopup(PopupShrimps)">
        <i class="fas fa-cart-plus"></i>
        <span class="popuptext" id="PopupShrimps">Added to Cart!</span>
      </button></span>
    </div><p></p>
    <div class="item-overview seafood">
      <img src="/images/lobster.jpg" alt="Avatar">
      <p><span><b>LOBSTER</b></span></p>
      <p>100% fisherman Lobster!</p>
      <input type="text" placeholder="Enter amount of kg"><span>
      <button class="cartADD" onclick="showPopup(PopupLobster)">
        <i class="fas fa-cart-plus"></i>
        <span class="popuptext" id="PopupLobster">Added to Cart!</span>
      </button></span>
    </div><p></p>
    <div class="item-overview seafood">
      <img src="/images/salmon.jpg" alt="Avatar">
      <p><span><b>SALMON</b></span></p>
      <p>100% fisherman Salmon!</p>
      <input type="text" placeholder="Enter amount of kg"><span>
      <button class="cartADD" onclick="showPopup(PopupSalmon)">
        <i class="fas fa-cart-plus"></i>
        <span class="popuptext" id="PopupSalmon">Added to Cart!</span>
      </button></span>
    </div><p></p>
  </div>

  <script type="text/javascript" src="/js/productsPageMemberJS.js">
  </script>
</body>
</html>

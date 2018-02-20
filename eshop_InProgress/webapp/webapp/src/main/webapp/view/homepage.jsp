<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>HomePage</title>
  <link href="/css/homePageCSS.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

  <div class="imageSlider">
    <div id="container" class="clear">
      <!-- Slider -->
      <section id="slider">
        <div class="img-comp-container">
          <div class="img-comp-img">
            <img src="/images/seafood.jpg" width="960" height="400">
          </div>
          <div class="img-comp-img img-comp-overlay">
            <img src="/images/meat.jpg" width="960" height="400">
          </div>
        </div>
      </section>
    </div>
  </div>

  <div class="carouselContainer">
    <div class="meatCarousel">
      <h2>Meat Lovers</h2>
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="/images/pork.jpg">
            <div class="img-text">
              <h2>Pork</h2>
            </div>
          </div>
          <div class="item">
            <img src="/images/chicken.jpg">
            <div class="img-text">
              <h2>Chicken</h2>
            </div>
          </div>
          <div class="item">
            <img src="/images/beef.jpg">
            <div class="img-text">
              <h2>Beef</h2>
            </div>
          </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>

    <div class="seafoodCarousel">
      <h2>Seafood Lovers</h2>
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="/images/shrimps.jpg">
            <div class="img-text">
              <h2>Shrimps</h2>
            </div>
          </div>
          <div class="item">
            <img src="images/lobster.jpg">
            <div class="img-text">
              <h2>Lobster</h2>
            </div>
          </div>
          <div class="item">
            <img src="/images/salmon.jpg">
            <div class="img-text">
              <h2>Salmon</h2>
            </div>
          </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
  </div>

  <script type="text/javascript" src="/js/homePageJS.js"  onload="initComparisons()">
  </script>

</body>
</html>

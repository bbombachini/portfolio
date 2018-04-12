<?php
  $name = $_GET['name'];
  // echo "Thank you ".$name;
?>
<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Barbara Bombachini Website - Photographer and Web Developer.">
    <meta name="keywords" content="web development, web design, photographer, photography, programming, full stack developer">
    <meta property="og:description" content="Barbara Bombachini is an experienced photographer and web developer. Check out her portfolio and latest artworks.">
    <meta property="og:title" content="Barbara Bombachini | Photo | Web Dev">
    <meta property="og:type" content="website">
    <meta property="og:image" content="img/profile_barbara_bombachini.jpg">
    <meta property="og:image:type" content="image/jpeg">
    <meta property="og:image:height" content="300">
    <meta property="og:image:width" content="300">
    <meta property="og:image:alt" content="Barbara Bombachini Website">
    <meta property="og:site_name" content="Barbara Bombachini Website">
    <meta name="author" content="Barbara Bombachini">
    <link rel="apple-touch-icon" sizes="144x144" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/manifest.json">
    <link rel="mask-icon" href="favicon/safari-pinned-tab.svg" color="#5bbad5">
    <link rel="shortcut icon" href="favicon/favicon.ico">
    <meta name="msapplication-config" content="favicon/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <title>Barbara Bombachini | Photo | Web</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/app.css">
  </head>
  <body class="contact">
    <h1 class="hidden">Barbara Bombachini Website</h1>

    <div id="container">
      <header>
        <div class="row">
          <div id="nav-bar" class="small-12 columns">
              <img src="img/bombachini_logo.svg" id="logo" alt="Barbara Bombachini Logo">
            <div id="hamburg" data-responsive-toggle="hamb-menu3" data-hide-for="medium">
              <button id="button" type="button" data-toggle="hamb-menu3">
                <span class="icon"></span>
                <span class="icon"></span>
                <span class="icon"></span>
                <span class="icon"></span>
              </button>
            </div>

          <div id="hamb-menu-web" class="hamb-menu3 web">
            <nav id="nav">
              <h1 class="hidden">Main Navigation</h1>
              <ul id="menu" class="medium-horizontal menu" data-toggle-menu>
                <li><a class="linen" id="photo" href="#">PHOTOGRAPHY</a></li>
                <li><a class="linen" href="index.html">WEB DEV</a></li>
                <li><a class="linen" href="about.html">ABOUT</a></li>
                <li><a class="linen active" href="contact.html">CONTACT</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </header>

      <!-- PAGE CONTENT STARTS HERE -->

      <div id="contact" class="row fluid">
        <div class="show-for-large" id="triangle">
        </div>
        <div class="small-12 large-3 columns">
          <div class="instructions">

          </div>
        </div>
        <div class="small-12 small-centered large-8 columns">
          <div class="border">

            <h3>
              <?php echo "Thank you ".$name."!"; ?>
            </h3>
            <h2> Your email was sent and I'll return to you within 24 hours!</h2>
            <button type="button"><a href="index.html">Back to Home</a>
            </button>
          </div>
        </div>
      </div>


      <footer>
        <div id="text">
            <span>contact</span>
        </div>
        <div class="about row">
          <div id="social-about" class="small-12 small-centered columns">
            <ul>
              <li>
                <a href="https://codepen.io/bbombachini/" target="_blank">
                    <i class="fa fa-codepen" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="https://www.facebook.com/barbara.bombachini" target="_blank">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="https://github.com/bbombachini" target="_blank">
                    <i class="fa fa-github fa-inverse" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="https://www.instagram.com/bbombachini/" target="_blank">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="https://www.linkedin.com/in/barbara-bombachini-b61b92aa/" target="_blank">
                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </footer>


    <!-- container ends here -->
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.2/TweenMax.min.js"></script>
    <script src="bower_components/jquery/dist/jquery.js"></script>
    <script src="bower_components/what-input/dist/what-input.js"></script>
    <script src="bower_components/foundation-sites/dist/js/foundation.js"></script>
    <script type="text/javascript" src="js/build/build.min.js"></script>
    <script>
     (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
     (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
     m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
     })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

     ga('create', 'UA-81029113-1', 'auto');
     ga('send', 'pageview');

    </script>
  </body>
</html>

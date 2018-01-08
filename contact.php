<?php ?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
    <link rel="manifest" href="img/favicon/manifest.json">
    <link rel="mask-icon" href="img/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <link rel="shortcut icon" href="img/favicon/favicon.ico">
    <meta name="msapplication-config" content="img/favicon/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <title>Barbara Bombachini | Photo | Web</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/app.css">
  </head>
  <body class="contact">

    <div id="container">
      <header>
        <div class="row">
          <div id="nav-bar" class="small-12 columns">
              <img src="img/bombachini_logo.svg" id="logo" alt="Barbara Bombachini Logo">

          <div id="hamb-menu-web" class="hamb-menu3 web">
            <nav id="nav">
              <ul id="menu" class="medium-horizontal menu">
                <li><a class="linen" id="photo" href="#">PHOTOGRAPHY</a></li>
                <li><a class="linen" href="index.html">WEB DEV</a></li>
                <li><a class="linen" href="about.html">ABOUT</a></li>
                <li><a class="linen" href="#">CONTACT</a></li>
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
            <h3>Let's create something great together!</h3>
            <p>Send me a message and I'll return to you within 24 hours.</p>
          </div>
        </div>
        <div class="small-12 small-centered large-8 columns">
          <div class="border">
            <h1>Get in touch!</h1>
            <form action="admin/contact.php" method="post">
              <label for="name">Name</label>
              <input name="name" type="text">
              <label name="email" for="email">Email</label>
              <input type="email">
              <label class="address" for="address">Address</label>
              <input class="address" name="address" type="text" size="21" maxlength="30" />
              <label for="subject">Subject</label>
              <input name="subject" type="text">
              <label for="message">Message</label>
              <textarea name="message" rows="4" cols="80"></textarea>
              <button name="submit" type="submit">Send</button>
            </form>
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
  </body>
</html>

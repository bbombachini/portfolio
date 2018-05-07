<?php
  include('../admin/connect.php');

  ini_set('display_errors',1);
  error_reporting(E_ALL);

  if(isset($_GET['id'])) {
    $catch = $_GET['id'];
    $query = "SELECT * FROM tbl_projects WHERE project_id=".$catch;
    $result = mysqli_query($link, $query);
    $rows = array();
   while($row = mysqli_fetch_assoc($result)) {
     $rows[] = $row;
   }
   $projQuery = "SELECT project_img FROM tbl_proj_img WHERE project_id=".$catch;
   $newResult = mysqli_query($link, $projQuery);
   $newRows = array();
  while($newRow = mysqli_fetch_assoc($newResult)) {
    $newRows[] = $newRow;
  }
  // echo json_encode($newRows);
  // echo json_encode($rows);
  }

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
     <link rel="apple-touch-icon" sizes="144x144" href="../favicon/apple-touch-icon.png">
     <link rel="icon" type="image/png" sizes="32x32" href="../favicon/favicon-32x32.png">
     <link rel="icon" type="image/png" sizes="16x16" href="../favicon/favicon-16x16.png">
     <link rel="manifest" href="../favicon/manifest.json">
     <link rel="mask-icon" href="../favicon/safari-pinned-tab.svg" color="#5bbad5">
     <link rel="shortcut icon" href="../favicon/favicon.ico">
     <meta name="msapplication-config" content="../favicon/browserconfig.xml">
     <meta name="theme-color" content="#ffffff">
     <title>Barbara Bombachini | Photo | Web</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="../css/app.css">
     <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-81029113-1', 'auto');
      ga('send', 'pageview');

     </script>
  </head>
  <body>
    <div id="container">


    <header class="project-header">
      <div>
        <a href="../webdev.html" class="back-btn">
          <i class="fa fa-3x fa-chevron-circle-left"></i>
        </a>
        <img class="media-change" src="../img/small<?php echo $rows[0]['project_header']; ?>" alt="<?php echo $row['project_name']; ?>">
      </div>
      <!-- <div class="logo-round"> -->
        <img class="logo-round" src="../img/<?php echo $rows[0]['project_cover']; ?>" alt="<?php echo $row['project_name']; ?>">
      <!-- </div> -->
    </header>

    <article class="project-text">
      <h3 class="project-title"><?php echo $rows[0]['project_name']; ?> Project</h3>
      <?php
      if($rows[0]['project_client'] != null || $rows[0]['project_client'] != ""){
        echo "<h3>Client: <span>".$rows[0]['project_client']."</span></h3>";
      }
      ?>
      <p class="description"><?php echo $rows[0]['project_description']; ?></p>

      <?php
        if($rows[0]['project_problem'] != null || $rows[0]['project_problem'] != ""){
          echo "<h3>The Problem</h3>
            <p>".$rows[0]['project_problem']."</p>";
      }?>

       <?php
         if($rows[0]['project_solution'] != null || $rows[0]['project_solution'] != ""){
           echo "<h3>The Solution</h3>
             <p>".$rows[0]['project_solution']."</p>";
       }?>

        <?php
          if($rows[0]['project_tech'] != null || $rows[0]['project_tech'] != ""){
            echo "<h3>Process and Technology Used</h3>
              <p>".$rows[0]['project_tech']."</p>";
        }?>

        <?php
        if($rows[0]['project_url'] != null || $rows[0]['project_url'] != ""){
          echo "<h4>See the project here:</h4>
          <a href=\"".$rows[0]['project_url']."\">".$rows[0]['project_url']."</a>";
        }
        ?>
    </article>

    <?php
      if($newRows != null || $newRows != ""){
        echo "<div class=\"project-images\">";
        foreach ($newRows as $img) {
          echo "<img class=\"media-change\" src=\"../img/small".$img['project_img']."\" alt=\"".$rows[0]['project_name']." project photo.\">";
        }
        echo"</div>";
      }
     ?>


    <footer>
      <div id="text-proj">
          <span><?php echo $rows[0]['project_name']; ?></span>
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

    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.2/TweenMax.min.js"></script>
    <script src="../bower_components/jquery/dist/jquery.js"></script>
    <script src="../bower_components/what-input/dist/what-input.js"></script>
    <script src="../bower_components/foundation-sites/dist/js/foundation.js"></script>
    <script type="text/javascript" src="../js/build/build.min.js"></script>


  </body>
</html>

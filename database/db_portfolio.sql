-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2018 at 07:52 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `category_name`) VALUES
(1, 'Web Development'),
(2, 'Branding'),
(3, 'Web Design');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(30) NOT NULL,
  `lang_thumb` varchar(100) NOT NULL,
  `lang_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_thumb`, `lang_desc`) VALUES
(1, 'Adobe Creative Cloud', 'adobe.png', 'Powerful tools reside inside Adobe programs. My skills go beyond the basics on Lightroom, Illustrator, InDesign, Photoshop and spread into After Effects and Premiere.'),
(2, 'Bootstrap', 'bootstrap.png', 'One of the biggest responsive frameworks available for web. Bootstrap is being widely used for a while and it\'s based on a 12-column grid.'),
(3, 'Bower', 'bower.svg', 'Package management made easy with Bower. It helps you to track the libraries, assets, frameworks, utilities and its right versions.'),
(4, 'Foundation', 'foundation.svg', 'Responsive front-end framework based on 12-column grid and with a lot of built-in functionality and advanced settings.'),
(5, 'Git', 'git.png', 'Fundamental tool for web development, git takes a while to get used to, but then you can\'t live without it. Although I use it in a regular base, I fell I\'m pretty basic according with its capabilities.'),
(6, 'Grunt', 'grunt.png', 'Task runners are an essencial part of the process of deploying a website. Having a tool to put everything together is crucial to improve productivity.'),
(7, 'HTML5 & CSS3', 'html.svg', 'Fundamental skillset not only for a web designer but for anybody dealing with digital content in a regular basis. Pretty advanced in both.'),
(8, 'JavaScript', 'js.png', 'Scary at first and still scary sometimes. Besides that, I can\'t fell more confortable in making something nice with a programming language than JavaScript. I love its powerfulness and I want to go further.'),
(9, 'MAMP', 'mamp.png', 'A database is the heart of every modern and dynamic website. Learning this combo of MySQL, PHP and Apache server was fundamental to feel more confident on the development side.'),
(10, 'Node.JS', 'nodejs.png', 'Dedicated server to run an app. It\'s quite new for me, but present amazing possibilities and makes me go further.'),
(11, 'Vue.JS', 'vue.png', 'Vue.js is a front-end JavaScript framework powerful and easily implemented with other libraries or tools. Basic skillset on Vue.js by now, but always looking to learn more.'),
(12, 'NPM', 'npm.png', 'Npm, or node package manager, is a manager of JavaScript reusable codes. Easy to handle, install and run functionalities in your application. '),
(13, 'PHP', 'php.png', 'I\'m scratching the surface of this powerful language. Excited to learn more and explore all the possibilities inside php frameworks as well.'),
(14, 'Sass', 'sass.png', 'More than a CSS compiler, Sass turns it into a functional language and nothing can be more intelligent than avoid repetition and cleaning your code for easy maintenance.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `project_id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_client` varchar(150) DEFAULT NULL,
  `project_url` varchar(350) DEFAULT NULL,
  `project_thumb` varchar(350) DEFAULT NULL,
  `project_cover` varchar(350) DEFAULT 'default.jpg',
  `project_colour` varchar(100) NOT NULL,
  `project_header` varchar(150) NOT NULL,
  `project_description` text,
  `project_problem` text,
  `project_solution` text,
  `project_tech` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`project_id`, `project_name`, `project_client`, `project_url`, `project_thumb`, `project_cover`, `project_colour`, `project_header`, `project_description`, `project_problem`, `project_solution`, `project_tech`) VALUES
(1, 'Crazypsum', NULL, 'https://github.com/bbombachini/crazypsum', '_crazy_thumb.jpg', 'logo_crazy.svg', '#fec252', '_crazypsum_header.jpg', 'Crazypsum is a small personal project based in vanilla JavaScript interactions. It’s a single page application that use some prompt questions in order to create a customized Lorem Ipsum text. The idea came from the feel that if it was possible to insert some project related words into fake Lorem Ipsum text, it would make it more accepted to be used along the design process. Far for being completely crazy, the general feel and the main page shows a storm of possibilities, random objects, pop-culture-like and vibrant coloured.\r\n', NULL, NULL, NULL),
(2, 'Ride London', NULL, 'https://github.com/bbombachini/rideLondon', '_ridelondon_thumb.jpg', 'logo_ridelondon.png', '#7b2bdb', '_ridelondon_header.jpg', 'Ride London is a volunteer and community based project idealized to be a place to connect and support bikers on London, Ontario. Inspired in similar projects around the globe, Ride London gather commuters to interchange information related to security, bicycle maintenance and other cyclists related issues. Maintained by and for the community of local cyclists, this project was created to be a responsive multi-page website with general info about the project and the meetings as well as bring awareness to the riders’ cause.\r\n', NULL, NULL, NULL),
(3, 'Red Deer', NULL, NULL, '_reddeer_thumb.jpg', 'logo_reddeer.png', '#6d1500', '_reddeer_header.jpg', 'Branding project for Red Deer, a familiar Winery from Niagara, Ontario. From the logo conception through the brand guide, from the mockup label to the photo shoot, the unity of the brand was developed in order to build a cheerful but respectable image brand. \r\nThe strength of the visuals created a recognizable label with reliable standards among the industry.\r\n', NULL, NULL, NULL),
(4, 'Lexus', 'Lexus of Calgary', NULL, '_lexus_thumb.jpg', 'logo_lexus.png', '#ebebeb', '_lexus_header.jpg', 'Re-branding Lexus of Calgary in this audacious web design brought a vivacious and fresh look for this traditional brand. The use of complementary colours was fundamental to create a bold, remarkable and contemporary design. The images and the broken blocks of content gave it a very particular and exclusive look. \r\n', NULL, NULL, NULL),
(5, 'Hand-a-coffee', NULL, NULL, '_coffee_thumb.jpg', 'logo_coffee.svg', '#44363a', '_handcoffee_header.jpg', 'Hand-a-Coffee is a clean and straight to the point design for a caffeteria. The colours picked and the fonts reflect a calm and relaxing ambient, with room for classy drinks. Some particularities of this project include: CSS3 animations and transitions, and clean JavaScript. \r\n', 'sdf,jhavsjhgvdfjgvdfgkhvdksfbsjbgfljgbdfjlbgdfjksbgjsdfbgjldfgbdfjlsgbdjlsfgb\r\ndljfgbdljfgbdfjlgbjlfbgdfjlbgdjflsbgsldjfbgj\r\nlsdfbgdjslfbgjsldfbgsjdlfbgdjlsfgbdsljbgdjlsffbgjdslfbgjldfbgjdsfbgjlsdbgdjlfgbdjlsfbgsdjlfgbdlsjfgbdfjlsbgjdfbgjldsfbgjlsdf\r\nbgjldfbgdjlsfbgdfjlsgbjdlfgbdjlsfb gjlsdfbgsdljfgbdfsjlgbsldgb.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(6, 'LEDC', 'LEDC - London Economic Development Corporation', 'http://discoverldnont.ca/', '_ledc_thumb.jpg', 'logo_ledc.png', '#2c3a52', '_ledc_header.jpg', 'Project created in partnership with the Reactr team at Fanshawe College. It included the design and implementation of an exclusive website for a scavenger hunt challenge, offered from London Economic Development Corporation, to domestic and international students at London, Ontario. \r\nThe main idea is to stimulate students to get to know the city through questions and social media interactions. The need for something concise but that could be easily transferred to mobile was fundamental. The implementation was made through Code Igniter and php.\r\n', NULL, NULL, NULL),
(7, 'Odell Beckham Jr', 'Officialize', 'https://github.com/octopx-digital/odell-beckham-jr', '_odell_thumb.jpg', 'logo_odell.png', '#db293e', '_odell_header.jpg', 'Odell Beckham Jr is a NFL football player, famous for “The Catch”: an impressive one hand catch that made him worldwide famous. Odell is cool, is young, is full of energy and he needs a website to translate that.', 'Many football players have very short career. Let’s say that for all the time and effort investments that they are putting into becoming the best at what they do, they would need three times more effort and energy towards building a solid career that could provide them a structured and continuous growth. Soon enough they would retire for some reason and as fast as a meteoric career would birth, it also would vanish. If they don’t work hard enough into an entrepreneurial path, soon enough they would be forgotten. </br> That’s exactly the scenario that Officialize wants to change. They want to offer their athletes a real career instead of a consultation, they want them to have a rocket solid plan, because they know as long as their athletes are up and working, they are also benefiting from it.', 'We came up with a website that would not only inform, but entertain and attract Odell’s biggest fans. Full of videos, exclusive photos, social media updates, latest news and with an interactive life timeline, the idea is to increase visitors and numbers of clicks. </br>\r\n As Odell is very participative and social athlete, participating in many events, attending all sorts of gatherings, one of the biggest ideas is to launch his own brand of clothing and accessories, that would also help to drive people into his website.', 'Pretty simple and straight forward project using only HTML, MySQL and pure Javascript. We built a fully responsive website from mobile up with CSS grid and CSS flexbox, Grunt as our main task manager and GreensockJs to implement interactions and animations on the timeline. We care about browser support so besides the fact that it was intensively tested across all the browsers we also wanted to make sure that the video was able to be played, so we display it in different formats. Versioning control was used through Bitbucket as it would require privacy during development. </br></br>\r\nTeam: </br> Flavia Tozzini Barreto – Project Manager and Design Lead </br> Emre Filiz – Designer </br>\r\nMauricio Silveira – Web Developer </br> Barbara Bombachini – Web Developer / Photographer </br> Eric Lee – Motion Designer </br>'),
(8, 'Organ Donation', 'Lashbrook Marketing', 'https://github.com/octopx-digital/live-beyond', '_od_thumb.jpg', 'logo_od.png', '#AB2E46', '_od_header.jpg', 'Live Beyond your Life is an organ donation awareness campaign created from a partnership with Lashbrook Marketing and Fanshawe College to bring awareness to this precious cause and drive people into signing as an organ donor.', 'By itself and because of all the stigma involved in the process, the campaign is all about dealing with a challenging theme. Sometimes it seems difficult to make people change their mind, that’s why the main focus here is on the younger generation. From an educational perspective, our approach is to convince people that there are only benefits when you sign as an organ donor. We wanted to focus in the importance of talking about it now, making people aware that so many lives are lost just because we don’t discuss it previously with the family and so much can be done with such a trivial action. Part of the main problem as well are all the myths around the subject: it’s not rare to see someone saying that doctors wouldn’t save their lives if they were organ donors – what it’s not truth! </br>\r\n Part of the problem is clarify information about organ donation, make people feel proud of signing up and not only that, but making young people engage, talk to their loved ones and spread the word. Make it look natural, the only reasonable path, something that would embarrass you if you NOT make it.', 'As part of a digital world, we planned to engage visitors within many “fronts” of action. First of all, by creating a benefits’ club through partnerships, we would be able to offer discounts to our followers as well as promote health events. Free yoga class? We would be there, registering people. Free movie night? Free day at the gym? There are so many ways to help and promote organ donation. </br> Our main goal is to promote a healthy and wealthy living, so one of our main ideas is to make a full month of awareness, using hashtags on social media, promoting events, marathons and races across the country to make people share their option as a life savior: an organ donor. At the utmost, we aim to call into a younger audience by promoting a game. Based out of a successful awareness campaign created on Melbourne, Australia, we would create and promote an online game that would talk about all those important issues through a funny, relaxed and informal way. To download the game, you would only need to sign as an organ donor, nothing that would take you more than 2 minutes. All that would be offer through our website.', 'In the first implemented phase, we developed a full Nodejs website with MySQL on the back-end, powered by ExpressJs and using Handlebars as the render engine. Webpack is our module bundler and it will compile and transpile all Javascript files as well as compile and auto prefix SASS. Versioning control was done since the beginning with Git. </br></br>\r\nTeam: </br> Flavia Tozzini Barreto – Project Manager and Design Lead </br> Emre Filiz – Designer </br>\r\nMauricio Silveira – Web Developer </br> Barbara Bombachini – Web Developer / Photographer </br> Eric Lee – Motion Designer </br>'),
(9, 'Choose London', 'LEDC', 'https://github.com/octopx-digital/choose-london', '_chooselondon_thumb.jpg', 'logo_chooselondon.png', '#f9af1d', '_chooselondon_header.jpg', 'Choose London is a multi-platform campaign created from a partnership with Fanshawe College and LEDC. The main goal of the project is to attract young professionals, concentrating more investments to the city and making London, Ontario, the home for a new generation of game changers in the technology industry and the next Canada’s tech hub.', 'London, Ontario is home for 2 big educational institutions: Western University and Fanshawe College. Together, they drain many young students looking for knowledge, professional advice and graduation into the city, concentrating a big amount of graduates each year. At the same time, London naturally attracts many companies looking to expand their business across the country and the region as London is the perfect stop between US and Toronto. </br> With this is mind, LEDC provoked Fanshawe’s students into coming with a digital campaign to promote the city and its events, stimulating the growth of the city and attracting students and young professionals that would come for business and stay for life. The main concern was to find a balance between career and quality of life, making a campaign that would engage visitors and offer as many info about the city as possible. In a digital world, being able to keep its accuracy and sharing live data is key for success. Things are each day more interconnected – from social media to apps, from website, to mobile.', 'The project was divided in two phases: the first phase would be mainly research based, discussing and creating the main approach and collecting data for the implementation. The solution we came up with and the whole campaign was to show people how interesting London is. Being able to display live data, share info about the many events and festivals held on the city and all the job opportunities around were a key factor to our campaign. We researched over API’s to gather all live data and how we would approach social media to share this and attract more visitors in both LEDC and London Tech Jobs website. </br> The second phase of the project was the implementation phase: divided in smaller teams, we discussed and organized ourselves to create assets, produce video material and photography, collect data and build a real-content website and social media mockups to implement the campaign across the region.', 'Based mainly in PHP, we created a website full of colours and powerful images, to drive attention. We didn’t want anything complex or that could slow down our application so there’s no external libraries or frameworks in use. Besides being completely responsive, the website was built over pure PHP, HTML and Javascript. Our database was driven on MySQL and to keep our style consistent across all sections, all style was made using SASS. Load speed was a big concern so we used Grunt as our main task manager, responsible to compile and transpile all Javascript, compile and auto prefix SASS, as well as compress our imagery. </br> For versioning control, we used Git since the very early implementation and D3.js to collect and display live data. We also used Greensock.js for small animations and user interactivity. </br> Content on the website would be all fetched through API’s or sourced over CSV files as well as easily updated on the friendly custom CMS created exclusively for this project. </br></br>  Team: </br> Flavia Tozzini Barreto – Project Manager and Design Lead </br> Emre Filiz – Designer </br>\r\nMauricio Silveira – Web Developer </br> Barbara Bombachini – Web Developer / Photographer </br> Eric Lee – Motion Designer </br>'),
(10, 'J/E Bearing', 'J/E Bearing and Machine', 'https://github.com/bbombachini/je-bearing', '_jebearing_thumb.jpg', 'logo_jebearing.png', '#009B89', '_jebearing_header.jpg', 'A web-based application for a manufacturing company called JE Bearings that will help increase productivity, accuracy, and employee to employee communication.', 'This application was specifically built for a part manufacturing company, called JE Bearings. The company has complex, multi-step manufacturing work-flows that need to be maintained and accessible to everyone in the company. Their original paper-based communication and data organization system was inefficient and out of date, making it hard for employees to access information and communicate with one another without constant work disruptions or errors. </br>\r\nThe application serves several purposes with the main one being to train employees on how to complete specific jobs. Their current paper system is out-of-date, inefficient, and inconsistent leaving employees with questions and doubts.\r\n\r\nOur application not only provides a better way to organize, structure, and share information with employees but also an opportunity for employees to give feedback so that information can be updated and improved for the future.', 'The application will be accessible on a tablet at each work station where they can log in, search for the jobs they need to complete, and being following the instructions.\r\n\r\nThe information can be easily updated by an administrator or supervisor at anytime so that instructions stay accurate and up to date. </br>\r\nImplementing this application into their daily work-flow will show measurable increases in productivity and communication. The integration of different information sources into one application will result in workers getting all required news and job information in a timelier fashion. Adding and customizing content in the application will be manageable by anyone with a registered account, making it easier to keep information current, timely and accurate.', 'The application was developed using Laravel, a PHP framework, which provides easy ways to implement common tasks such as: authentication, routing, and view templating. Laravel also has a standardized work-flow which makes it easier for a team to work simultaneously.</br></br>\r\nThe front end of the application uses CSS Grid and Flex-box as they are flexible and available natively in the browser and therefor do not add unneeded file sizes to an already-large application. JavaScript was used extensively in the application to provide a more performant user interface and fast asynchronous content loading. </br>\r\nWe wanted to avoid unnecessary large file sizes so that the application would run as quickly and efficiently as possible. Javascript  and Ajax is used to enhance user experience and to quickly load data.</br></br></br>\r\n\r\nTeam:</br>\r\n<a href=\"#\">Barbara Bombachini</a> - Front-end Dev</br>\r\n<a href=\"http://claramarshall.com/\">Clara Marshall</a> - Front-end Dev/ Designer and Project Manager </br>\r\n<a href=\"http://maursilveira.com\">Mauricio Silveira</a> - Back-end Dev');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proj_cat`
--

CREATE TABLE `tbl_proj_cat` (
  `proj_cat_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_proj_cat`
--

INSERT INTO `tbl_proj_cat` (`proj_cat_id`, `category_id`, `project_id`) VALUES
(1, 1, 1),
(3, 3, 2),
(4, 2, 3),
(5, 3, 4),
(6, 1, 2),
(7, 3, 3),
(8, 1, 5),
(9, 3, 5),
(10, 1, 6),
(11, 2, 4),
(12, 3, 6),
(13, 1, 8),
(14, 1, 9),
(15, 1, 10),
(16, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proj_img`
--

CREATE TABLE `tbl_proj_img` (
  `proj_img_id` mediumint(8) UNSIGNED NOT NULL,
  `project_id` mediumint(8) UNSIGNED NOT NULL,
  `project_img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_proj_img`
--

INSERT INTO `tbl_proj_img` (`proj_img_id`, `project_id`, `project_img`) VALUES
(1, 5, '_handcoffee_mockup1.jpg'),
(2, 5, '_handcoffee_mockup2.jpg'),
(3, 1, '_crazypsum_mockup1.jpg'),
(4, 1, '_crazypsum_mockup2.jpg'),
(5, 6, '_ledc_mockup1.jpg'),
(6, 4, '_lexus_mockup1.jpg'),
(7, 4, '_lexus_mockup2.jpg'),
(8, 4, '_lexus_mockup3.jpg'),
(9, 4, '_lexus_mockup4.jpg'),
(10, 3, '_reddeer_mockup1.jpg'),
(11, 3, '_reddeer_mockup2.jpg'),
(12, 3, '_reddeer_mockup3.jpg'),
(13, 2, '_ridelondon_mockup1.jpg'),
(14, 2, '_ridelondon_mockup2.jpg'),
(15, 8, '_od_mockup1.jpg'),
(16, 8, '_od_mockup2.jpg'),
(17, 8, '_od_mockup3.jpg'),
(18, 3, '_reddeer_mockup4.jpg'),
(19, 7, '_odell_mockup2.jpg'),
(20, 7, '_odell_mockup1.jpg'),
(21, 10, '_jebearing_mockup3.jpg'),
(22, 10, '_jebearing_mockup2.jpg'),
(23, 10, '_jebearing_mockup1.jpg'),
(24, 9, '_chooselondon_mockup1.jpg'),
(25, 9, '_chooselondon_mockup2.jpg'),
(26, 9, '_chooselondon_mockup3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_steps`
--

CREATE TABLE `tbl_steps` (
  `steps_id` int(10) UNSIGNED NOT NULL,
  `steps_title` varchar(50) NOT NULL,
  `steps_desc` varchar(500) NOT NULL,
  `steps_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_steps`
--

INSERT INTO `tbl_steps` (`steps_id`, `steps_title`, `steps_desc`, `steps_img`) VALUES
(1, 'Research', 'Intensive research helps to understand client\'s needs and plan on which technologies and solutions are going to be used. Not only that, but while on research, we are understanding the scope of the project and what are going to be the next steps and the necessary approach to be successful.', 'icon_brainstorm.png'),
(2, 'Learn', 'From the research we came up with a lot of ideas on which could be the possible solutions for the project. Here, learn might be literally understood as learning a new language or framework or just as trying and learning from experiments and labs prior to the implementation process.', 'icon_atom.png'),
(3, 'Create', 'The development of a project is not always a linear growth path but allowing the client to have constants and in depth updates, as well as keeping a clear communication throughout the whole process make things a lot easier. While in the implementation process of the solutions proposed, the idea is to acknowledge possible problems, extensively test the application and integrate changes on the fly that might be necessary.', 'icon_tube.png'),
(4, 'Launch', 'After the extensive support throughout the development, the final tests and the actual implementation need attention. At the completion of the process, we tend to easily see where and how the project can evolve in the future.', 'icon_rocket.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `tbl_proj_cat`
--
ALTER TABLE `tbl_proj_cat`
  ADD PRIMARY KEY (`proj_cat_id`);

--
-- Indexes for table `tbl_proj_img`
--
ALTER TABLE `tbl_proj_img`
  ADD PRIMARY KEY (`proj_img_id`);

--
-- Indexes for table `tbl_steps`
--
ALTER TABLE `tbl_steps`
  ADD PRIMARY KEY (`steps_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `project_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_proj_cat`
--
ALTER TABLE `tbl_proj_cat`
  MODIFY `proj_cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_proj_img`
--
ALTER TABLE `tbl_proj_img`
  MODIFY `proj_img_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_steps`
--
ALTER TABLE `tbl_steps`
  MODIFY `steps_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

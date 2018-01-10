-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 10, 2018 at 12:26 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: db_portfolio
--

-- --------------------------------------------------------

--
-- Table structure for table tbl_categories
--

CREATE TABLE tbl_categories (
  category_id int(10) UNSIGNED NOT NULL,
  category_name varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_categories
--

INSERT INTO tbl_categories (category_id, category_name) VALUES
(1, 'Web Development'),
(2, 'Branding'),
(3, 'Web Design');

-- --------------------------------------------------------

--
-- Table structure for table tbl_language
--

CREATE TABLE tbl_language (
  lang_id int(10) UNSIGNED NOT NULL,
  lang_name varchar(30) NOT NULL,
  lang_thumb varchar(100) NOT NULL,
  lang_desc text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_language
--

INSERT INTO tbl_language (lang_id, lang_name, lang_thumb, lang_desc) VALUES
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
-- Table structure for table tbl_projects
--

CREATE TABLE tbl_projects (
  project_id int(10) UNSIGNED NOT NULL,
  project_name varchar(100) NOT NULL,
  project_client varchar(150) DEFAULT NULL,
  project_url varchar(350) DEFAULT NULL,
  project_thumb varchar(350) DEFAULT NULL,
  project_cover varchar(350) DEFAULT 'default.jpg',
  project_colour varchar(100) NOT NULL,
  project_img varchar(150) NOT NULL,
  project_description text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_projects
--

INSERT INTO tbl_projects (project_id, project_name, project_client, project_url, project_thumb, project_cover, project_colour, project_img, project_description) VALUES
(1, 'Crazypsum', NULL, 'https://github.com/bbombachini/crazypsum', '_crazy_thumb.jpg', 'logo_crazy.svg', '#fec252', '_design_crazypsum.jpg', 'Crazypsum is a small personal project based in vanilla JavaScript interactions. It’s a single page application that use some prompt questions in order to create a customized Lorem Ipsum text. The idea came from the feel that if it was possible to insert some project related words into fake Lorem Ipsum text, it would make it more accepted to be used along the design process. Far for being completely crazy, the general feel and the main page shows a storm of possibilities, random objects, pop-culture-like and vibrant coloured.\r\n'),
(2, 'Ride London', NULL, 'https://github.com/bbombachini/rideLondon', '_ridelondon_thumb.jpg', 'logo_ridelondon.png', '#7b2bdb', '_design_ridelondon.jpg', 'Ride London is a volunteer and community based project idealized to be a place to connect and support bikers on London, Ontario. Inspired in similar projects around the globe, Ride London gather commuters to interchange information related to security, bicycle maintenance and other cyclists related issues. Maintained by and for the community of local cyclists, this project was created to be a responsive multi-page website with general info about the project and the meetings as well as bring awareness to the riders’ cause.\r\n'),
(3, 'Red Deer', NULL, NULL, '_reddeer_thumb.jpg', 'logo_reddeer.png', '#6d1500', '_design_reddeer.jpg', 'Branding project for Red Deer, a familiar Winery from Niagara, Ontario. From the logo conception through the brand guide, from the mockup label to the photo shoot, the unity of the brand was developed in order to build a cheerful but respectable image brand. \r\nThe strength of the visuals created a recognizable label with reliable standards among the industry.\r\n'),
(4, 'Lexus', 'Lexus of Calgary', NULL, '_lexus_thumb.jpg', 'logo_lexus.png', '#ebebeb', '_design_lexus.jpg', 'Re-branding Lexus of Calgary in this audacious web design brought a vivacious and fresh look for this traditional brand. The use of complementary colours was fundamental to create a bold, remarkable and contemporary design. The images and the broken blocks of content gave it a very particular and exclusive look. \r\n'),
(5, 'Hand-a-coffee', NULL, NULL, '_coffee_thumb.jpg', 'logo_coffee.svg', '#44363a', '_design_coffee.jpg', 'Hand-a-Coffee is a clean and straight to the point design for a caffeteria. The colours picked and the fonts reflect a calm and relaxing ambient, with room for classy drinks. Some particularities of this project include: CSS3 animations and transitions, and clean JavaScript. \r\n'),
(6, 'LEDC', 'LEDC - London Economic Development Corporation', 'http://discoverldnont.ca/', '_ledc_thumb.jpg', 'logo_ledc.png', '#2c3a52', '_design_ledc.jpg', 'Project created in partnership with the Reactr team at Fanshawe College. It included the design and implementation of an exclusive website for a scavenger hunt challenge, offered from London Economic Development Corporation, to domestic and international students at London, Ontario. \r\nThe main idea is to stimulate students to get to know the city through questions and social media interactions. The need for something concise but that could be easily transferred to mobile was fundamental. The implementation was made through Code Igniter and php.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table tbl_proj_cat
--

CREATE TABLE tbl_proj_cat (
  proj_cat_id int(10) UNSIGNED NOT NULL,
  category_id int(10) UNSIGNED NOT NULL,
  project_id int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_proj_cat
--

INSERT INTO tbl_proj_cat (proj_cat_id, category_id, project_id) VALUES
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
(12, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table tbl_steps
--

CREATE TABLE tbl_steps (
  steps_id int(10) UNSIGNED NOT NULL,
  steps_title varchar(50) NOT NULL,
  steps_desc varchar(500) NOT NULL,
  steps_img varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table tbl_steps
--

INSERT INTO tbl_steps (steps_id, steps_title, steps_desc, steps_img) VALUES
(1, 'Research', 'Intensive research helps to understand client\'s needs and plan on which technologies and solutions are going to be used. Not only that, but while on research, we are understanding the scope of the project and what are going to be the next steps and the necessary approach to be successful.', 'icon_brainstorm.png'),
(2, 'Learn', 'From the research we came up with a lot of ideas on which could be the possible solutions for the project. Here, learn might be literally understood as learning a new language or framework or just as trying and learning from experiments and labs prior to the implementation process.', 'icon_atom.png'),
(3, 'Create', 'The development of a project is not always a linear growth path but allowing the client to have constants and in depth updates, as well as keeping a clear communication throughout the whole process make things a lot easier. While in the implementation process of the solutions proposed, the idea is to acknowledge possible problems, extensively test the application and integrate changes on the fly that might be necessary.', 'icon_tube.png'),
(4, 'Launch', 'After the extensive support throughout the development, the final tests and the actual implementation need attention. At the completion of the process, we tend to easily see where and how the project can evolve in the future.', 'icon_rocket.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table tbl_categories
--
ALTER TABLE tbl_categories
  ADD PRIMARY KEY (category_id);

--
-- Indexes for table tbl_language
--
ALTER TABLE tbl_language
  ADD PRIMARY KEY (lang_id);

--
-- Indexes for table tbl_projects
--
ALTER TABLE tbl_projects
  ADD PRIMARY KEY (project_id);

--
-- Indexes for table tbl_proj_cat
--
ALTER TABLE tbl_proj_cat
  ADD PRIMARY KEY (proj_cat_id);

--
-- Indexes for table tbl_steps
--
ALTER TABLE tbl_steps
  ADD PRIMARY KEY (steps_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table tbl_categories
--
ALTER TABLE tbl_categories
  MODIFY category_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table tbl_language
--
ALTER TABLE tbl_language
  MODIFY lang_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table tbl_projects
--
ALTER TABLE tbl_projects
  MODIFY project_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table tbl_proj_cat
--
ALTER TABLE tbl_proj_cat
  MODIFY proj_cat_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table tbl_steps
--
ALTER TABLE tbl_steps
  MODIFY steps_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

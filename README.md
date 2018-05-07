# Online Portfolio

## Installation

You will need to have NodeJS installed and Bower in order to run this project.

- [NodeJS](https://nodejs.org/en/) (0.12 or greater)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

Clone repo using github inside `htdocs` folder on Mac or `www` folder on Windows:

```
git clone <project-url> <folder-name>
```

### Installing dependencies

Then open the folder in your command line, and install the dependencies:

```
cd <project-folder-name>
```

```
npm install
```

### Compiler

This project compile files and run sass using Gulp as a task runner. Open the folder on command line and run gulp.

```
cd <project-folder>
```

```
gulp
```
### Run Application

It is necessary to import the database content located on the database folder database to local application. It is possible to import it using PHPMyAdmin interface or via command line:

```
mysql -h localhost -u <user> -p <password> <database name> < db_portfolio.sql
```

After making sure that MAMP is running, go to your browser and run:

```
localhost:8888/<project-folder>
```

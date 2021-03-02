# SimpleCalendar

This repository holds the complete code and script for SimpleCalendar. SimpleCalendar is a file-server system built with PHP version 7.4. SimpleCalendar uses S-3 an Amazon service known as "Simple Storage Service". SimpleCalendar allows administrators to upload and delete multiple files (PDF,Exe,dox,etc) in calendar using Dropzone (AJAX) and S-3. Administrators are permitted to publish files and daily notes for their registered users to view daily notes and download files in the calendar. SimpleCalendar is protected by Symfony 5's firewall bundle to authenticate users. SimpleCalendar uses role-based access control (RBAC) authorization allowing users to have access to specific HTML pages and uses MySQL database to store user accounts' email and password.  

SimpleCalendar Web Application: https://simplecalendarmaker.com

## Setup

**Download Composer dependencies** <br />
Before setting up application you must:

Install PHP 7.2.5 or higher and these PHP extensions (which are installed and enabled by default in most PHP 7 installations): Ctype, iconv, JSON, PCRE, Session, SimpleXML, and Tokenizer; 
Install Composer: 

## link: https://getcomposer.org/download/ <br />
which is used to install PHP packages.
Optionally, you can also install Symfony CLI. This creates a binary called symfony that provides all the tools you need to develop and run your Symfony application locally.

## link: https://symfony.com/download <br />

Make sure you have [Composer installed](https://getcomposer.org/download/)
and then run:

```
composer install
```

You may alternatively need to run `php composer.phar install`, depending
on how you installed Composer.

**Configure the the .env File** <br />

First, make sure you have an `.env` file (you should).
If you don't, copy `.env.dist` to create it.

Next, look at the configuration and make any adjustments you
need - specifically `DATABASE_URL`.

**Setup the Database** <br />

Again, make sure `.env` is setup for your computer. Then, create
the database & tables!

```
php bin/console doctrine:database:create
php bin/console doctrine:migrations:migrate
php bin/console doctrine:fixtures:load
```

If you get an error that the database exists, that should
be ok. But if you have problems, completely drop the
database (`doctrine:database:drop --force`) and try again.

**Start the built-in web server** <br />

You can use Nginx or Apache, but the built-in web server works
great:

```
php bin/console server:run
```

Now check out the site at `http://localhost:8000`

Contact information for Devs: 

** Mauro Vargas, Github: mauro1477, Linkedin: https://www.linkedin.com/in/mauro-vargas-jr-889559167/**

** Laura Ballantyne, Github: lauraballant Linkedin: https://www.linkedin.com/in/laura-ballantyne-24b066182/**


# SimpleCalendar

This repository holds the complete code and script for SimpleCalendar. SimpleCalendar is a file-server system built with PHP version 7.4. SimpleCalendar uses S-3, an Amazon service known as "Simple Storage Service". SimpleCalendar allows administrators to upload and delete multiple files (PDF,Exe,dox,etc) in calendar using Dropzone (AJAX) and S-3. Administrators are permitted to publish files and daily notes for their registered users to view daily notes and download files in the calendar. SimpleCalendar is protected by Symfony 5's firewall bundle to authenticate users. SimpleCalendar uses role-based access control (RBAC) authorization allowing users to have access to requested HTML pages and uses MySQL database to store user accounts' email and password.  

SimpleCalendar Web Application: https://simplecalendarmaker.com

## Setup

### Prequisites <br />

1. Git
2. Install PHP 7.2.5 or higher and these PHP extensions (which are installed and enabled by default in most PHP 7 installations): Ctype, iconv, JSON, PCRE, Session, SimpleXML, and Tokenizer 
3. Symfony [install](https://symfony.com/download) .  Optionally, you can also install Symfony CLI. This creates a binary called symfony that provides all the tools you need to develop and run your Symfony application locally. 
4. Node [install](https://nodejs.org/en/download/current/)
5. Yarn [install](https://classic.yarnpkg.com/en/docs/install/)
6. A clone of `Simple-Calendar` repo

### Installation <br />
1. `cd Simple-Calendar` to go into project root 
2. Make sure you have [Composer installed](https://getcomposer.org/download/)
and then run:

```
composer install
```

You may alternatively need to run `php composer.phar install`, depending
on how you installed Composer. 

3. Run `npm install` and `yarn` 
4. Set `APP_ENV=dev` 
5. Configure the .env File

  First, make sure you have an `.env` file (you should).
  If you don't, copy `.env.dist` to create it.

  Next, look at the configuration and make any adjustments you
  need - specifically `DATABASE_URL`. <br />
  
6. Setup the Database 

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

### Start the built-in web server <br />

You can use Nginx or Apache, but the built-in web server works
great:

```
symfony serve
```

Now check out the site at `http://localhost:8000` 

### Contact information for Devs

**Mauro Vargas** <br />
Github: mauro1477 <br />
Linkedin: https://www.linkedin.com/in/mauro-vargas-jr-889559167/ 

**Laura Ballantyne** <br />
Github: lauraballant <br />
Linkedin: https://www.linkedin.com/in/laura-ballantyne-24b066182/


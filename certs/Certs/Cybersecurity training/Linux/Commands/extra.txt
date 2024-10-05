
Installing_LAMP_MySql_Apache_PHP
================================
July 8th, 2015


http://ubuntuforums.org/showthread.php?t=1977769

First Login as root
  sudo su

Installing MySQL 5
  apt-get install mysql-server mysql-client
  
  You will be asked to provide a password for the MySQL root user - this password is valid for the user root@localhost as
  well as root@server1.example.com, so we don't have to specify a MySQL root password manually later on:

  New password for the MySQL "root" user: <-- yourrootsqlpassword
  Repeat password for the MySQL "root" user: <-- yourrootsqlpassword


Installing Apache2
  apt-get install apache2
  
Now direct your browser to http://127.0.0.1, and you should see the Apache2 placeholder page (It works!):


Installing PHP5
  apt-get install php5 libapache2-mod-php5

  We must restart Apache afterwards:
  /etc/init.d/apache2 restart  
  

Testing PHP5 / Getting Details About Your PHP5 Installation
  nano /var/www/info.php
  
  <?php
      phpinfo();
  ?>


  Now we call that file in a browser (e.g. http://127.0.0.1/info.php):

As you see, PHP5 is working, and it's working through the Apache 2.0 Handler, as shown in the Server API line. 

If you scroll further down, you will see all modules that are already enabled in PHP5. 

MySQL is not listed there which means we don't have MySQL support in PHP5 yet.

Getting MySQL Support In PHP5

To get MySQL support in PHP, we can install the php5-mysql package. 
It's a good idea to install some other PHP5 modules as well as you might need them for your applications. 
You can search for available PHP5 modules like this:
  
  apt-cache search php5
  
Pick the ones you need and install them like this:
  apt-get install php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl


Now restart Apache2:
  /etc/init.d/apache2 restart

Now reload http://127.0.0.1/info.php in your browser and scroll down to the modules section again. 

You should now find lots of new modules there, including the MySQL module:


phpMyAdmin
  apt-get install phpmyadmin

you will see the following questions:

Web server to reconfigure automatically: <-- apache2
Configure database for phpmyadmin with dbconfig-common? <-- No

Afterwards, you can access phpMyAdmin under http://127.0.0.1/phpmyadmin/

   to reset installation:
   sudo dpkg-reconfigure phpmyadmin


Re: Installing Apache2 With PHP5 And MySQL Support On Ubuntu 12.04 LTS (LAMP)
  apt-get install phpmyadmin
  
  
NOTE *******
At this time I am having problems login into MySql using phpmyadim.

As soom as I find the solution I will post it.
  
  sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf.d/phpmyadmin.conf


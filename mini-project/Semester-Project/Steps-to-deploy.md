## Steps to deploying the app

- Create an account with a cloud provider and launch an instance.
  - You can use AWS or linode.Ensure you click on Debian 11 before launching your instance
  - Ensure you set your firewall rules to enable http, https and allow ssh from your IP

- Update your apt using the command: sudo apt update

- Install Apache web server
To install Apache web server, run the following command:

> $ sudo apt install apache2

#### Once installed, Apache should be running. If it’s not, for whatever reason, start it:

> $ sudo systemctl start apache2

#### Install PHP and PHP extensions for Laravel Application. By default, PHP 8.1 is not included in the Debian 11 default repository. So you will need to add the DEB.SURY.ORG repository to APT.

#### First, install the required packages using the following command:

> $ sudo apt-get install ca-certificates apt-transport-https software-properties-common -y

#### Once all the packages are installed, add a Sury repository to APT using the following command:

> $ echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/sury-php.list

#### Next, download and add the GPG key with the following command:

> $ wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -

#### Once you are done, update the repository with the following command:

> $ apt-get update -y

#### Now, you can install the PHP 8.1 using the following command:

> $ sudo apt-get install php8.1 libapache2-mod-php php8.1-dev php8.1-zip php8.1-curl php8.1-mbstring php8.1-mysql php8.1-gd php8.1-xml

#### Verify if PHP is installed using the command below.
 > php -v

#### Install mysql server
#### Download the MySql Apt Repository in your folder using the command below
> sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.23-1_all.deb

#### Install the downloaded package using the command below
> sudo dpkg -i mysql-apt-config_0.8.23-1_all.deb
#### Update your apt
> sudo apt update

#### Install Mysql server
> sudo apt-get install mysql-server

#### Check the status of mysql server
> systemctl status mysql

#### Login into your server
> mysql -u root -p

#### List the available databases
> SHOW DATABASES;

#### Create your Database
> CREATE DATABASE "name of database";<br>
EXIT

### Install Git on the server to enable clone the repo

#### Update your apt and install
> sudo apt update -y <br>
> sudo apt install git -y

### Install Composer

#### To download Composer, run the following command:

> $ curl -sS https://getcomposer.org/installer | php

#### Next, move the composer file to the /usr/local/bin path.

> $ sudo mv composer.phar  /usr/local/bin/composer

#### Assign execute permission:

> $ sudo chmod +x   /usr/local/bin/composer

#### Verify the Composer version installed:

> $ composer --version

### Clone the git Repo

First, cd into your /var/www/html <br>
- Do git clone and the link of the repo
- Clone the repo into that /var/www/html folder
- cd into the cloned folder(laravel-example-app)
- do ls -al
- Rename the .env.example file to .env using the command: 
> mv .env.example .env <br>
> sudo vi .env
#### Edit only the following
DB_URL=http://"your server IP"<br>
DB_PORT= "3306"<br>
DB_USERNAME= "the username you used when logging into your mysql server"<br>
DB_HOST="Your locallhost IP"<br>
DB_DATABASE= "name of the database you created"<br>
DB_PASSWORD= "the mysql password you created while downloading"
Save and close the file.
#### Still inside the repo, enter the command below;
- cd into routes and edit the web.php file
  - Uncomment the code below that starts with "Routes"<br>
  Save and exit

#### Using composer install the repository by typing the command below
> sudo composer install

#### Check the version installed using the command 
> php artisan

#### Generate a key for the app
> php artisan migrate<br>
> php artisan generate key

### Edit the apache2 config file
- Create your own config file for the app
 > cd /etc/apache2/sites-available
- Create your config file
- Input and edit the code below:

<VirtualHost *:80><br>
ServerName your-domain.com<br>
ServerAdmin webmaster@your-domain.com<br>
DocumentRoot /var/www/html/laravelapp/public<br>

<Directory /var/www/html/laravelapp/><br>
Options +FollowSymlinks<br>
AllowOverride All<br>
Require all granted<br>
</Directory><br>
ErrorLog ${APACHE_LOG_DIR}/your-domain.com_error.log
CustomLog ${APACHE_LOG_DIR}/your-domain.com_access.log combined
</VirtualHost>

Save the file and exit
### Enable the laravel virtual host.

> $ sudo a2ensite laravel.conf

#### Restart the Apache web server.

> $ sudo systemctl restart apache2

#### Note, make sure you use your server Ip address as your domain name to test the app.

At the end of everything, this page should display:
![laravel app frontend page](/fully-deployed-laravelapp.JPG "laravelapp")

  
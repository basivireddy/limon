# LiMON #


A **light-weight** and simple **live** monitoring tool for **real-time monitoring** of performance of **multiple servers** on a **single dashboard**.


[**DEMO**](https://live-server-monitor.herokuapp.com/) | [**Docker**](#docker) | [**Installation Instructions**](#installation) 

------

## ScreenShot: ##

![ScreenShot](https://raw.github.com/basivireddy/limon/master/DashboardScreenShot.JPG)

-------

## Docker

```
docker run -it -d --name limon basivireddy/limon:latest

```

## Installation

### 1. Download LiMON
Download the most recent version of LiMON. Extract the files into directory ``` /var/www/html/ ```. So after this the directory structure will be like this:
```

├── /var/www/html/limon/
│                 ├── /backend
│                 ├── /css
│                 ├── /font
│                 ├── /jquery
│                 ├── /js
│                 ├── /images
|                 ├── index.php
|                 ├── form_to_ip_list.php
|                 ├── delete_ip_address_from_ip_list.php
```
### 2. Getting Started  
Below steps have been performed and tested on Ubuntu 14.04 LTS. Please find the corresponding steps for your own platform/OS:


#### PHP
Install PHP
```
sudo apt-get install php5
```

#### Apache
Install Apache
```
sudo apt-get install apache2
```
Finally, restart Apache:
```
sudo service apache2 restart
```

#### SSHPASS
Install sshpass rpm
```
sudo apt-get install -y sshpass rpm
```

## Make it Run: ##

 ``` cd /var/www/html/limon/backend/ && nohup bash /var/www/html/limon/backend/ping_test_and_script_generation.sh > /var/log/limon.log 2>&1 & ``` 



then browse ***http://your_server_ip/limon/***

That's it!! you have done your job. Now its time for him to take over!

---------

## Things to do: ##

- Asynch (node.js)?
- Automated Tests & Test cases

---------

Containerize This: Supply Chain Management(PHP/Apache/MySQL)
===================================

### Intro
They are continuing with the Containerize This! series, we're looking at common web application technologies and how they can be used within Docker containers effectively. PHP/Apache/MySQL have a very large market share on content management systems and web applications on the internet, and with so many developers using these technologies, there is a lot of interest in modernizing the way that they use them from from local development to production. Today we'll take a look at several ways to containerize and link PHP, Apache, and MySQL together while demonstrating some tips, tricks, and best practices that will help you take a modern approach when developing and deploying your PHP applications!

There are 5 simple files for this demo that you can clone from https://github.com/mzazon/php-apache-mysql or simply copy and paste from this post to replicate the following folder structure. Please note that some Docker and security principles have been skipped here for simplicity and demonstration purposes. Namely, PHP using root credentials, hardcoded/weak MySQL passwords, lack of SSL, to name a few! Do not run this code in production! :-)

```
/php-apache-mysql/
├── apache
│   ├── Dockerfile
│   └── demo.apache.conf
├── docker-compose.yml
├── php
│   └── Dockerfile
└── app
    └── SCMM
    └── sourcecodester
```

Once this structure is replicated or cloned with these files, and Docker is installed locally, you can simply run "docker-compose up" from the root of the project to run this entire demo and point your browser (or curl) to http://localhost:80 to see the demo. We will get into what "docker-compose" is, and what makes up this basic demonstration in the following sections!

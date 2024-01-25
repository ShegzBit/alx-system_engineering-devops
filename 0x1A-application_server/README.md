0x1A. Application server
========================

DevOpsSysAdmin

-   By: Sylvain Kalache, co-founder at Holberton School
-   Weight: 1
-   Project will start Jan 22, 2024 6:00 AM, must end by Jan 26, 2024 6:00 AM
-   Checker was released at Jan 24, 2024 8:24 PM
-   An auto review will be launched at the deadline

### Concepts

*For this project, we expect you to look at these concepts:*

-   [Web Server](https://intranet.alxswe.com/concepts/17)
-   [Server](https://intranet.alxswe.com/concepts/67)
-   [Web stack debugging](https://intranet.alxswe.com/concepts/68)

![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2018/9/c7d1ed0a2e10d1b4e9b3.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20240125%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240125T064643Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=1fa0cbc6041d6a487643321af3a33d858214a7325577934f6544adfd1bbf7299)

Background Context
------------------

[![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2019/6/2ea1058f813d42c61f48.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20240125%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240125T064643Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=682b51a9210b1b0fb29bdf3a173bf33f63ba894ced3da44e0b89d8e98eddee74)](https://youtu.be/pSrKT7m4Ego)[](http://savefrom.net/?url=https%3A%2F%2Fyoutu.be%2FpSrKT7m4Ego&utm_source=userjs-chrome&utm_medium=extensions&utm_campaign=link_modifier "Get a direct link")

Your web infrastructure is already serving web pages via `Nginx` that you installed in your [first web stack project](https://intranet.alxswe.com/rltoken/95oRNZ-zRGwLxtWECJqsWA "first web stack project"). While a web server can also serve dynamic content, this task is usually given to an application server. In this project you will add this piece to your infrastructure, plug it to your `Nginx` and make is serve your Airbnb clone project.

Resources
---------

**Read or watch**:

-   [Application server vs web server](https://intranet.alxswe.com/rltoken/B9fOBzIxX_t1289WAuRzJw "Application server vs web server")
-   [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://intranet.alxswe.com/rltoken/kpG6RwmwRJHzRmGUM_ERcA "How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04") (As mentioned in the video, do **not** install Gunicorn using `virtualenv`, just install everything globally)
-   [Running Gunicorn](https://intranet.alxswe.com/rltoken/2LF1j7xKJGYaUtD1HKgUeQ "Running Gunicorn")
-   [Be careful with the way Flask manages slash](https://intranet.alxswe.com/rltoken/lEg0zpkkDcLtdl3VD4ACRQ "Be careful with the way Flask manages slash") in [route](https://intranet.alxswe.com/rltoken/Zn8fYk-U9YRm7Z5Coqqb0g "route") - `strict_slashes`
-   [Upstart documentation](https://intranet.alxswe.com/rltoken/cldrneY3Qr7LlDysygzRHw "Upstart documentation")

Requirements
------------

### General

-   A `README.md` file, at the root of the folder of the project, is mandatory
-   Everything Python-related must be done using `python3`
-   All config files must have comments

### Bash Scripts

-   All your files will be interpreted on Ubuntu 16.04 LTS
-   All your files should end with a new line
-   All your Bash script files must be executable
-   Your Bash script must pass `Shellcheck` (version `0.3.7-5~ubuntu16.04.1` via `apt-get`) without any error
-   The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
-   The second line of all your Bash scripts should be a comment explaining what is the script doing

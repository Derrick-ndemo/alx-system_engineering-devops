# Webstack Debugging

## Concepts

1. [Network Basics](https://intranet.alxswe.com/concepts/33)
    - [What is a protocol](https://www.techtarget.com/searchnetworking/definition/protocol)
    - [What is an IP Address](https://computer.howstuffworks.com/internet/basics/what-is-an-ip-address.htm)
    - [What is TCP/IP](https://www.avast.com/c-what-is-tcp-ip#)

2. [Web Stack debugging](https://intranet.alxswe.com/concepts/68)

![Bug](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/271/B4eeypV.jpg)

## Requirements

- All files will be interpreted in Ubuntu
- All  files should end in a new line
- A `README.md` file at the root of the project folder
- All Bash scripts should be executable
- Your scripts should pass `Shellcheck`
- Your scripts should run without error
- The first line should be exactly `#!/usr/bin/env bash`
- You are not allowed to use `wget`

## Tasks
#### 0. Nginx likes port 80
Using your debugging skills, find out what’s keeping your Ubuntu container’s Nginx installation from listening on port 80. Feel free to install whatever tool you need, start and destroy as many containers as you need to debug the issue. Then, write a Bash script with the minimum number of commands to automate your fix.

Requirements:

Nginx must be running, and listening on port 80 of all the server’s active IPv4 IPs
Write a Bash script that configures a server to the above requirements
```
root@966c5664b21f:/# curl 0:80
curl: (7) Failed to connect to 0 port 80: Connection refused
root@966c5664b21f:/#
root@966c5664b21f:/# ./0-nginx_likes_port_80 > /dev/null 2&>1
root@966c5664b21f:/#
root@966c5664b21f:/# curl 0:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
root@966c5664b21f:/#
```

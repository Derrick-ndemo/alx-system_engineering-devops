# Web Server

## Concepts
- [What is a child process?](https://intranet.alxswe.com/concepts/110)

![webserver](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/266/8Gu52Qv.png)

## Backgroud Context
[![Video Title](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/266/Screenshot+2017-07-06+19.24.05.png)](https://www.youtube.com/watch?v=AZg4uJkEa-4&feature=youtu.be&hd=1)

In this project, some of the tasks will be graded on 2 aspects:
	1. Is your `web-01` Server configured according to requirements
	2. Does your answer file contain a Bash script that automatically performs the command to configure an ubuntu machine to fit requirements (meaning without any human intervention)

For example, if I need to create a file `/tmp/test` containing the string `hello world` and modify the configuration of Nginx to listen to port `8080` instead of 80, I can use `emacs` on my Server to create the file and modify the Nginx configuration file `/etc/nginx/sites-enabled/default`

But my answer file would contain:
```
sylvain@ubuntu cat 88-script_example
#!/usr/bin/env bash
# Configuring a server with specification XYZ
echo hello world > /tmp/test
sed -i 's/80/8080/g' /etc/nginx/sites-enabled/default
sylvain@ubuntu
```

As you can tell, I am not using emacs to perform the task in my answer file. This exerciese is aiming at training you on automating your work. If you can automate tasks that you do manually, you can then automate yourself out of repetitive tasks and focous your energy on something more interesting. For an [SRE](https://www.atlassian.com/incident-management/devops/sre), that comes very handy when there are hundreds or thousands of servers to manage, the work cannot be only done manually. Note that the checker will execute your script as well as the `root` user, you do not need to use the `sudo` command.

A good Software Engineer is a [Lazy Software Engineer](https://www.techwell.com/techwell-insights/2013/12/why-best-programmers-are-lazy-and-act-dumb)
![lazy Software Engineer image](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/266/82VsYEC.jpg)

Tips to test your answer Bash script, feel free to reproduce the checke r environment.
- start a `ubuntu 16.04` sandbox
- run your script on it
- see how it behaves

## Resources
- [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
- [Nginx](https://en.wikipedia.org/wiki/Nginx)
- [How to configure Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
- [Root and subdomain](https://landingi.com/help/domains-vs-subdomains/)
- [HTTP Requests](https://www.tutorialspoint.com/http/http_methods.htm)
- [Not found HTTP response code](https://en.wikipedia.org/wiki/HTTP_404)
- [Log files on Linux](https://www.cyberciti.biz/faq/ubuntu-linux-gnome-system-log-viewer/)

#### For reference
- [RFC 7231 (HTTP/1.1)](https://datatracker.ietf.org/doc/html/rfc7231)
- [RFC 7540 (HTTP/2)](https://datatracker.ietf.org/doc/html/rfc7540)

#### Man or help:
- `scp`
- `curl`

# Learning Objectives
At the end of the project you should be able to [explain to everyone](https://fs.blog/feynman-learning-technique/), <strong>without the help of Google:</strong>

### General
- What is the main role of a web server
- What is a child process
- Why web servers usually have a paret process and child processes
- What are the main HTTP requests

### DNS
- What DNS stands for
- What is DNS main role

### DNS Record Types
- `A`
- `CNAME`
- `TXT`
- `MX`

![quote](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/01cab59e881e31842b8d47a0974e8d3b6f0f2001.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230627%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230627T131345Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=8221498b1065b127f7998e5dd9244f45fcf52e64b0b86c66ff3aa709505309b5)

## Requirements
- All your files should end in a new line
- A `README.md` file, ate the root of the folder of the project, is mandatory.
- All your Bash script files must be executable.
- Your Bash Script must pass `Shellcheck` without errors
- The second line of all your Bash scripts should be a comment explaining what the script is doing
- You can't use `systemctl` for restarting a process



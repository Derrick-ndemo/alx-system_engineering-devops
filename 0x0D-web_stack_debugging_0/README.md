# Web Stack Debugging 


## Concepts
- [Network basics](https://intranet.alxswe.com/concepts/33)
- [Docker](https://intranet.alxswe.com/concepts/65)
- [Web Stack Debugging](https://intranet.alxswe.com/concepts/68)

![I love bugs](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/265/uWLzjc8.jpg)

## Background context
<p>
	The Webstack debugging series will train you in the art of debugging. Computers and Software rarely work the way we want (that's the fun part of the job).
</p>
<p>
	Being able to debug a Webstack is essential for a Full-Stack Software Engineer, and it takes practice to be a master of it.
</p>
<p>
	In this begugging series, broken/bugged webstacks will be given to you, the final goal is to come up with a Bash script that onece executed, will bring the webstack to a working state. But before writing this Bash script, you should figure out what is going on and fix it manually.
</p>
Let's start with a very simple example. My server must:
	- have a copy of the `/etc/passwd` file in the `tmp`
	- have a file named `/tmp/isworking` containing the string `OK`

Let's pretend that withot these two elements, my web application cannot work.
Let's go through this example and fix the server.
```
vagrant@vagrant:~$ docker run -d -ti ubuntu:14.04
Unable to find image 'ubuntu:14.04' locally
14.04: Pulling from library/ubuntu
34667c7e4631: Already exists
d18d76a881a4: Already exists
119c7358fbfc: Already exists
2aaf13f3eff0: Already exists
Digest: sha256:58d0da8bc2f434983c6ca4713b08be00ff5586eb5cdff47bcde4b2e88fd40f88
Status: Downloaded newer image for ubuntu:14.04
76f44c0da25e1fdf6bcd4fbc49f4d7b658aba89684080ea5d6e8a0d832be9ff9
vagrant@vagrant:~$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
76f44c0da25e        ubuntu:14.04        "/bin/bash"         13 seconds ago      Up 12 seconds                           infallible_bhabha
vagrant@vagrant:~$ docker exec -ti 76f44c0da25e /bin/bash
root@76f44c0da25e:/# ls /tmp/
root@76f44c0da25e:/# cp /etc/passwd /tmp/
root@76f44c0da25e:/# echo OK > /tmp/isworking
root@76f44c0da25e:/# ls /tmp/
isworking  passwd
root@76f44c0da25e:/#
vagrant@vagrant:~$
```

The my answer file would contain:
```
sylvain@ubuntu:~$ cat answerfile
#!/usr/bin/env bash
# Fix my server with these magic 2 lines
cp /etc/passwd /tmp/
echo OK > /tmp/isworking
sylvain@ubuntu:~$
```

Note that as you cannot use interactive software such as `emacs` or `vi` in your Bash script, everything needs to be done from the command line (Including the file edition),

## Installing Docker
For this project, you will be given a container which you can use to solve the task. <strong>If</strong> you would like to like to have Docker so that you can experiment with it and/or solve this problem locally, you can install it on your machine.
	- [Mac OS](https://docs.docker.com/desktop/install/mac-install/)
	- [Windows](https://docs.docker.com/desktop/install/windows-install/)
	- [Ubuntu 14.04](https://www.liquidweb.com/kb/how-to-install-docker-on-ubuntu-14-04-lts/)
	- [Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04)


### General Requirements

- All your files should end with a new line
- A `README.md` file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- Your Bash script must pass the `Shellcheck` without errors
- The first line of all your Bash scripts should be exactly `#!/usr/bin/evn bash`
- The second line of all your bash script should be a comment explaining what is the script doing

## Task

`0. Give me a page!`
Be sure to read the Docker Concept page
In this first debugging project, you will need to get [Apache](https://en.wikipedia.org/wiki/Apache_HTTP_Server) to run on the container and return a page containing `Hello Holberton` when querying the root of it.

Example:
```
vagrant@vagrant:~$ docker run -p 8080:80 -d -it holbertonschool/265-0
47ca3994a4910bbc29d1d8925b1c70e1bdd799f5442040365a7cb9a0db218021
vagrant@vagrant:~$ docker ps
CONTAINER ID        IMAGE                   COMMAND             CREATED             STATUS              PORTS                  NAMES
47ca3994a491        holbertonschool/265-0   "/bin/bash"         3 seconds ago       Up 2 seconds        0.0.0.0:8080->80/tcp   vigilant_tesla
vagrant@vagrant:~$ curl 0:8080
curl: (52) Empty reply from server
vagrant@vagrant:~$
```
Here we can see that after starting my Docker container, I `curl` the port `8080` mapped to the docker container port `80`, it does not return page but an error massage. Note that you might also get the error message `curl: (52) Empty reply from server`
```
vagrant@vagrant:~$ curl 0:8080
Hello Holberton
vagrant@vagrant:~$
```
After connecting to the container an fixing whatever needed to be fixed (here is your mission), you can see that curling port 80 return a page that contains `Hello Holberton`.Paste the command(s) you used to fix the issue in your answer file.

File: `0-give_me_a_page`

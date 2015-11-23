FrontEnd-Labs PRE
================

Environment used with docker & jekyll

Requirements
-----------------

**Install docker(Only for linux users)**
Replace the word Ubuntu for the user host.

```
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker Ubuntu  
sudo service docker start
```

For others systems You can download the installer of **docker toolbox** from [https://www.docker.com/docker-toolbox](https://www.docker.com/docker-toolbox)

**Install Docker Compose (Only for linux users)**
A tool for run many containers in one sentence.

```
sudo su
curl -L https://github.com/docker/compose/releases/download/1.4.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
exit
docker-compose --version
```

Time to run it!
-----------------

**For Linux users**

    ~ docker-compose up

**For OSX users**

    ~ bash upxmacos.sh

If you have problems with start the docker virtual machine, you can reload the process like this

    ~ bash upxmacos.sh --reload

**For Windows users**

Its pending


**Please Read how to use docker / docker-compose with jekyll**

- [http://blog.jaceklaskowski.pl/2015/08/17/why-docker-writing-docs-using-jekyll.html]( http://blog.jaceklaskowski.pl/2015/08/17/why-docker-writing-docs-using-jekyll.html )
- [https://getcarina.com/docs/tutorials/preview-jekyll-with-docker-on-linux/](https://getcarina.com/docs/tutorials/preview-jekyll-with-docker-on-linux/)
- [https://getcarina.com/docs/tutorials/preview-jekyll-with-docker-on-mac/](https://getcarina.com/docs/tutorials/preview-jekyll-with-docker-on-mac/)

- [https://docs.docker.com/compose/](https://docs.docker.com/compose/)


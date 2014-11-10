## Java Development Machine

The purpose of this image is to provide a simple Java development image, without the need
 to install Java development tools.
 
You need Docker and a VNC viewer.

* Built on dockerfile/ubuntu-desktop
* JDK 8
* Maven
* Git
* Intellij 14 Community Edition

### Usage

Start with the command

    $ ./run.sh

or

    $ docker run -it -p 5901:5901 -v ~/work:/work dmarell/jdm2

From the container prompt, start the VNC server with the command

    $ ./vncserver.sh


From the host, connect to the Desktop with vncviewer to `localhost:1` with the password `javadevmachine`

Project files are stored in a folder `/work` in the container and in a folder `work` in your home folder of the host.

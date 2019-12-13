![Image of Yaktocat](https://github.com/DonHaul/Rvidere/blob/master/logo.png)

<br>

Rvidere is a multi-camera RGB-D network system, that uses ROS, to transmit their RGB and Depth images into a Server.  The utilized cameras are  Intel's RealSense™ 3D Camera [ZR300](https://click.intel.com/media/ZR300-Product-Datasheet-Public-002.pdf) that are connected to an [Upboard](https://up-board.org/up/specifications/) where some local processing is performed before transmitting the data.


## Quick Start
1. After turning on the power on the system.
2. Make sure the cameras are connected to the switch and that the switch is connected to the main server
3. Wait a minute so that the UpBoards properly boot up
4. On the server go to `/home/sipg_server/Rvidere`
5. And run this command: `bash shellscripts/startsystem.sh`
6. After that open up a terminal on the server and open `rviz`, where you will se images of what is being transmitted

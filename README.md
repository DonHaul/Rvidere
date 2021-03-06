 ![Rvidere](https://github.com/DonHaul/Rvidere/blob/master/media/logo.png)

<br>

Rvidere is a multi-camera RGB-D network system, that uses ROS, to transmit their RGB and Depth images into a Server.  The utilized cameras are  Intel's RealSense™ 3D Camera [ZR300](https://click.intel.com/media/ZR300-Product-Datasheet-Public-002.pdf) that are connected to an [Upboard](https://up-board.org/up/specifications/) where some local processing is performed before transmitting the data.

<br>

## Quick Start
1. After turning on the power on the system.
2. Make sure the cameras are connected to the switch and that the switch is connected to the main server
3. Wait a minute so that the UpBoards properly boot up
4. On the server go to `/home/sipg_server/Rvidere`
5. And run this command: `bash shellscripts/startsystem.sh`
6. After that open up a terminal on the server and open `rviz`, where you will se images of what is being transmitted. You can also `rostopic list` to see all the ROS topics being transmitted.

Once you are done, run `bash shellscripts/stopsystem.sh` to stop the data transmission. Also, don't forget to turn of the system's power 😊

If for some reason you cannot see the images in `rviz`, don't worry, restart it all (pull the plug of the cameras and restart the server) and repeat the process. If it still doesn't work please refer to the [Trouble](https://github.com/DonHaul/Rvidere/wiki/Trouble) page.


<br>

## Recording Images

Simply run `bash shellscripts/record.sh`, a rosbag with depth and RGB images will be saved in the current directory.
Press `Ctrl+C` when you wish to stop recording.


<br>

## Topics
All the 4 cameras in the system, transmit the same set of topics. The recomendend topics to obtain depth registere images, rgb images and for their intrinsic parameters are:
 - `/CAMERA_NAME/thefutureisnow/rgb`
 - `/CAMERA_NAME/thefutureisnow/depth`
 - `/CAMERA_NAME/rgb/camera_info`
 - `/CAMERA_NAME/depth/camera_info`
 
The camera names are:
- speedwagon
- killerqueen
- emperorcrimson
- diavolo

<br>

More detailed documentation of the whole system, with information about **using**, **debugging**, **expanding** and **altering** and **accessing** it can be found in [here](https://github.com/DonHaul/Rvidere/wiki).

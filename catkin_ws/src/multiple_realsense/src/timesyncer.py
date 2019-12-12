#!/usr/bin/env python

#import FileIO
import sys
import rospy
from sensor_msgs.msg import Image

#typical run:
#python timesyncer.py /speedwagon/depth_registered/sw_registered/image_rect_raw

class TimeSync(object):

    def __init__(self,name,out):
        
        self.pub = rospy.Publisher(name+"/thefutureisnow/"+out, Image, queue_size=10)

    def callback(self,data):
        print("=============")
        print(data.header)
        data.header.stamp=rospy.Time.now()
        print(data.header)

        self.pub.publish(data)



def main():

    #name gets overwritten by launchfile
    rospy.init_node("oldman",anonymous=True)

    
    args = rospy.myargv()
    words = args[1].split('/')
    print(args)
    #print(sys.argv)

    for w in words:
        if w !="":
            name=w
            break
    print(words)
    timesync = TimeSync(name,args[2])

    rospy.Subscriber(args[1], Image, timesync.callback)


    rospy.spin()



if __name__ == "__main__":
    main()
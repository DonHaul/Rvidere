#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import PointCloud2
from sensor_msgs import point_cloud2

def talker():

    

    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

if __name__ == '__main__':

    msg= PointCloud2()
    point_cloud2.create_cloud()
...

sensor_msgs::PointCloud2 msg; // construct message
msg.header = laserMsg.header; // perhaps something different, but often this is what you want
msg.height = 1; // or whatever you need
msg.widht  = 10000; // or whatever your width is
msg.fields = ... // this is more complicated but just is just more of the same
// and so on


    try:
        talker()
    except rospy.ROSInterruptException:
        pass
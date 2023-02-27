#!/usr/bin/env python

import csv
import rospy
from gazebo_msgs.msg import ModelStates
from geometry_msgs.msg import Pose
from tf.transformations import euler_from_quaternion

# Ground Truth (GT) and Pose Estimate (PE) filenames
FILENAME_GT = "/home/marsworks/catkin_ws/ground_truth.csv"
FILENAME_PE = "/home/marsworks/catkin_ws/pose_estimate.csv"

def callback1(data):
    position = data.pose[1].position
    orientation = data.pose[1].orientation

    x_actual = position.x
    y_actual = position.y 
    z_actual = position.z 

    (roll, pitch, yaw) = euler_from_quaternion([orientation.x,
                    orientation.y, orientation.z, orientation.w], "sxyz")
    
    with open(FILENAME_GT, mode="a") as csv_file:
        csv_writer = csv.writer(csv_file, delimiter=",")
        csv_writer.writerow([x_actual, y_actual, z_actual, yaw])
    print("...")

def callback2(data):
    position = data.position
    orientation = data.orientation

    x_predicted = position.x
    y_predicted = position.y 
    z_predicted = position.z 

    (roll, pitch, yaw) = euler_from_quaternion([orientation.x,
                    orientation.y, orientation.z, orientation.w], "sxyz")
    
    with open(FILENAME_PE, mode="a") as csv_file:
        csv_writer = csv.writer(csv_file, delimiter=",")
        csv_writer.writerow([x_predicted, y_predicted, z_predicted, yaw])
    print("...")

def listener():
    # Initialise files
    filename = FILENAME_GT
    with open(filename, mode="w") as csv_file:
        csv_writer = csv.writer(csv_file, delimiter=",")
        csv_writer.writerow(["X", "Y", "Z", "Yaw"])
        
    rospy.init_node("listener", anonymous=True)
    rospy.Subscriber("gazebo/model_states", ModelStates, callback1)
    rospy.Subscriber("ORBSLAM3/pose_estimate", Pose, callback2)
    rospy.spin()


if __name__ == "__main__":
    listener()
;; Auto-generated. Do not edit!


(when (boundp 'leo_msgs::WheelOdom)
  (if (not (find-package "LEO_MSGS"))
    (make-package "LEO_MSGS"))
  (shadow 'WheelOdom (find-package "LEO_MSGS")))
(unless (find-package "LEO_MSGS::WHEELODOM")
  (make-package "LEO_MSGS::WHEELODOM"))

(in-package "ROS")
;;//! \htmlinclude WheelOdom.msg.html


(defclass leo_msgs::WheelOdom
  :super ros::object
  :slots (_stamp _velocity_lin _velocity_ang _pose_x _pose_y _pose_yaw ))

(defmethod leo_msgs::WheelOdom
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:velocity_lin __velocity_lin) 0.0)
    ((:velocity_ang __velocity_ang) 0.0)
    ((:pose_x __pose_x) 0.0)
    ((:pose_y __pose_y) 0.0)
    ((:pose_yaw __pose_yaw) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _velocity_lin (float __velocity_lin))
   (setq _velocity_ang (float __velocity_ang))
   (setq _pose_x (float __pose_x))
   (setq _pose_y (float __pose_y))
   (setq _pose_yaw (float __pose_yaw))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:velocity_lin
   (&optional __velocity_lin)
   (if __velocity_lin (setq _velocity_lin __velocity_lin)) _velocity_lin)
  (:velocity_ang
   (&optional __velocity_ang)
   (if __velocity_ang (setq _velocity_ang __velocity_ang)) _velocity_ang)
  (:pose_x
   (&optional __pose_x)
   (if __pose_x (setq _pose_x __pose_x)) _pose_x)
  (:pose_y
   (&optional __pose_y)
   (if __pose_y (setq _pose_y __pose_y)) _pose_y)
  (:pose_yaw
   (&optional __pose_yaw)
   (if __pose_yaw (setq _pose_yaw __pose_yaw)) _pose_yaw)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _velocity_lin
    4
    ;; float32 _velocity_ang
    4
    ;; float32 _pose_x
    4
    ;; float32 _pose_y
    4
    ;; float32 _pose_yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _velocity_lin
       (sys::poke _velocity_lin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_ang
       (sys::poke _velocity_ang (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pose_x
       (sys::poke _pose_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pose_y
       (sys::poke _pose_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pose_yaw
       (sys::poke _pose_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _velocity_lin
     (setq _velocity_lin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_ang
     (setq _velocity_ang (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pose_x
     (setq _pose_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pose_y
     (setq _pose_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pose_yaw
     (setq _pose_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get leo_msgs::WheelOdom :md5sum-) "5bb892afaf24a6d3bedf13c8fe986f2a")
(setf (get leo_msgs::WheelOdom :datatype-) "leo_msgs/WheelOdom")
(setf (get leo_msgs::WheelOdom :definition-)
      "# This message represents the pose and velocity of a differential wheeled robot, estimated from the wheel encoders.
#
# The velocity_* fields represent the linear and angular velocity of the robot.
# The pose_* fields represent the x, y and yaw pose of the robot w.r.t. the starting pose.
#
# The coordinate frame that represents the robot is located at the center of rotation.

time stamp
float32 velocity_lin
float32 velocity_ang
float32 pose_x
float32 pose_y
float32 pose_yaw

")



(provide :leo_msgs/WheelOdom "5bb892afaf24a6d3bedf13c8fe986f2a")



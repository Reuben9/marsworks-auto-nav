;; Auto-generated. Do not edit!


(when (boundp 'leo_msgs::Imu)
  (if (not (find-package "LEO_MSGS"))
    (make-package "LEO_MSGS"))
  (shadow 'Imu (find-package "LEO_MSGS")))
(unless (find-package "LEO_MSGS::IMU")
  (make-package "LEO_MSGS::IMU"))

(in-package "ROS")
;;//! \htmlinclude Imu.msg.html


(defclass leo_msgs::Imu
  :super ros::object
  :slots (_stamp _temperature _gyro_x _gyro_y _gyro_z _accel_x _accel_y _accel_z ))

(defmethod leo_msgs::Imu
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:temperature __temperature) 0.0)
    ((:gyro_x __gyro_x) 0.0)
    ((:gyro_y __gyro_y) 0.0)
    ((:gyro_z __gyro_z) 0.0)
    ((:accel_x __accel_x) 0.0)
    ((:accel_y __accel_y) 0.0)
    ((:accel_z __accel_z) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _temperature (float __temperature))
   (setq _gyro_x (float __gyro_x))
   (setq _gyro_y (float __gyro_y))
   (setq _gyro_z (float __gyro_z))
   (setq _accel_x (float __accel_x))
   (setq _accel_y (float __accel_y))
   (setq _accel_z (float __accel_z))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:accel_x
   (&optional __accel_x)
   (if __accel_x (setq _accel_x __accel_x)) _accel_x)
  (:accel_y
   (&optional __accel_y)
   (if __accel_y (setq _accel_y __accel_y)) _accel_y)
  (:accel_z
   (&optional __accel_z)
   (if __accel_z (setq _accel_z __accel_z)) _accel_z)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _temperature
    4
    ;; float32 _gyro_x
    4
    ;; float32 _gyro_y
    4
    ;; float32 _gyro_z
    4
    ;; float32 _accel_x
    4
    ;; float32 _accel_y
    4
    ;; float32 _accel_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_x
       (sys::poke _gyro_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_y
       (sys::poke _gyro_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_z
       (sys::poke _gyro_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_x
       (sys::poke _accel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_y
       (sys::poke _accel_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_z
       (sys::poke _accel_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_x
     (setq _gyro_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_z
     (setq _gyro_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_x
     (setq _accel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_y
     (setq _accel_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_z
     (setq _accel_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get leo_msgs::Imu :md5sum-) "d8596af47cb860f11b5f9246dd06f4fc")
(setf (get leo_msgs::Imu :datatype-) "leo_msgs/Imu")
(setf (get leo_msgs::Imu :definition-)
      "# This message holds the data retrieved from an Accel/Gyro+Temp IMU sensor
#
# The temperature field represents the temperature reported by the sensor in Degrees Celcius
# The gyro_* fields represent the rotational velocity in rad/s
# The accel_* fields represent the linear acceleration in m/s^2

time stamp
float32 temperature
float32 gyro_x
float32 gyro_y
float32 gyro_z
float32 accel_x
float32 accel_y
float32 accel_z

")



(provide :leo_msgs/Imu "d8596af47cb860f11b5f9246dd06f4fc")



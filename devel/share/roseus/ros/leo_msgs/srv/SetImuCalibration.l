;; Auto-generated. Do not edit!


(when (boundp 'leo_msgs::SetImuCalibration)
  (if (not (find-package "LEO_MSGS"))
    (make-package "LEO_MSGS"))
  (shadow 'SetImuCalibration (find-package "LEO_MSGS")))
(unless (find-package "LEO_MSGS::SETIMUCALIBRATION")
  (make-package "LEO_MSGS::SETIMUCALIBRATION"))
(unless (find-package "LEO_MSGS::SETIMUCALIBRATIONREQUEST")
  (make-package "LEO_MSGS::SETIMUCALIBRATIONREQUEST"))
(unless (find-package "LEO_MSGS::SETIMUCALIBRATIONRESPONSE")
  (make-package "LEO_MSGS::SETIMUCALIBRATIONRESPONSE"))

(in-package "ROS")





(defclass leo_msgs::SetImuCalibrationRequest
  :super ros::object
  :slots (_gyro_bias_x _gyro_bias_y _gyro_bias_z ))

(defmethod leo_msgs::SetImuCalibrationRequest
  (:init
   (&key
    ((:gyro_bias_x __gyro_bias_x) 0.0)
    ((:gyro_bias_y __gyro_bias_y) 0.0)
    ((:gyro_bias_z __gyro_bias_z) 0.0)
    )
   (send-super :init)
   (setq _gyro_bias_x (float __gyro_bias_x))
   (setq _gyro_bias_y (float __gyro_bias_y))
   (setq _gyro_bias_z (float __gyro_bias_z))
   self)
  (:gyro_bias_x
   (&optional __gyro_bias_x)
   (if __gyro_bias_x (setq _gyro_bias_x __gyro_bias_x)) _gyro_bias_x)
  (:gyro_bias_y
   (&optional __gyro_bias_y)
   (if __gyro_bias_y (setq _gyro_bias_y __gyro_bias_y)) _gyro_bias_y)
  (:gyro_bias_z
   (&optional __gyro_bias_z)
   (if __gyro_bias_z (setq _gyro_bias_z __gyro_bias_z)) _gyro_bias_z)
  (:serialization-length
   ()
   (+
    ;; float64 _gyro_bias_x
    8
    ;; float64 _gyro_bias_y
    8
    ;; float64 _gyro_bias_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _gyro_bias_x
       (sys::poke _gyro_bias_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyro_bias_y
       (sys::poke _gyro_bias_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyro_bias_z
       (sys::poke _gyro_bias_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _gyro_bias_x
     (setq _gyro_bias_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyro_bias_y
     (setq _gyro_bias_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyro_bias_z
     (setq _gyro_bias_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass leo_msgs::SetImuCalibrationResponse
  :super ros::object
  :slots (_success ))

(defmethod leo_msgs::SetImuCalibrationResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass leo_msgs::SetImuCalibration
  :super ros::object
  :slots ())

(setf (get leo_msgs::SetImuCalibration :md5sum-) "bee7d47c032e7e006759478ee568747d")
(setf (get leo_msgs::SetImuCalibration :datatype-) "leo_msgs/SetImuCalibration")
(setf (get leo_msgs::SetImuCalibration :request) leo_msgs::SetImuCalibrationRequest)
(setf (get leo_msgs::SetImuCalibration :response) leo_msgs::SetImuCalibrationResponse)

(defmethod leo_msgs::SetImuCalibrationRequest
  (:response () (instance leo_msgs::SetImuCalibrationResponse :init)))

(setf (get leo_msgs::SetImuCalibrationRequest :md5sum-) "bee7d47c032e7e006759478ee568747d")
(setf (get leo_msgs::SetImuCalibrationRequest :datatype-) "leo_msgs/SetImuCalibrationRequest")
(setf (get leo_msgs::SetImuCalibrationRequest :definition-)
      "float64 gyro_bias_x
float64 gyro_bias_y
float64 gyro_bias_z
---
bool success
")

(setf (get leo_msgs::SetImuCalibrationResponse :md5sum-) "bee7d47c032e7e006759478ee568747d")
(setf (get leo_msgs::SetImuCalibrationResponse :datatype-) "leo_msgs/SetImuCalibrationResponse")
(setf (get leo_msgs::SetImuCalibrationResponse :definition-)
      "float64 gyro_bias_x
float64 gyro_bias_y
float64 gyro_bias_z
---
bool success
")



(provide :leo_msgs/SetImuCalibration "bee7d47c032e7e006759478ee568747d")



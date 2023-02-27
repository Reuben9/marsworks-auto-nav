;; Auto-generated. Do not edit!


(when (boundp 'leo_msgs::WheelStates)
  (if (not (find-package "LEO_MSGS"))
    (make-package "LEO_MSGS"))
  (shadow 'WheelStates (find-package "LEO_MSGS")))
(unless (find-package "LEO_MSGS::WHEELSTATES")
  (make-package "LEO_MSGS::WHEELSTATES"))

(in-package "ROS")
;;//! \htmlinclude WheelStates.msg.html


(defclass leo_msgs::WheelStates
  :super ros::object
  :slots (_stamp _position _velocity _torque _pwm_duty_cycle ))

(defmethod leo_msgs::WheelStates
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:position __position) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:pwm_duty_cycle __pwm_duty_cycle) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _torque __torque)
   (setq _pwm_duty_cycle __pwm_duty_cycle)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:pwm_duty_cycle
   (&optional __pwm_duty_cycle)
   (if __pwm_duty_cycle (setq _pwm_duty_cycle __pwm_duty_cycle)) _pwm_duty_cycle)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32[4] _position
    (* 4    4)
    ;; float32[4] _velocity
    (* 4    4)
    ;; float32[4] _torque
    (* 4    4)
    ;; float32[4] _pwm_duty_cycle
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32[4] _position
     (dotimes (i 4)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _velocity
     (dotimes (i 4)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _torque
     (dotimes (i 4)
       (sys::poke (elt _torque i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _pwm_duty_cycle
     (dotimes (i 4)
       (sys::poke (elt _pwm_duty_cycle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[4] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _torque
   (dotimes (i (length _torque))
     (setf (elt _torque i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _pwm_duty_cycle
   (dotimes (i (length _pwm_duty_cycle))
     (setf (elt _pwm_duty_cycle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get leo_msgs::WheelStates :md5sum-) "3fd78a5ebfca19b565fd49f45052c8cd")
(setf (get leo_msgs::WheelStates :datatype-) "leo_msgs/WheelStates")
(setf (get leo_msgs::WheelStates :definition-)
      "# This message describes the states of the wheels in Leo Rover
#
# The state of each wheel is defined by:
#  * the position of the wheel (rad),
#  * the velocity of the wheel (rad/s)
#  * the torque that is applied in the wheel (Nm)
#  * the PWM Duty cycle (%)
#
# The stamp specifies the time at which the wheel states were recorded.
#
# This message consists of a multiple arrays, one for each part of the wheel state.
# The order of the wheels in each array is: FL, RL, FR, RR

time stamp

float32[4] position
float32[4] velocity
float32[4] torque
float32[4] pwm_duty_cycle

")



(provide :leo_msgs/WheelStates "3fd78a5ebfca19b565fd49f45052c8cd")



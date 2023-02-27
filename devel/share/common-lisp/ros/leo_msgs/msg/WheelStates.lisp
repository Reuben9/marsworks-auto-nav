; Auto-generated. Do not edit!


(cl:in-package leo_msgs-msg)


;//! \htmlinclude WheelStates.msg.html

(cl:defclass <WheelStates> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (pwm_duty_cycle
    :reader pwm_duty_cycle
    :initarg :pwm_duty_cycle
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass WheelStates (<WheelStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leo_msgs-msg:<WheelStates> is deprecated: use leo_msgs-msg:WheelStates instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <WheelStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:stamp-val is deprecated.  Use leo_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <WheelStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:position-val is deprecated.  Use leo_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <WheelStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:velocity-val is deprecated.  Use leo_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <WheelStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:torque-val is deprecated.  Use leo_msgs-msg:torque instead.")
  (torque m))

(cl:ensure-generic-function 'pwm_duty_cycle-val :lambda-list '(m))
(cl:defmethod pwm_duty_cycle-val ((m <WheelStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:pwm_duty_cycle-val is deprecated.  Use leo_msgs-msg:pwm_duty_cycle instead.")
  (pwm_duty_cycle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelStates>) ostream)
  "Serializes a message object of type '<WheelStates>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'torque))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pwm_duty_cycle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelStates>) istream)
  "Deserializes a message object of type '<WheelStates>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'pwm_duty_cycle) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'pwm_duty_cycle)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelStates>)))
  "Returns string type for a message object of type '<WheelStates>"
  "leo_msgs/WheelStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelStates)))
  "Returns string type for a message object of type 'WheelStates"
  "leo_msgs/WheelStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelStates>)))
  "Returns md5sum for a message object of type '<WheelStates>"
  "3fd78a5ebfca19b565fd49f45052c8cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelStates)))
  "Returns md5sum for a message object of type 'WheelStates"
  "3fd78a5ebfca19b565fd49f45052c8cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelStates>)))
  "Returns full string definition for message of type '<WheelStates>"
  (cl:format cl:nil "# This message describes the states of the wheels in Leo Rover~%#~%# The state of each wheel is defined by:~%#  * the position of the wheel (rad),~%#  * the velocity of the wheel (rad/s)~%#  * the torque that is applied in the wheel (Nm)~%#  * the PWM Duty cycle (%)~%#~%# The stamp specifies the time at which the wheel states were recorded.~%#~%# This message consists of a multiple arrays, one for each part of the wheel state.~%# The order of the wheels in each array is: FL, RL, FR, RR~%~%time stamp~%~%float32[4] position~%float32[4] velocity~%float32[4] torque~%float32[4] pwm_duty_cycle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelStates)))
  "Returns full string definition for message of type 'WheelStates"
  (cl:format cl:nil "# This message describes the states of the wheels in Leo Rover~%#~%# The state of each wheel is defined by:~%#  * the position of the wheel (rad),~%#  * the velocity of the wheel (rad/s)~%#  * the torque that is applied in the wheel (Nm)~%#  * the PWM Duty cycle (%)~%#~%# The stamp specifies the time at which the wheel states were recorded.~%#~%# This message consists of a multiple arrays, one for each part of the wheel state.~%# The order of the wheels in each array is: FL, RL, FR, RR~%~%time stamp~%~%float32[4] position~%float32[4] velocity~%float32[4] torque~%float32[4] pwm_duty_cycle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelStates>))
  (cl:+ 0
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pwm_duty_cycle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelStates>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelStates
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':torque (torque msg))
    (cl:cons ':pwm_duty_cycle (pwm_duty_cycle msg))
))

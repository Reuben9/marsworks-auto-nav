; Auto-generated. Do not edit!


(cl:in-package leo_msgs-msg)


;//! \htmlinclude WheelOdom.msg.html

(cl:defclass <WheelOdom> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (velocity_lin
    :reader velocity_lin
    :initarg :velocity_lin
    :type cl:float
    :initform 0.0)
   (velocity_ang
    :reader velocity_ang
    :initarg :velocity_ang
    :type cl:float
    :initform 0.0)
   (pose_x
    :reader pose_x
    :initarg :pose_x
    :type cl:float
    :initform 0.0)
   (pose_y
    :reader pose_y
    :initarg :pose_y
    :type cl:float
    :initform 0.0)
   (pose_yaw
    :reader pose_yaw
    :initarg :pose_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelOdom (<WheelOdom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelOdom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelOdom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leo_msgs-msg:<WheelOdom> is deprecated: use leo_msgs-msg:WheelOdom instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <WheelOdom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:stamp-val is deprecated.  Use leo_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'velocity_lin-val :lambda-list '(m))
(cl:defmethod velocity_lin-val ((m <WheelOdom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:velocity_lin-val is deprecated.  Use leo_msgs-msg:velocity_lin instead.")
  (velocity_lin m))

(cl:ensure-generic-function 'velocity_ang-val :lambda-list '(m))
(cl:defmethod velocity_ang-val ((m <WheelOdom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:velocity_ang-val is deprecated.  Use leo_msgs-msg:velocity_ang instead.")
  (velocity_ang m))

(cl:ensure-generic-function 'pose_x-val :lambda-list '(m))
(cl:defmethod pose_x-val ((m <WheelOdom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:pose_x-val is deprecated.  Use leo_msgs-msg:pose_x instead.")
  (pose_x m))

(cl:ensure-generic-function 'pose_y-val :lambda-list '(m))
(cl:defmethod pose_y-val ((m <WheelOdom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:pose_y-val is deprecated.  Use leo_msgs-msg:pose_y instead.")
  (pose_y m))

(cl:ensure-generic-function 'pose_yaw-val :lambda-list '(m))
(cl:defmethod pose_yaw-val ((m <WheelOdom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-msg:pose_yaw-val is deprecated.  Use leo_msgs-msg:pose_yaw instead.")
  (pose_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelOdom>) ostream)
  "Serializes a message object of type '<WheelOdom>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_lin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_ang))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pose_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pose_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pose_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelOdom>) istream)
  "Deserializes a message object of type '<WheelOdom>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_lin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_ang) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelOdom>)))
  "Returns string type for a message object of type '<WheelOdom>"
  "leo_msgs/WheelOdom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelOdom)))
  "Returns string type for a message object of type 'WheelOdom"
  "leo_msgs/WheelOdom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelOdom>)))
  "Returns md5sum for a message object of type '<WheelOdom>"
  "5bb892afaf24a6d3bedf13c8fe986f2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelOdom)))
  "Returns md5sum for a message object of type 'WheelOdom"
  "5bb892afaf24a6d3bedf13c8fe986f2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelOdom>)))
  "Returns full string definition for message of type '<WheelOdom>"
  (cl:format cl:nil "# This message represents the pose and velocity of a differential wheeled robot, estimated from the wheel encoders.~%#~%# The velocity_* fields represent the linear and angular velocity of the robot.~%# The pose_* fields represent the x, y and yaw pose of the robot w.r.t. the starting pose.~%#~%# The coordinate frame that represents the robot is located at the center of rotation.~%~%time stamp~%float32 velocity_lin~%float32 velocity_ang~%float32 pose_x~%float32 pose_y~%float32 pose_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelOdom)))
  "Returns full string definition for message of type 'WheelOdom"
  (cl:format cl:nil "# This message represents the pose and velocity of a differential wheeled robot, estimated from the wheel encoders.~%#~%# The velocity_* fields represent the linear and angular velocity of the robot.~%# The pose_* fields represent the x, y and yaw pose of the robot w.r.t. the starting pose.~%#~%# The coordinate frame that represents the robot is located at the center of rotation.~%~%time stamp~%float32 velocity_lin~%float32 velocity_ang~%float32 pose_x~%float32 pose_y~%float32 pose_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelOdom>))
  (cl:+ 0
     8
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelOdom>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelOdom
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':velocity_lin (velocity_lin msg))
    (cl:cons ':velocity_ang (velocity_ang msg))
    (cl:cons ':pose_x (pose_x msg))
    (cl:cons ':pose_y (pose_y msg))
    (cl:cons ':pose_yaw (pose_yaw msg))
))

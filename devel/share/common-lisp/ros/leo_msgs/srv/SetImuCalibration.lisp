; Auto-generated. Do not edit!


(cl:in-package leo_msgs-srv)


;//! \htmlinclude SetImuCalibration-request.msg.html

(cl:defclass <SetImuCalibration-request> (roslisp-msg-protocol:ros-message)
  ((gyro_bias_x
    :reader gyro_bias_x
    :initarg :gyro_bias_x
    :type cl:float
    :initform 0.0)
   (gyro_bias_y
    :reader gyro_bias_y
    :initarg :gyro_bias_y
    :type cl:float
    :initform 0.0)
   (gyro_bias_z
    :reader gyro_bias_z
    :initarg :gyro_bias_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetImuCalibration-request (<SetImuCalibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetImuCalibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetImuCalibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leo_msgs-srv:<SetImuCalibration-request> is deprecated: use leo_msgs-srv:SetImuCalibration-request instead.")))

(cl:ensure-generic-function 'gyro_bias_x-val :lambda-list '(m))
(cl:defmethod gyro_bias_x-val ((m <SetImuCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-srv:gyro_bias_x-val is deprecated.  Use leo_msgs-srv:gyro_bias_x instead.")
  (gyro_bias_x m))

(cl:ensure-generic-function 'gyro_bias_y-val :lambda-list '(m))
(cl:defmethod gyro_bias_y-val ((m <SetImuCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-srv:gyro_bias_y-val is deprecated.  Use leo_msgs-srv:gyro_bias_y instead.")
  (gyro_bias_y m))

(cl:ensure-generic-function 'gyro_bias_z-val :lambda-list '(m))
(cl:defmethod gyro_bias_z-val ((m <SetImuCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-srv:gyro_bias_z-val is deprecated.  Use leo_msgs-srv:gyro_bias_z instead.")
  (gyro_bias_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetImuCalibration-request>) ostream)
  "Serializes a message object of type '<SetImuCalibration-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyro_bias_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyro_bias_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyro_bias_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetImuCalibration-request>) istream)
  "Deserializes a message object of type '<SetImuCalibration-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_bias_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_bias_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_bias_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetImuCalibration-request>)))
  "Returns string type for a service object of type '<SetImuCalibration-request>"
  "leo_msgs/SetImuCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetImuCalibration-request)))
  "Returns string type for a service object of type 'SetImuCalibration-request"
  "leo_msgs/SetImuCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetImuCalibration-request>)))
  "Returns md5sum for a message object of type '<SetImuCalibration-request>"
  "bee7d47c032e7e006759478ee568747d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetImuCalibration-request)))
  "Returns md5sum for a message object of type 'SetImuCalibration-request"
  "bee7d47c032e7e006759478ee568747d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetImuCalibration-request>)))
  "Returns full string definition for message of type '<SetImuCalibration-request>"
  (cl:format cl:nil "float64 gyro_bias_x~%float64 gyro_bias_y~%float64 gyro_bias_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetImuCalibration-request)))
  "Returns full string definition for message of type 'SetImuCalibration-request"
  (cl:format cl:nil "float64 gyro_bias_x~%float64 gyro_bias_y~%float64 gyro_bias_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetImuCalibration-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetImuCalibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetImuCalibration-request
    (cl:cons ':gyro_bias_x (gyro_bias_x msg))
    (cl:cons ':gyro_bias_y (gyro_bias_y msg))
    (cl:cons ':gyro_bias_z (gyro_bias_z msg))
))
;//! \htmlinclude SetImuCalibration-response.msg.html

(cl:defclass <SetImuCalibration-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetImuCalibration-response (<SetImuCalibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetImuCalibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetImuCalibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leo_msgs-srv:<SetImuCalibration-response> is deprecated: use leo_msgs-srv:SetImuCalibration-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetImuCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leo_msgs-srv:success-val is deprecated.  Use leo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetImuCalibration-response>) ostream)
  "Serializes a message object of type '<SetImuCalibration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetImuCalibration-response>) istream)
  "Deserializes a message object of type '<SetImuCalibration-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetImuCalibration-response>)))
  "Returns string type for a service object of type '<SetImuCalibration-response>"
  "leo_msgs/SetImuCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetImuCalibration-response)))
  "Returns string type for a service object of type 'SetImuCalibration-response"
  "leo_msgs/SetImuCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetImuCalibration-response>)))
  "Returns md5sum for a message object of type '<SetImuCalibration-response>"
  "bee7d47c032e7e006759478ee568747d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetImuCalibration-response)))
  "Returns md5sum for a message object of type 'SetImuCalibration-response"
  "bee7d47c032e7e006759478ee568747d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetImuCalibration-response>)))
  "Returns full string definition for message of type '<SetImuCalibration-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetImuCalibration-response)))
  "Returns full string definition for message of type 'SetImuCalibration-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetImuCalibration-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetImuCalibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetImuCalibration-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetImuCalibration)))
  'SetImuCalibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetImuCalibration)))
  'SetImuCalibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetImuCalibration)))
  "Returns string type for a service object of type '<SetImuCalibration>"
  "leo_msgs/SetImuCalibration")
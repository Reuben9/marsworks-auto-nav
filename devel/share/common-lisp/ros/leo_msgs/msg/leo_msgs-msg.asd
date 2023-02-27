
(cl:in-package :asdf)

(defsystem "leo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Imu" :depends-on ("_package_Imu"))
    (:file "_package_Imu" :depends-on ("_package"))
    (:file "WheelOdom" :depends-on ("_package_WheelOdom"))
    (:file "_package_WheelOdom" :depends-on ("_package"))
    (:file "WheelStates" :depends-on ("_package_WheelStates"))
    (:file "_package_WheelStates" :depends-on ("_package"))
  ))
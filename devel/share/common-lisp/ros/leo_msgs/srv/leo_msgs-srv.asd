
(cl:in-package :asdf)

(defsystem "leo_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetImuCalibration" :depends-on ("_package_SetImuCalibration"))
    (:file "_package_SetImuCalibration" :depends-on ("_package"))
  ))
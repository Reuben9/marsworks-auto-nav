# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "leo_msgs: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ileo_msgs:/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(leo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg" NAME_WE)
add_custom_target(_leo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leo_msgs" "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg" ""
)

get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg" NAME_WE)
add_custom_target(_leo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leo_msgs" "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg" ""
)

get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv" NAME_WE)
add_custom_target(_leo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leo_msgs" "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv" ""
)

get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg" NAME_WE)
add_custom_target(_leo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leo_msgs" "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leo_msgs
)
_generate_msg_cpp(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leo_msgs
)
_generate_msg_cpp(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leo_msgs
)

### Generating Services
_generate_srv_cpp(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leo_msgs
)

### Generating Module File
_generate_module_cpp(leo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(leo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(leo_msgs_generate_messages leo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_cpp _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_cpp _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv" NAME_WE)
add_dependencies(leo_msgs_generate_messages_cpp _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_cpp _leo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leo_msgs_gencpp)
add_dependencies(leo_msgs_gencpp leo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leo_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leo_msgs
)
_generate_msg_eus(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leo_msgs
)
_generate_msg_eus(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leo_msgs
)

### Generating Services
_generate_srv_eus(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leo_msgs
)

### Generating Module File
_generate_module_eus(leo_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leo_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(leo_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(leo_msgs_generate_messages leo_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_eus _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_eus _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv" NAME_WE)
add_dependencies(leo_msgs_generate_messages_eus _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_eus _leo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leo_msgs_geneus)
add_dependencies(leo_msgs_geneus leo_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leo_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leo_msgs
)
_generate_msg_lisp(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leo_msgs
)
_generate_msg_lisp(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leo_msgs
)

### Generating Services
_generate_srv_lisp(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leo_msgs
)

### Generating Module File
_generate_module_lisp(leo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(leo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(leo_msgs_generate_messages leo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_lisp _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_lisp _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv" NAME_WE)
add_dependencies(leo_msgs_generate_messages_lisp _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_lisp _leo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leo_msgs_genlisp)
add_dependencies(leo_msgs_genlisp leo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leo_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leo_msgs
)
_generate_msg_nodejs(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leo_msgs
)
_generate_msg_nodejs(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leo_msgs
)

### Generating Services
_generate_srv_nodejs(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leo_msgs
)

### Generating Module File
_generate_module_nodejs(leo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leo_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(leo_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(leo_msgs_generate_messages leo_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_nodejs _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_nodejs _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv" NAME_WE)
add_dependencies(leo_msgs_generate_messages_nodejs _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_nodejs _leo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leo_msgs_gennodejs)
add_dependencies(leo_msgs_gennodejs leo_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leo_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leo_msgs
)
_generate_msg_py(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leo_msgs
)
_generate_msg_py(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leo_msgs
)

### Generating Services
_generate_srv_py(leo_msgs
  "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leo_msgs
)

### Generating Module File
_generate_module_py(leo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(leo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(leo_msgs_generate_messages leo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_py _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelOdom.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_py _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/srv/SetImuCalibration.srv" NAME_WE)
add_dependencies(leo_msgs_generate_messages_py _leo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/marsworks/catkin_ws/src/leo_rover/leo_common/leo_msgs/msg/WheelStates.msg" NAME_WE)
add_dependencies(leo_msgs_generate_messages_py _leo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leo_msgs_genpy)
add_dependencies(leo_msgs_genpy leo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leo_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leo_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()

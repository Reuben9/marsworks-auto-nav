# Install script for directory: /home/marsworks/catkin_ws/src/leo_rover/leo_simulator/leo_gazebo_worlds

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/marsworks/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/marsworks/catkin_ws/build/leo_rover/leo_simulator/leo_gazebo_worlds/catkin_generated/installspace/leo_gazebo_worlds.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/leo_gazebo_worlds/cmake" TYPE FILE FILES
    "/home/marsworks/catkin_ws/build/leo_rover/leo_simulator/leo_gazebo_worlds/catkin_generated/installspace/leo_gazebo_worldsConfig.cmake"
    "/home/marsworks/catkin_ws/build/leo_rover/leo_simulator/leo_gazebo_worlds/catkin_generated/installspace/leo_gazebo_worldsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/leo_gazebo_worlds" TYPE FILE FILES "/home/marsworks/catkin_ws/src/leo_rover/leo_simulator/leo_gazebo_worlds/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/leo_gazebo_worlds" TYPE DIRECTORY FILES
    "/home/marsworks/catkin_ws/src/leo_rover/leo_simulator/leo_gazebo_worlds/media"
    "/home/marsworks/catkin_ws/src/leo_rover/leo_simulator/leo_gazebo_worlds/models"
    "/home/marsworks/catkin_ws/src/leo_rover/leo_simulator/leo_gazebo_worlds/worlds"
    )
endif()


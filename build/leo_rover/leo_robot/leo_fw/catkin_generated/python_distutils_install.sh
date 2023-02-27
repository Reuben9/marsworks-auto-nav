#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/marsworks/catkin_ws/src/leo_rover/leo_robot/leo_fw"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/marsworks/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/marsworks/catkin_ws/install/lib/python2.7/dist-packages:/home/marsworks/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/marsworks/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/marsworks/catkin_ws/src/leo_rover/leo_robot/leo_fw/setup.py" \
    egg_info --egg-base /home/marsworks/catkin_ws/build/leo_rover/leo_robot/leo_fw \
    build --build-base "/home/marsworks/catkin_ws/build/leo_rover/leo_robot/leo_fw" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/marsworks/catkin_ws/install" --install-scripts="/home/marsworks/catkin_ws/install/bin"

// Generated by gencpp from file leo_msgs/Imu.msg
// DO NOT EDIT!


#ifndef LEO_MSGS_MESSAGE_IMU_H
#define LEO_MSGS_MESSAGE_IMU_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace leo_msgs
{
template <class ContainerAllocator>
struct Imu_
{
  typedef Imu_<ContainerAllocator> Type;

  Imu_()
    : stamp()
    , temperature(0.0)
    , gyro_x(0.0)
    , gyro_y(0.0)
    , gyro_z(0.0)
    , accel_x(0.0)
    , accel_y(0.0)
    , accel_z(0.0)  {
    }
  Imu_(const ContainerAllocator& _alloc)
    : stamp()
    , temperature(0.0)
    , gyro_x(0.0)
    , gyro_y(0.0)
    , gyro_z(0.0)
    , accel_x(0.0)
    , accel_y(0.0)
    , accel_z(0.0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef float _temperature_type;
  _temperature_type temperature;

   typedef float _gyro_x_type;
  _gyro_x_type gyro_x;

   typedef float _gyro_y_type;
  _gyro_y_type gyro_y;

   typedef float _gyro_z_type;
  _gyro_z_type gyro_z;

   typedef float _accel_x_type;
  _accel_x_type accel_x;

   typedef float _accel_y_type;
  _accel_y_type accel_y;

   typedef float _accel_z_type;
  _accel_z_type accel_z;





  typedef boost::shared_ptr< ::leo_msgs::Imu_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::leo_msgs::Imu_<ContainerAllocator> const> ConstPtr;

}; // struct Imu_

typedef ::leo_msgs::Imu_<std::allocator<void> > Imu;

typedef boost::shared_ptr< ::leo_msgs::Imu > ImuPtr;
typedef boost::shared_ptr< ::leo_msgs::Imu const> ImuConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::leo_msgs::Imu_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::leo_msgs::Imu_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::leo_msgs::Imu_<ContainerAllocator1> & lhs, const ::leo_msgs::Imu_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.temperature == rhs.temperature &&
    lhs.gyro_x == rhs.gyro_x &&
    lhs.gyro_y == rhs.gyro_y &&
    lhs.gyro_z == rhs.gyro_z &&
    lhs.accel_x == rhs.accel_x &&
    lhs.accel_y == rhs.accel_y &&
    lhs.accel_z == rhs.accel_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::leo_msgs::Imu_<ContainerAllocator1> & lhs, const ::leo_msgs::Imu_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace leo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::leo_msgs::Imu_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::leo_msgs::Imu_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leo_msgs::Imu_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leo_msgs::Imu_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leo_msgs::Imu_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leo_msgs::Imu_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::leo_msgs::Imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8596af47cb860f11b5f9246dd06f4fc";
  }

  static const char* value(const ::leo_msgs::Imu_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8596af47cb860f1ULL;
  static const uint64_t static_value2 = 0x1b5f9246dd06f4fcULL;
};

template<class ContainerAllocator>
struct DataType< ::leo_msgs::Imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "leo_msgs/Imu";
  }

  static const char* value(const ::leo_msgs::Imu_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::leo_msgs::Imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message holds the data retrieved from an Accel/Gyro+Temp IMU sensor\n"
"#\n"
"# The temperature field represents the temperature reported by the sensor in Degrees Celcius\n"
"# The gyro_* fields represent the rotational velocity in rad/s\n"
"# The accel_* fields represent the linear acceleration in m/s^2\n"
"\n"
"time stamp\n"
"float32 temperature\n"
"float32 gyro_x\n"
"float32 gyro_y\n"
"float32 gyro_z\n"
"float32 accel_x\n"
"float32 accel_y\n"
"float32 accel_z\n"
;
  }

  static const char* value(const ::leo_msgs::Imu_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::leo_msgs::Imu_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.temperature);
      stream.next(m.gyro_x);
      stream.next(m.gyro_y);
      stream.next(m.gyro_z);
      stream.next(m.accel_x);
      stream.next(m.accel_y);
      stream.next(m.accel_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Imu_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::leo_msgs::Imu_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::leo_msgs::Imu_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "temperature: ";
    Printer<float>::stream(s, indent + "  ", v.temperature);
    s << indent << "gyro_x: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_x);
    s << indent << "gyro_y: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_y);
    s << indent << "gyro_z: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_z);
    s << indent << "accel_x: ";
    Printer<float>::stream(s, indent + "  ", v.accel_x);
    s << indent << "accel_y: ";
    Printer<float>::stream(s, indent + "  ", v.accel_y);
    s << indent << "accel_z: ";
    Printer<float>::stream(s, indent + "  ", v.accel_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEO_MSGS_MESSAGE_IMU_H

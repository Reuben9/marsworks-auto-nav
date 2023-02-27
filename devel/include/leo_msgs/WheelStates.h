// Generated by gencpp from file leo_msgs/WheelStates.msg
// DO NOT EDIT!


#ifndef LEO_MSGS_MESSAGE_WHEELSTATES_H
#define LEO_MSGS_MESSAGE_WHEELSTATES_H


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
struct WheelStates_
{
  typedef WheelStates_<ContainerAllocator> Type;

  WheelStates_()
    : stamp()
    , position()
    , velocity()
    , torque()
    , pwm_duty_cycle()  {
      position.assign(0.0);

      velocity.assign(0.0);

      torque.assign(0.0);

      pwm_duty_cycle.assign(0.0);
  }
  WheelStates_(const ContainerAllocator& _alloc)
    : stamp()
    , position()
    , velocity()
    , torque()
    , pwm_duty_cycle()  {
  (void)_alloc;
      position.assign(0.0);

      velocity.assign(0.0);

      torque.assign(0.0);

      pwm_duty_cycle.assign(0.0);
  }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef boost::array<float, 4>  _position_type;
  _position_type position;

   typedef boost::array<float, 4>  _velocity_type;
  _velocity_type velocity;

   typedef boost::array<float, 4>  _torque_type;
  _torque_type torque;

   typedef boost::array<float, 4>  _pwm_duty_cycle_type;
  _pwm_duty_cycle_type pwm_duty_cycle;





  typedef boost::shared_ptr< ::leo_msgs::WheelStates_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::leo_msgs::WheelStates_<ContainerAllocator> const> ConstPtr;

}; // struct WheelStates_

typedef ::leo_msgs::WheelStates_<std::allocator<void> > WheelStates;

typedef boost::shared_ptr< ::leo_msgs::WheelStates > WheelStatesPtr;
typedef boost::shared_ptr< ::leo_msgs::WheelStates const> WheelStatesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::leo_msgs::WheelStates_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::leo_msgs::WheelStates_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::leo_msgs::WheelStates_<ContainerAllocator1> & lhs, const ::leo_msgs::WheelStates_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.position == rhs.position &&
    lhs.velocity == rhs.velocity &&
    lhs.torque == rhs.torque &&
    lhs.pwm_duty_cycle == rhs.pwm_duty_cycle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::leo_msgs::WheelStates_<ContainerAllocator1> & lhs, const ::leo_msgs::WheelStates_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace leo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::leo_msgs::WheelStates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::leo_msgs::WheelStates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leo_msgs::WheelStates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leo_msgs::WheelStates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leo_msgs::WheelStates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leo_msgs::WheelStates_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::leo_msgs::WheelStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3fd78a5ebfca19b565fd49f45052c8cd";
  }

  static const char* value(const ::leo_msgs::WheelStates_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3fd78a5ebfca19b5ULL;
  static const uint64_t static_value2 = 0x65fd49f45052c8cdULL;
};

template<class ContainerAllocator>
struct DataType< ::leo_msgs::WheelStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "leo_msgs/WheelStates";
  }

  static const char* value(const ::leo_msgs::WheelStates_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::leo_msgs::WheelStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message describes the states of the wheels in Leo Rover\n"
"#\n"
"# The state of each wheel is defined by:\n"
"#  * the position of the wheel (rad),\n"
"#  * the velocity of the wheel (rad/s)\n"
"#  * the torque that is applied in the wheel (Nm)\n"
"#  * the PWM Duty cycle (%)\n"
"#\n"
"# The stamp specifies the time at which the wheel states were recorded.\n"
"#\n"
"# This message consists of a multiple arrays, one for each part of the wheel state.\n"
"# The order of the wheels in each array is: FL, RL, FR, RR\n"
"\n"
"time stamp\n"
"\n"
"float32[4] position\n"
"float32[4] velocity\n"
"float32[4] torque\n"
"float32[4] pwm_duty_cycle\n"
;
  }

  static const char* value(const ::leo_msgs::WheelStates_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::leo_msgs::WheelStates_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.torque);
      stream.next(m.pwm_duty_cycle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelStates_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::leo_msgs::WheelStates_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::leo_msgs::WheelStates_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.position[i]);
    }
    s << indent << "velocity[]" << std::endl;
    for (size_t i = 0; i < v.velocity.size(); ++i)
    {
      s << indent << "  velocity[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.velocity[i]);
    }
    s << indent << "torque[]" << std::endl;
    for (size_t i = 0; i < v.torque.size(); ++i)
    {
      s << indent << "  torque[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.torque[i]);
    }
    s << indent << "pwm_duty_cycle[]" << std::endl;
    for (size_t i = 0; i < v.pwm_duty_cycle.size(); ++i)
    {
      s << indent << "  pwm_duty_cycle[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.pwm_duty_cycle[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEO_MSGS_MESSAGE_WHEELSTATES_H

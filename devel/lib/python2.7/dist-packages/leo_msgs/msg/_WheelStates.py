# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from leo_msgs/WheelStates.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class WheelStates(genpy.Message):
  _md5sum = "3fd78a5ebfca19b565fd49f45052c8cd"
  _type = "leo_msgs/WheelStates"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This message describes the states of the wheels in Leo Rover
#
# The state of each wheel is defined by:
#  * the position of the wheel (rad),
#  * the velocity of the wheel (rad/s)
#  * the torque that is applied in the wheel (Nm)
#  * the PWM Duty cycle (%)
#
# The stamp specifies the time at which the wheel states were recorded.
#
# This message consists of a multiple arrays, one for each part of the wheel state.
# The order of the wheels in each array is: FL, RL, FR, RR

time stamp

float32[4] position
float32[4] velocity
float32[4] torque
float32[4] pwm_duty_cycle
"""
  __slots__ = ['stamp','position','velocity','torque','pwm_duty_cycle']
  _slot_types = ['time','float32[4]','float32[4]','float32[4]','float32[4]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,position,velocity,torque,pwm_duty_cycle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WheelStates, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.position is None:
        self.position = [0.] * 4
      if self.velocity is None:
        self.velocity = [0.] * 4
      if self.torque is None:
        self.torque = [0.] * 4
      if self.pwm_duty_cycle is None:
        self.pwm_duty_cycle = [0.] * 4
    else:
      self.stamp = genpy.Time()
      self.position = [0.] * 4
      self.velocity = [0.] * 4
      self.torque = [0.] * 4
      self.pwm_duty_cycle = [0.] * 4

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2I().pack(_x.stamp.secs, _x.stamp.nsecs))
      buff.write(_get_struct_4f().pack(*self.position))
      buff.write(_get_struct_4f().pack(*self.velocity))
      buff.write(_get_struct_4f().pack(*self.torque))
      buff.write(_get_struct_4f().pack(*self.pwm_duty_cycle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.stamp.secs, _x.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 16
      self.position = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 16
      self.velocity = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 16
      self.torque = _get_struct_4f().unpack(str[start:end])
      start = end
      end += 16
      self.pwm_duty_cycle = _get_struct_4f().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I().pack(_x.stamp.secs, _x.stamp.nsecs))
      buff.write(self.position.tostring())
      buff.write(self.velocity.tostring())
      buff.write(self.torque.tostring())
      buff.write(self.pwm_duty_cycle.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.stamp.secs, _x.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 16
      self.position = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      start = end
      end += 16
      self.velocity = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      start = end
      end += 16
      self.torque = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      start = end
      end += 16
      self.pwm_duty_cycle = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f

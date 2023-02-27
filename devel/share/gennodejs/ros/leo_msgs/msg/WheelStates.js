// Auto-generated. Do not edit!

// (in-package leo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.position = null;
      this.velocity = null;
      this.torque = null;
      this.pwm_duty_cycle = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('pwm_duty_cycle')) {
        this.pwm_duty_cycle = initObj.pwm_duty_cycle
      }
      else {
        this.pwm_duty_cycle = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelStates
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 4) {
      throw new Error('Unable to serialize array field position - length must be 4')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 4);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 4) {
      throw new Error('Unable to serialize array field velocity - length must be 4')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, 4);
    // Check that the constant length array field [torque] has the right length
    if (obj.torque.length !== 4) {
      throw new Error('Unable to serialize array field torque - length must be 4')
    }
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.float32(obj.torque, buffer, bufferOffset, 4);
    // Check that the constant length array field [pwm_duty_cycle] has the right length
    if (obj.pwm_duty_cycle.length !== 4) {
      throw new Error('Unable to serialize array field pwm_duty_cycle - length must be 4')
    }
    // Serialize message field [pwm_duty_cycle]
    bufferOffset = _arraySerializer.float32(obj.pwm_duty_cycle, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelStates
    let len;
    let data = new WheelStates(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [pwm_duty_cycle]
    data.pwm_duty_cycle = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leo_msgs/WheelStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fd78a5ebfca19b565fd49f45052c8cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes the states of the wheels in Leo Rover
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelStates(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(4).fill(0)
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(4).fill(0)
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = new Array(4).fill(0)
    }

    if (msg.pwm_duty_cycle !== undefined) {
      resolved.pwm_duty_cycle = msg.pwm_duty_cycle;
    }
    else {
      resolved.pwm_duty_cycle = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = WheelStates;

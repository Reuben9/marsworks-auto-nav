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

class WheelOdom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.velocity_lin = null;
      this.velocity_ang = null;
      this.pose_x = null;
      this.pose_y = null;
      this.pose_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('velocity_lin')) {
        this.velocity_lin = initObj.velocity_lin
      }
      else {
        this.velocity_lin = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_ang')) {
        this.velocity_ang = initObj.velocity_ang
      }
      else {
        this.velocity_ang = 0.0;
      }
      if (initObj.hasOwnProperty('pose_x')) {
        this.pose_x = initObj.pose_x
      }
      else {
        this.pose_x = 0.0;
      }
      if (initObj.hasOwnProperty('pose_y')) {
        this.pose_y = initObj.pose_y
      }
      else {
        this.pose_y = 0.0;
      }
      if (initObj.hasOwnProperty('pose_yaw')) {
        this.pose_yaw = initObj.pose_yaw
      }
      else {
        this.pose_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelOdom
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [velocity_lin]
    bufferOffset = _serializer.float32(obj.velocity_lin, buffer, bufferOffset);
    // Serialize message field [velocity_ang]
    bufferOffset = _serializer.float32(obj.velocity_ang, buffer, bufferOffset);
    // Serialize message field [pose_x]
    bufferOffset = _serializer.float32(obj.pose_x, buffer, bufferOffset);
    // Serialize message field [pose_y]
    bufferOffset = _serializer.float32(obj.pose_y, buffer, bufferOffset);
    // Serialize message field [pose_yaw]
    bufferOffset = _serializer.float32(obj.pose_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelOdom
    let len;
    let data = new WheelOdom(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [velocity_lin]
    data.velocity_lin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_ang]
    data.velocity_ang = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose_x]
    data.pose_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose_y]
    data.pose_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose_yaw]
    data.pose_yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leo_msgs/WheelOdom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bb892afaf24a6d3bedf13c8fe986f2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents the pose and velocity of a differential wheeled robot, estimated from the wheel encoders.
    #
    # The velocity_* fields represent the linear and angular velocity of the robot.
    # The pose_* fields represent the x, y and yaw pose of the robot w.r.t. the starting pose.
    #
    # The coordinate frame that represents the robot is located at the center of rotation.
    
    time stamp
    float32 velocity_lin
    float32 velocity_ang
    float32 pose_x
    float32 pose_y
    float32 pose_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelOdom(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.velocity_lin !== undefined) {
      resolved.velocity_lin = msg.velocity_lin;
    }
    else {
      resolved.velocity_lin = 0.0
    }

    if (msg.velocity_ang !== undefined) {
      resolved.velocity_ang = msg.velocity_ang;
    }
    else {
      resolved.velocity_ang = 0.0
    }

    if (msg.pose_x !== undefined) {
      resolved.pose_x = msg.pose_x;
    }
    else {
      resolved.pose_x = 0.0
    }

    if (msg.pose_y !== undefined) {
      resolved.pose_y = msg.pose_y;
    }
    else {
      resolved.pose_y = 0.0
    }

    if (msg.pose_yaw !== undefined) {
      resolved.pose_yaw = msg.pose_yaw;
    }
    else {
      resolved.pose_yaw = 0.0
    }

    return resolved;
    }
};

module.exports = WheelOdom;

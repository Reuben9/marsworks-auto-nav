// Auto-generated. Do not edit!

// (in-package leo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetImuCalibrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gyro_bias_x = null;
      this.gyro_bias_y = null;
      this.gyro_bias_z = null;
    }
    else {
      if (initObj.hasOwnProperty('gyro_bias_x')) {
        this.gyro_bias_x = initObj.gyro_bias_x
      }
      else {
        this.gyro_bias_x = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_bias_y')) {
        this.gyro_bias_y = initObj.gyro_bias_y
      }
      else {
        this.gyro_bias_y = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_bias_z')) {
        this.gyro_bias_z = initObj.gyro_bias_z
      }
      else {
        this.gyro_bias_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetImuCalibrationRequest
    // Serialize message field [gyro_bias_x]
    bufferOffset = _serializer.float64(obj.gyro_bias_x, buffer, bufferOffset);
    // Serialize message field [gyro_bias_y]
    bufferOffset = _serializer.float64(obj.gyro_bias_y, buffer, bufferOffset);
    // Serialize message field [gyro_bias_z]
    bufferOffset = _serializer.float64(obj.gyro_bias_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetImuCalibrationRequest
    let len;
    let data = new SetImuCalibrationRequest(null);
    // Deserialize message field [gyro_bias_x]
    data.gyro_bias_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyro_bias_y]
    data.gyro_bias_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gyro_bias_z]
    data.gyro_bias_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'leo_msgs/SetImuCalibrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98c719532707e923d1c05a91573cc24a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 gyro_bias_x
    float64 gyro_bias_y
    float64 gyro_bias_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetImuCalibrationRequest(null);
    if (msg.gyro_bias_x !== undefined) {
      resolved.gyro_bias_x = msg.gyro_bias_x;
    }
    else {
      resolved.gyro_bias_x = 0.0
    }

    if (msg.gyro_bias_y !== undefined) {
      resolved.gyro_bias_y = msg.gyro_bias_y;
    }
    else {
      resolved.gyro_bias_y = 0.0
    }

    if (msg.gyro_bias_z !== undefined) {
      resolved.gyro_bias_z = msg.gyro_bias_z;
    }
    else {
      resolved.gyro_bias_z = 0.0
    }

    return resolved;
    }
};

class SetImuCalibrationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetImuCalibrationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetImuCalibrationResponse
    let len;
    let data = new SetImuCalibrationResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'leo_msgs/SetImuCalibrationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetImuCalibrationResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetImuCalibrationRequest,
  Response: SetImuCalibrationResponse,
  md5sum() { return 'bee7d47c032e7e006759478ee568747d'; },
  datatype() { return 'leo_msgs/SetImuCalibration'; }
};

import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet }

class DeviceInfo {
  final DeviceType deviceType;
  final Orientation orientation;

  DeviceInfo({
    required this.deviceType,
    required this.orientation,
  });
}

DeviceInfo getDeviceInfo(BuildContext context) {
  var deviceType = DeviceType.mobile;
  var orientation = MediaQuery.of(context).orientation;

  var shortestSide = MediaQuery.of(context).size.shortestSide;

  if (shortestSide > 600) {
    deviceType = DeviceType.tablet;
  }

  return DeviceInfo(deviceType: deviceType, orientation: orientation);
}


// var deviceInfo = getDeviceInfo(context);
// if (deviceInfo.deviceType == DeviceType.Tablet) {
//   // Tablet-specific UI
// } else {
//   // Mobile-specific UI
// }
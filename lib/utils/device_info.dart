import 'package:air/utils/setup.dart';

class DeviceInfo {
  double? height;
  double? width;

  static set setHeight(double h) => getIt.get<DeviceInfo>().height = h;
  static set setWidth(double w) => getIt.get<DeviceInfo>().height = w;
}

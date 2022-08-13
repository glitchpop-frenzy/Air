import 'package:air/utils/device_info.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setup() {
  getIt.registerSingleton(DeviceInfo());
}

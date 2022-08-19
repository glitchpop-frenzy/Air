import 'package:air/config/global.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

@injectable
class DeviceInfo {
  double? height;
  double? width;

  static set setHeight(double h) => getIt.get<DeviceInfo>().height = h;
  static set setWidth(double w) => getIt.get<DeviceInfo>().height = w;
}

@injectable
class SupabaseInstance {
  static init() {
    sb.Supabase.initialize(
      anonKey: Global.supabaseAnonKey!,
      url: Global.supabaseUrl!,
      debug: true,
    );
  }
}

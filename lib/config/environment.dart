import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName => '.env';
  static String? get supabaseUrl => kReleaseMode
      ? dotenv.env['PROD_SUPABASE_URL']
      : dotenv.env['DEV_SUPABASE_URL'];
  static String? get supabaseAnonKey => dotenv.env['SUPABASE_ANON_KEY'];
}

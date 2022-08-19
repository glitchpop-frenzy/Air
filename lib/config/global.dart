import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final getIt = GetIt.instance;

class Global {
  static String get fileName => '.env';
  static String? get supabaseUrl => dotenv.env['ENVIRONMENT'] != 'development'
      ? dotenv.env['PROD_SUPABASE_URL']
      : dotenv.env['DEV_SUPABASE_URL'];
  static String? get supabaseAnonKey => dotenv.env['SUPABASE_ANON_KEY'];
  static String? get redirectUrl => dotenv.env['SUPABASE_REDIRECT_URL'];
  static String? get loginCallback => dotenv.env['SUPABASE_LOGIN_CALLBACK'];
}

import 'package:air/route/routes.dart';
import 'package:air/utils/setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// ignore: depend_on_referenced_packages
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

import 'config/environment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  sb.Supabase.initialize(
      anonKey: Environment.supabaseAnonKey!,
      url: Environment.supabaseUrl!,
      debug: true);
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'Sans Serif Pro'),
      routeInformationParser: routes.routeInformationParser,
      routerDelegate: routes.routerDelegate,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}

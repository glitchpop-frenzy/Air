import 'package:air/route/routes.dart';
import 'package:air/utils/setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// ignore: depend_on_referenced_packages
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  sb.Supabase.initialize(
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBodXVscmJldWNrem95a2d1bnJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjAzNzI4MTUsImV4cCI6MTk3NTk0ODgxNX0.hxXumQnt1Pu1MM-0bJfglyqM9oTIwBHI2uO7ZUk5LUE', // Environment.supabaseAnonKey!,
      url:
          'https://phuulrbeuckzoykgunrw.supabase.co', //Environment.supabaseUrl!,
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

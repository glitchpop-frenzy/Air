import 'package:air/presentation/auth/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(routes: _appRoutes);
final _appRoutes = <GoRoute>[
  _generateGoRoute(
    '/',
    const AuthScreen(),
  ),
];

GoRoute _generateGoRoute(String path, Widget child) {
  return GoRoute(path: path, builder: (_, state) => child);
}

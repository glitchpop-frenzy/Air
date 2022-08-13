import 'package:air/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(routes: _appRoutes);
final _appRoutes = <GoRoute>[
  _generateGoRoute(
    '/',
    const HomeScreen(),
  ),
];

GoRoute _generateGoRoute(String path, Widget child) {
  return GoRoute(path: path, builder: (_, state) => child);
}

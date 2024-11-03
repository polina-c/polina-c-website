import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'shared/design/theme.dart';
import 'shared/framework/scaffold.dart';
import 'shared/framework/screen.dart';

const _homeRoute = '/';

final _screens = <String, AppScreen>{
  _homeRoute: homeScreen,
};

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polina Cherkasova',
      theme: appTheme,
      initialRoute: _homeRoute,
      // Using this instead of [routes] to turn off animation.
      onGenerateRoute: (settings) {
        final route = settings.name ?? _homeRoute;
        return PageRouteBuilder(
          pageBuilder: (context, __, ___) =>
              AppScaffold(route, _screens[route] ?? homeScreen),
          transitionsBuilder: (_, __, ___, child) => child,
          settings: settings,
        );
      },
    );
  }
}

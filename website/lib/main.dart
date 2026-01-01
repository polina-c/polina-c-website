import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screens/home.dart';
import 'screens/molokai.dart';
import 'shared/design/theme.dart';
import 'shared/framework/app_structure.dart';
import 'shared/framework/scaffold.dart';

final _screens = <String, WidgetBuilder>{
  AppRoutes.home: homeScreen,
  AppRoutes.molokai: molokaiScreen,
};

void main() async {
  setPathUrlStrategy();
  runApp(const MainApp());
  SemanticsBinding.instance.ensureSemantics();
}

class MainApp extends StatelessWidget {
  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polina Cherkasova',
      theme: appTheme,
      initialRoute: AppRoutes.home,
      // Using this instead of [routes] to turn off animation.
      onGenerateRoute: (settings) {
        final route = settings.name ?? AppRoutes.home;
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

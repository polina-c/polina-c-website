import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../shared/design/theme.dart';

import '../design/border.dart';
import 'screen.dart';

const _version = 'version 3';

class AppScaffold extends StatefulWidget {
  const AppScaffold(this.route, this.screen, {super.key});

  final AppScreen screen;
  final String route;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return new DefaultTextStyle(
      style: new TextStyle(
        inherit: true,
        fontSize: FontSizes.body,
        color: AppColors.text,
      ),
      child: Scaffold(
        appBar: AppBar(
          // These two properties below define how app bar behaves when user scrolls.
          shadowColor: Colors.blueAccent,
          scrolledUnderElevation: 2,
          // These two properties above define how app bar behaves when user scrolls.
          title: Column(
            children: [
              Underlined(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 25,
                            child: Image.asset('assets/images/logo.png'),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Vital Synergy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          centerTitle: false,
          automaticallyImplyLeading: false, // Remove back button
          backgroundColor: AppColors.background,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                widget.screen.content(context),
                const SizedBox(height: 200),
                Container(
                  width: screenWidth,
                  height: 600,
                  alignment: Alignment.bottomCenter,
                  child: Text('${defaultTargetPlatform.name}, $_version'),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.background, AppColors.bottom],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hc_web/shared/design/theme.dart';

import '../bricks/text.dart';
import '../bricks/utils.dart';
import '../design/border.dart';
import 'screen.dart';
import '../design/styles.dart';

const _version = 11;

class AppScaffold extends StatefulWidget {
  const AppScaffold(
    this.route,
    this.screen, {
    super.key,
  });

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
          title: Column(
            children: [
              Underlined(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ImageIcon(
                            AssetImage('assets/images/logo.png'),
                            color: AppColors.logo,
                          ),
                          const SizedBox(width: 8),
                          Text('Polina Cherkasova'),
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
                  //color: AppColors.bottom,
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    '${defaultTargetPlatform.name}, $_version',
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.background,
                        AppColors.bottom,
                      ],
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

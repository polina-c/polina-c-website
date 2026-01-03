import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../bricks/utils.dart';
import '../design/border.dart';
import '../design/theme.dart';
import 'app_structure.dart';

const _version = 'version 10';

class AppScaffold extends StatefulWidget {
  const AppScaffold(
    this.route,
    this.screen, {
    super.key,
  });

  final WidgetBuilder screen;
  final String route;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SelectionArea(
      child: DefaultTextStyle(
        style: const TextStyle(
          inherit: true,
          fontSize: FontSizes.body,
          color: AppColors.text,
        ),
        child: Scaffold(
          appBar: AppBar(
            // These two properties below define how app
            // bar behaves when user scrolls.
            shadowColor: Colors.blueAccent,
            scrolledUnderElevation: 2,
            // These two properties above define how app
            //bar behaves when user scrolls.
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
                              const AssetImage('assets/images/logo.png'),
                              color: AppColors.logo,
                            ),
                            const SizedBox(width: 8),
                            if (widget.route == AppRoutes.home)
                              const Text('Polina Cherkasova')
                            else
                              TextButton(
                                onPressed: () => push(AppRoutes.home, context),
                                child: const Text('Polina Cherkasova'),
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
                  widget.screen(context),
                  const SizedBox(height: 200),
                  Container(
                    width: screenWidth,
                    height: 600,
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
      ),
    );
  }
}

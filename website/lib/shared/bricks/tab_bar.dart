import 'package:flutter/material.dart';
import '../design/styles.dart';

import '../design/theme.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    this.onTap,
    this.indicatorColor = AppColors.primary,
    this.textStyle,
    this.showDivider = true,
  });

  final TabController? controller;
  final List<Widget> tabs;
  final void Function(int)? onTap;
  final Color? indicatorColor;
  final bool showDivider;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      labelStyle: textStyle ?? AppTextStyles.tab(context),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      dividerColor: showDivider ? AppColors.divider : AppColors.background,
      indicatorWeight: 4,
      indicatorColor: indicatorColor ?? AppColors.background,
      tabs: tabs,
      tabAlignment: TabAlignment.center,
      onTap: onTap,
    );
  }
}

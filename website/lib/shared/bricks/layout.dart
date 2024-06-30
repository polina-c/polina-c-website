import 'package:flutter/material.dart';

import '../design/theme.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key, required this.child, this.width});

  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Sizes.columnWidth,
      child: child,
    );
  }
}

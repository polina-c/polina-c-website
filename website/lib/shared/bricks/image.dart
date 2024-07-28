import 'package:flutter/material.dart';

import '../../shared/design/border.dart';
import 'utils.dart';

class AppImage extends StatelessWidget {
  AppImage(this.width, String path, {this.border = true}) {
    this.path = '${imagePath}$path';
  }

  final double width;
  late final String path;
  final bool border;

  @override
  Widget build(BuildContext context) {
    Widget child = Image.asset(path);
    if (border) child = RoundBorder(child: child);
    return SizedBox(
      width: width,
      child: child,
    );
  }
}

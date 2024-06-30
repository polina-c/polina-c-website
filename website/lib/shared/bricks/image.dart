import 'package:flutter/material.dart';
import 'package:hc_web/shared/design/border.dart';

import 'utils.dart';

class AppImage extends StatelessWidget {
  AppImage(this.width, String path) {
    this.path = '${imagePath}$path';
  }

  final double width;
  late final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: RoundBorder(
        child: Image.asset(path),
      ),
    );
  }
}

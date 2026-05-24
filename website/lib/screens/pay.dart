import 'package:flutter/material.dart';

import '../shared/bricks/text.dart';

Widget payScreen(BuildContext context) => const _Screen();

class _Screen extends StatefulWidget {
  const _Screen();

  @override
  State<_Screen> createState() => _ScreenState();
}

class _ScreenState extends State<_Screen> {
  @override
  Widget build(BuildContext context) {
    return AppMarkdown('hello!');
  }
}

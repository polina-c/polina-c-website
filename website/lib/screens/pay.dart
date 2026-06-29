import 'package:flutter/material.dart';

import '../shared/bricks/layout.dart';
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
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Options to send me money:'),
          SizedBox(height: 16),
          Text('Zelle to: polina.c@live.com'),
          Text('PayPal to: polina.c@live.com'),
        ],
      ),
    );
  }
}

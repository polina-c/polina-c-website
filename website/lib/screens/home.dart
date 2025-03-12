import 'package:flutter/material.dart';

import '../shared/bricks/image.dart';
import '../shared/bricks/layout.dart';
import '../shared/bricks/text.dart';
import '../shared/content/contacts.dart';
import '../shared/framework/app_structure.dart';

Widget homeScreen(BuildContext _) => const _Screen();

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const _Text1(),
            AppImage(300, 'images/polina.jpg'),
          ],
        ),
        const _Text2(),
        const Contacts(),
      ],
    );
  }
}

class _Text1 extends StatelessWidget {
  const _Text1();

  @override
  Widget build(BuildContext context) {
    return const AppColumn(
      width: 300,
      child: AppMarkdown('''
# Hello, I'm Polina!

I am a software engineer, energy practitioner, and mom of grown children.
I am from Saint Petersburg, Russia, currently living in Kirkland WA, US.

[Join me on my telegram channel.](https://t.me/+KG-nDQP-gsQ5YWRh)
'''),
    );
  }
}

class _Text2 extends StatelessWidget {
  const _Text2();

  @override
  Widget build(BuildContext context) {
    return const AppColumn(
      child: AppMarkdown('''

## Software Engineer

I am a proud member of the [Flutter](https://flutter.dev) team.

[Flutter](https://flutter.dev) is a programming language designed to
create **beautiful UI** in a simple and easy to understand way.

I am creator of
[Flutter Chat](http://flutter-chat.com),
[LayerLens](https://pub.dev/packages/layerlens)
and [Leak Tracker](https://github.com/dart-lang/leak_tracker/blob/main/doc/leak_tracking/OVERVIEW.md).

## Energy Practitioner

* Constellation facilitator, field therapist, life mirror
* Student in [Open Field Institute](https://openfield.ru)
* Creator of [Happy Creek](https://happy-creek.com)

## Hawaii Host

My **second home** is in Hawaii, West Molokai. **Rent it** while I am on big land!

It is **🔥 magical**! Find details [here](${AppRoutes.molokai}).
'''),
    );
  }
}

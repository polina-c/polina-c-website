import 'package:flutter/material.dart';
import 'package:hc_web/shared/bricks/layout.dart';

import '../shared/bricks/image.dart';
import '../shared/bricks/text.dart';
import '../shared/framework/screen.dart';

late final homeScreen = AppScreen((_) => const _Screen());

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
            _Text1(),
            AppImage(300, 'images/polina.jpg'),
          ],
        ),
        _Text2(),
      ],
    );
  }
}

class _Text1 extends StatelessWidget {
  const _Text1();

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      width: 300,
      child: AppMarkdown('''
# Hello, I'm Polina!

I am a software engineer, curious about energy practices, and mom of grown children.
I am from Saint Petersburg, Russia, currently living in Kirkland WA, US.
'''),
    );
  }
}

class _Text2 extends StatelessWidget {
  const _Text2();

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      child: AppMarkdown('''

## Software Engineering

I am a member of the [Flutter](https://flutter.dev) team, creator of
[Flutter Chat](http://flutter-chat.dav),
[LayerLens](https://pub.dev/packages/layerlens)
and [Leak Tracker](https://github.com/dart-lang/leak_tracker/blob/main/doc/leak_tracking/OVERVIEW.md).

I am highly interested in spread of [Flutter](https://flutter.dev) as I believe
this simple and powerful UI language unleashes
creativity in many ways and thus makes this world easier and
more beautiful. Let me know if you need help using Flutter.

## Energy Practices

Student in [Open Field Institute](https://openfield.ru), creator of [Happy Creek](https://happy-creek.com)
and [Open Field Language](http://open-field-language.com).

## Profiles

[GitHub](https://github.com/polina-c),
[StackOverflow](https://stackoverflow.com/users/3312025/polina-c),
[Facebook](https://www.facebook.com/polina.cherkasova).

## Contact me

[Telegram](http://t.me/polina_314159), [Facebook](https://www.facebook.com/polina.cherkasova),
[Twitter](https://twitter.com/PolinaLinaC), [Instagram](https://www.instagram.com/polinach1).


'''),
    );
  }
}

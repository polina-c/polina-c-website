import 'package:flutter/material.dart';

import '../bricks/layout.dart';
import '../bricks/text.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppColumn(
      child: AppMarkdown('''
## Connect with me

[Telegram](http://t.me/polina_314159),
[Facebook](https://www.facebook.com/polina.cherkasova),
[Twitter](https://twitter.com/PolinaLinaC),
[Instagram](https://www.instagram.com/polinach1),
[GitHub](https://github.com/polina-c),
[StackOverflow](https://stackoverflow.com/users/3312025/polina-c).
'''),
    );
  }
}

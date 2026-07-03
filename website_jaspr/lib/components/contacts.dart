import 'package:jaspr/jaspr.dart';

import 'layout.dart';
import 'markdown.dart';

class Contacts extends StatelessComponent {
  const Contacts({super.key});

  @override
  Component build(BuildContext context) {
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

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'copyable.dart';
import 'layout.dart';

/// Ways to connect with Polina, each with a copy button for its link.
const _contacts = <({String name, String url})>[
  (name: 'Telegram', url: 'http://t.me/polina_314159'),
  (name: 'Facebook', url: 'https://www.facebook.com/polina.cherkasova'),
  (name: 'Twitter', url: 'https://twitter.com/PolinaLinaC'),
  (name: 'Instagram', url: 'https://www.instagram.com/polinach1'),
  (name: 'GitHub', url: 'https://github.com/polina-c'),
  (name: 'StackOverflow', url: 'https://stackoverflow.com/users/3312025/polina-c'),
];

class Contacts extends StatelessComponent {
  const Contacts({super.key});

  @override
  Component build(BuildContext context) {
    return AppColumn(
      child: div(classes: 'contacts', [
        h2([Component.text('Connect with me')]),
        for (final contact in _contacts)
          div(classes: 'contact-row', [
            CopyableLink(url: contact.url, text: contact.name),
          ]),
      ]),
    );
  }
}

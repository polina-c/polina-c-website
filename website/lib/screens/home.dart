import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../shared/bricks/image.dart';
import '../shared/bricks/layout.dart';
import '../shared/bricks/text.dart';
import '../shared/bricks/utils.dart';
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
[Flutter Chat](http://flutter-chat.dev),
[LayerLens](https://pub.dev/packages/layerlens)
and [Leak Tracker](https://github.com/dart-lang/leak_tracker/blob/main/doc/leak_tracking/OVERVIEW.md).

## Energy Practitioner

* Constellation facilitator, field therapist, life mirror
* Student in [Open Field Institute](https://openfield.ru)
* Creator of [Happy Creek](https://happy-creek.com)

## Life Mirror

You can schedule a life mirroring session with me.

Sometimes things are **clear**: We know **what we want**
and how to get there.
It is just a matter of time.

Sometimes things are **foggy**: We are lost. Or we feel we could move
faster, with less friction. And we suspect we may have blind spots.

We may want to look at our life in a mirror, to catch details
that we normally do not see.

It is good to have a pool of people (life mirrors?) to whom we can say,
“I have ambitious goals. And I am facing challenges achieving them.
I want to **move faster and easier**. Could you please become my mirror,
and help me extend my perspective, so that I could see more?”

Mirrors may show reality very differently, deepening it,
altering it, twisting it and taking all possible angles.
If we **differentiate reflections
from reality**, the reflections may be **very helpful**,
showing us perspectives and angles that we could not think about.

I am inviting you to add me to your **pool of life mirrors**.

## Hawaii Host

My **second home** is in Hawaii, West Molokai. **Rent it** while I am on big land!

It is **🔥 magical**! Find details [here](${AppRoutes.molokai}).
'''),
    );
  }
}

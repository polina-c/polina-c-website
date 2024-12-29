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

## Software Engineer

I am a proud member of the [Flutter](https://flutter.dev) team, creator of
[Flutter Chat](http://flutter-chat.dav),
[LayerLens](https://pub.dev/packages/layerlens)
and [Leak Tracker](https://github.com/dart-lang/leak_tracker/blob/main/doc/leak_tracking/OVERVIEW.md).

[Flutter](https://flutter.dev) is a programming language designed to
create **beautiful UI** in a simple and easy to understand way.
I am highly interested in popularizing Flutter,
so feel free to reach out if you need help using it.

## Energy Practitioner

* Constellation facilitator and field therapist
* Student in [Open Field Institute](https://openfield.ru)
* Creator of [Happy Creek](https://happy-creek.com)
* Life mirror

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

Mirrors may alter our
perspective of reality significantly,
through the lens of their experience and beliefs.
If we **differentiate reflections
from reality**, the reflections may become **very helpful**.

Consider adding me to your **pool of life mirrors** and schedule a
mirroring session. The first one is free.

## Hawaii Host

My **second home** is in Hawaii, West Molokai.
Consider **renting** my place when I am on big land.

Find details [here](${AppMarkdown.redirect(AppRoutes.molokai)}).
'''),
    );
  }
}

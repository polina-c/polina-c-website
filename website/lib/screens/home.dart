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
I am from Saint Petersburg, Russia, currently living in
Kirkland, WA, US and Hawaii, Molokai.
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

I am a proud member of the [Flutter](https://flutter.dev) team in Google.

[Flutter](https://flutter.dev) is a programming language designed to
create **beautiful applications** on any platform in a simple
and easy to understand way.

I am creator of
[Flutter Chat](http://flutter-chat.com),
[LayerLens](https://pub.dev/packages/layerlens)
and [Leak Tracker](https://github.com/dart-lang/leak_tracker/blob/main/doc/leak_tracking/OVERVIEW.md).
And, at the moment I am in the team that is putting together [GenUI SDK](https://github.com/flutter/genui).

## Energy Practitioner

* Author of [The Field](https://www.amazon.com/dp/B0G4FS4JL4) / 
[Поле](https://docs.google.com/document/d/1wfT5f0Y98_wDo-FqqqTAowRbxZsnPZUWYJ_w61JqNBo/edit?usp=sharing)

![The Field](https://live.staticflickr.com/65535/54974095107_2004b853d7_t.jpg)

* Creator of [the-field.world](https://the-field.world)
* Student in [Open Field Institute](https://openfield.ru)
* Creator of [Happy Creek](https://happy-creek.com)

## Judge at Yearly Oral Math Olympiad

[Individual oral math olympiad](https://sites.math.washington.edu/~mathcircle/olympiad/)
 ♾️ is a unique event happening yearly
just in **two places in the world**: Saint Petersburg, Russia
and Seattle, WA.

Unlike other math olympiads, it is **oral**, that means students
have three attempts to explain their solution to a judge, and
receive **feedback**. This allows students to learn
and **improve their skills in real time**.

After the event, **the solutions** for all problems are presented and
**discussed** in a large room.

If you want to become a judge, or **volunteer** differently at the event,
please contact me.

## Dancer

I can 💃:

* follow and lead argentine tango
* follow salsa
* dance hula
* dance with fire staff

## Catchball Player

🤾‍♂️

I play catchball with [USA Catchball Association](https://www.usacatchball.com/).

## Hawaii Host

My **second home** is in Hawaii, West Molokai. **Rent it** while I am on big land!

It is **🔥 magical**! Find details [here](${AppRoutes.molokai}).
'''),
    );
  }
}

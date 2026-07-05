import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/contacts.dart';
import '../components/layout.dart';
import '../components/markdown.dart';
import '../components/scaffold.dart';
import '../constants/routes.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return AppScaffold(
      route: AppRoutes.home,
      child: div(classes: 'screen', [
        div(classes: 'wrap', [
          const AppColumn(width: 300, child: AppMarkdown(_text1)),
          const AppImage(300, 'polina.jpg', circle: true),
        ]),
        const AppColumn(child: AppMarkdown(_text2)),
        const Contacts(),
      ]),
    );
  }
}

const _text1 = '''
# Hello, I'm Polina!

I am a software engineer, energy practitioner, and mom of grown children.
I am from Saint Petersburg, Russia, currently living in
Kirkland, WA, US.
''';

const _text2 =
    '''
## Energy Practitioner and Researcher

* Constellations facilitator and shaman
* Author of [The Field](https://www.amazon.com/dp/B0G4FS4JL4) /
[Поле](https://docs.google.com/document/d/1wfT5f0Y98_wDo-FqqqTAowRbxZsnPZUWYJ_w61JqNBo/edit?usp=sharing)

![The Field](https://live.staticflickr.com/65535/54974095107_2004b853d7_t.jpg)

My channels:

* [Planned groups](https://the-field.world/master/polina-cherkasova)
* [Online field calendar](https://the-field.world) where you can announce your field related events
* [IPASC profile](https://ipasc.org/primary/polina-cherkasova)
* Телеграм канал [the-field.world с Полиной](https://t.me/the_field_world_ru)

Contact me directly schedule a 1:1 session (see contacts below).

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

I play catchball with [USA Catchball Association](https://www.usacatchball.com/).

## Hawaii Host

My **second home** is in Hawaii, West Molokai. **Rent it** while I am on big land!

It is **🔥 magical**! Find details [here](${AppRoutes.molokai}).
''';

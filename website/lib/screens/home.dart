import 'package:flutter/material.dart';

import '../shared/bricks/layout.dart';
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
        SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            AppImage(
              200,
              'images/logo_large.jpg',
              border: false,
            ),
            SizedBox(width: 20),
            _Text1(),
          ],
        ),
        SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            _Text2(),
            AppImage(
              250,
              'images/portrait.jpg',
            ),
          ],
        ),
        SizedBox(height: 20),
        _Text3(),
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
# Hello, I'm Anna (Anya) Brilts!

I graduated with a master's degree in psychology at The
Moscow City Pedagogical University in 2001 and started my
professional practice in this pursuit.

In 2022, I completed multiple programs of psychological consultation in Moscow,
such as **cognitive-behavioral therapy (CBT)** and **emotional-image therapy**.
I still continue my personal consultation as a
life coach and helping practitioner.

'''),
    );
  }
}

class _Text2 extends StatelessWidget {
  const _Text2();

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      width: 300,
      child: AppMarkdown('''
Working with people
as a **psychologist**, I felt the need to expand my studies
into **bodywork** to make my skill set more effective.
Further, I studied and started working in the
field of holistic **massage** technique in Russia and Poland.
'''),
    );
  }
}

class _Text3 extends StatelessWidget {
  const _Text3();

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      child: AppMarkdown(
        '''
In 2018, I moved to the US with my family, and in 2024 I graduated
The Ashland Institute of Massage and got a license as a massage therapist (LMT #28491).

At this point, my professional experience with supporting people as
a helping practitioner adds up to **over 20 years**.
During this time, I have organized and hosted multiple
types of group and individual events focusing on **body practice**.

Currently, I am working as an LMT in Syskyou Massage clinic and also as a private practitioner in Ashland, OR.
I primarily work in the following modalities:

&nbsp;

* Holistic Japanese Kobido massage - face and body
* Abdominal massage
* Mexican Rebozo massage
* Miofascial release (MFR)
* Cupping
* Swaddling ceremony for adults ("bone closing") - transition ceremony
* Banya (Russian sauna) ceremony

&nbsp;

## Contact me

* [Facebook](https://www.facebook.com/profile.php?id=100012951335128)
* [Telegram](https://t.me/aura_kobido)
''',
      ),
    );
  }
}

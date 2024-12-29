import 'package:flutter/material.dart';

import '../shared/bricks/image.dart';
import '../shared/bricks/layout.dart';
import '../shared/bricks/text.dart';
import '../shared/content/contacts.dart';

Widget molokaiScreen(BuildContext _) => const _Screen();

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
            AppImage(300, 'images/molokai.jpg'),
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
# Hawaii, West Molokai

Consider renting my place when I am on big land:

[airbnb.com/h/polina](http://airbnb.com/h/polina)

(contact me directly to save on fees)

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

# Tips living on Molokai

(let me know if I forgot something)

## When waves are high

When waves are high it is safer to swim in these places,
listed from the most to the least safe:

* [Near Manae Goods and Grinds, very tasty food](https://maps.app.goo.gl/HH2NF5gwU2bjAtoN8)
* [Kaunalā Beach, you can meet many cats here](https://maps.app.goo.gl/nx6uwWqR7XYin2Mm8)
* [Po‘Olau Beach, 30 min hike from my place](https://maps.app.goo.gl/7Q6Q6Q7Q6Q6Q6Q6Q6)

## Activities

* Fishing with no license
* Guided tour with [Molokai Outdoors](http://www.molokaioutdoors.com)
* Hiking, there ar many trails around
* Diving, snorkeling, fishing and whale watching with [Molokai Fish and Dive](https://molokaifishanddive.net/)

## Taxi services

(book upfront)

* Molokai taxi: +1 (808) 336-0967
* Butch: +1 (989) 858-0795
* Dan: +1 (808) 284-6971


'''),
    );
  }
}

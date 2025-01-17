import 'package:flutter/material.dart';

import '../shared/bricks/image.dart';
import '../shared/bricks/layout.dart';
import '../shared/bricks/text.dart';
import '../shared/bricks/utils.dart';
import '../shared/content/contacts.dart';
import '../shared/framework/app_structure.dart';

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
        TextButton(
          onPressed: () => push(AppRoutes.home, context),
          child: const Text('polina-c.com'),
        ),
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

Rent my magical place when I am on big land:

[airbnb.com/h/polina](http://airbnb.com/h/polina).

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

## Good things to know:

* Fuel your car before you are at the bottom of your tank, because there are only two gas
stations on the island, and they may be closed unexpectedly.
* Most local stores do not sell alcohol. You can buy it in
the [Kaunakakai town](https://maps.app.goo.gl/6ZgnvyNwkkbBjx87A)
or [Kualapuu Market](https://maps.app.goo.gl/gHnMsayZwsc9X7vR8).

## When waves are high:

When waves are high it is safer to swim in other places:

* 🐈‍⬛ 🐈 🐈‍⬛ [Kaunalā Beach](https://maps.app.goo.gl/nx6uwWqR7XYin2Mm8) (you may meet many cats here)
* Places near 🥗 [Manae Goods and Grinds](https://maps.app.goo.gl/HH2NF5gwU2bjAtoN8):
    * 🪨 [sand and rocks](https://maps.app.goo.gl/McHZJQzQ673w3JcN6)
    * 🛶 [with boat launch](https://maps.app.goo.gl/QpsApe7Jh7K8U1xr7)
    * [20 miles beach](https://maps.app.goo.gl/L3WR1pLmKghHWHUo7)
* [Facing Maui](https://maps.app.goo.gl/E8QdtwifJktByqvw6)
* [East end](https://maps.app.goo.gl/ZsiPjDyxk2pqb6hu7)

## Fun things to do:

* Fishing in ocean, with no license
* Hiking, there ar many trails around
* Surfing
* Pickup coconuts on the beach and open with tools located in living room
* Guided tour with [Molokai Outdoors](http://www.molokaioutdoors.com)
* Diving, snorkeling, fishing and whale watching with [Molokai Fish and Dive](https://molokaifishanddive.net/)
* Amazing live music every night, except Mondays, at [Hero's Ohana Grill](https://www.hirosohanagrill.com/),
  with special music on happy hour every Friday 3:30-5:30
* Farmers market 9-12 on Saturdays near the [church](https://maps.app.goo.gl/dTsH2cW4qxZg5Qsd6)
* Practice hula dance on Thursdays 5pm at [Home Pumehana](https://maps.app.goo.gl/wTPB1tigwGe6s9TF8)
* Paddle an outrigger canoe on Thursdays
  7:15am-8:30am [here](https://maps.app.goo.gl/7A6cSYrKSzKsA5Pn9), 808-553-8018, molokaiwaa@gmail.com
* Enjoy Dave's ice cream at [Kamoi Snack-n-Go](https://maps.app.goo.gl/KVWzH8Ejtv9LQ7mAA)
* Play or learn to play guitar, located in living room
* Nails with Jazzi Fresh, 808-213-4129

## Transportation:

* Molokai taxi: +1 (808) 336-0967
* Butch, shuttle: +1 (989) 858-0795
* Dan, shuttle: +1 (808) 284-6971
* Free bus [MIO](https://docs.google.com/document/d/1PD5GrjqgUuhpDiYCeDIsmwhmKzlgClj_q_hHDpFNQ9o/edit?tab=t.0),
  our stop is [Kaluakoi Villas](https://maps.app.goo.gl/18zXPdL472JJZPyh9), it loops the island,
  so you can go any direction
* [Discount Hawaii Car Rental](https://www.discounthawaiicarrental.com/)
* Fly to other island with [Mokulele Airlines](https://www.mokuleleairlines.com/)
'''),
    );
  }
}

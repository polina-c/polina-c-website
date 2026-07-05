import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/contacts.dart';
import '../components/layout.dart';
import '../components/markdown.dart';
import '../components/scaffold.dart';
import '../constants/routes.dart';

class Molokai extends StatelessComponent {
  const Molokai({super.key});

  @override
  Component build(BuildContext context) {
    return AppScaffold(
      route: AppRoutes.molokai,
      child: div(classes: 'screen', [
        div(classes: 'wrap', [
          const AppColumn(width: 300, child: AppMarkdown(_text1)),
          const AppImage(300, 'molokai.jpg'),
        ]),
        const AppColumn(child: AppMarkdown(_text2)),
        const Contacts(),
        div(classes: 'home-link', [
          a(href: AppRoutes.home, [Component.text('polina-c.com')]),
        ]),
      ]),
    );
  }
}

const _text1 = '''
# Hawaii, West Molokai

Rent my magical place when I am on big land.

1 bedroom + loft + car: [airbnb.com/h/polina](http://airbnb.com/h/polina)
''';

const _text2 = '''
# Tips living on Molokai

(let me know if I forgot something)

## Good things to know:

*  **Fuel** your car before you are at the bottom of your tank, because there are only two gas
stations on the island, and they may be closed unexpectedly.
*  Most local stores do not sell **alcohol**. You can buy it in
the [Kaunakakai town](https://maps.app.goo.gl/6ZgnvyNwkkbBjx87A)
or [Kualapuu Market](https://maps.app.goo.gl/gHnMsayZwsc9X7vR8).
*  Tap water is **clean and tasty** here. Just enjoy it.
*  Cell phone reception is on and off here. Download **offline maps** when you are at good internet.
It is three clicks with Google or Apple maps.
*  Public **restrooms** on the island:
[in bakery](https://maps.app.goo.gl/7m6bm3yAzTVsfXvu7),
[in Molokai Burger](https://maps.app.goo.gl/xMPaZ1UJMYP4XDYdA),
[at baseball field](https://maps.app.goo.gl/oM1sGkWP1EJjxprs9),
[in health center](https://maps.app.goo.gl/vTqVem3zUXjemstFA),
[in airport](https://maps.app.goo.gl/1M1htG8BDweVEAN47),
[on east end](https://maps.app.goo.gl/tRkRi4DWqxKKtgPW7),
[on beach](https://maps.app.goo.gl/McHZJQzQ673w3JcN6).

## When waves are high:

When waves are high it is safer to **swim in other places**:

* 🐈‍⬛ 🐈 🐈‍⬛ [Kaunalā Beach](https://maps.app.goo.gl/nx6uwWqR7XYin2Mm8) (you may meet many cats here)
* Places near 🥗 [Manae Goods and Grinds](https://maps.app.goo.gl/HH2NF5gwU2bjAtoN8):
    * 🪨 [sand and rocks](https://maps.app.goo.gl/McHZJQzQ673w3JcN6)
    * 🛶 [with boat launch](https://maps.app.goo.gl/QpsApe7Jh7K8U1xr7)
    * [20 miles beach](https://maps.app.goo.gl/L3WR1pLmKghHWHUo7)
* [Facing Maui](https://maps.app.goo.gl/E8QdtwifJktByqvw6)
* [East end](https://maps.app.goo.gl/ZsiPjDyxk2pqb6hu7)

## Engage with local culture:

* **Memorize** the [Hawai'i Aloha](https://www.manamele.org/hawai-i-aloha) lyrics and sing it with locals
* Enjoy amazing **Hawaiian live music** every night, except Mondays, at [Hero's Ohana Grill](https://www.hirosohanagrill.com/),
  with special music on happy hour every Friday 3:30-5:30
* Join guided **historical tour to falls** with [Molokai Outdoors](http://www.molokaioutdoors.com)
* Visit **Farmers market** 9-12 on Saturdays near the [church](https://maps.app.goo.gl/dTsH2cW4qxZg5Qsd6)
* Practice **hula dance** on Thursdays 5pm at [Home Pumehana](https://maps.app.goo.gl/wTPB1tigwGe6s9TF8)
* Paddle an **outrigger canoe** on Thursdays
  7:15am-8:30am [here](https://maps.app.goo.gl/7A6cSYrKSzKsA5Pn9), 808-553-8018, molokaiwaa@gmail.com
* If you want **fresh ahi or deer jerky**, ask around for Gabe

## Other fun things to do:

* **Fishing** in ocean, with no license
* **Hiking**, there are many roads around
* **Surfing** right here on the beach, (you can rent a board at [Molokai Surf](https://molokaisurf.com/))
* Pickup **coconuts** on the beach and open with tools located in living room
* **Diving, snorkeling, fishing and whale watching** with [Molokai Fish and Dive](https://molokaifishanddive.net/)
* Enjoy Dave's **ice cream** at [Kamoi Snack-n-Go](https://maps.app.goo.gl/KVWzH8Ejtv9LQ7mAA)
* Play or learn to **play guitar**, located in living room
* If you want **haircut**, ask around for Sherrie
* Do **nails** at Honey Beauty Salon, text 808-213-4129

## Transportation:

* **Taxi/shuttle**:
    * Butch, lives in a condo nearby: +1 (989) 858-0795
    * Dan: +1 (808) 284-6971
    * Molokai taxi: +1 (808) 336-0967
* Free **bus** [MIO](https://docs.google.com/document/d/1PD5GrjqgUuhpDiYCeDIsmwhmKzlgClj_q_hHDpFNQ9o/edit?tab=t.0),
  our stop is [Kaluakoi Villas](https://maps.app.goo.gl/18zXPdL472JJZPyh9), it loops the island,
  so go any direction
* **Fly** to other island with [Mokulele Airlines](https://www.mokuleleairlines.com/)
* Book **the boat** Kauko to/from Molokai [here](https://maps.app.goo.gl/QpsApe7Jh7K8U1xr7) to/from Maui [here](https://maps.app.goo.gl/tZEZER5gkD9w2Gj19): 808 658-0783
* **Car rentals**:
    * [Alamo, next to airport](https://maps.app.goo.gl/rpTK9KCtj7JdT6kg6)
    * [Mobettah, next to port](https://maps.app.goo.gl/jHyvTt7sHEh8Wc7L6)
    * [Discount Hawaii Car Rental](https://www.discounthawaiicarrental.com/)

## More

Find more Molokai tips at [1-800-molokai.com](https://m.1-800-molokai.com/).
''';

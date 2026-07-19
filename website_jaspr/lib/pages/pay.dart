import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/copyable.dart';
import '../components/layout.dart';
import '../components/scaffold.dart';
import '../constants/routes.dart';

/// A single way to send money to Polina (Zelle, PayPal, Stripe, Wise, ...).
class _PaymentChannel {
  const _PaymentChannel({
    required this.title,
    this.description,
    this.qr,
    this.link,
    this.id,
  });

  /// Display name of the channel, e.g. 'Zelle'.
  final String title;

  /// Extra explanatory text shown under the title.
  final String? description;

  /// URL of a QR-code image for the channel.
  final String? qr;

  /// URL to open in order to pay through this channel.
  final String? link;

  /// The identifier to copy, e.g. an email, handle or card number.
  final String? id;
}

/// All the ways to send money to Polina, in display order.
const _channels = <_PaymentChannel>[
  _PaymentChannel(
    title: 'Zelle',
    id: 'polina.c@live.com',
    qr: 'https://live.staticflickr.com/65535/55374801415_b2dcd03467_q.jpg',
  ),
  _PaymentChannel(
    title: 'PayPal',
    id: 'polina.c@live.com',
    link: 'https://www.paypal.com/paypalme/PolinaCherkasova683',
    qr: 'https://live.staticflickr.com/65535/55374801410_9cb24ff4de_q.jpg',
  ),
  _PaymentChannel(
    title: 'Venmo',
    id: '@Polina-Cherkasova',
    link: 'https://venmo.com/code?user_id=1643562064150528522',
    qr: 'https://live.staticflickr.com/65535/55374506039_0b8a81c122_q.jpg',
  ),
  _PaymentChannel(
    title: 'Stripe',
    link: 'https://buy.stripe.com/5kQaEW8sa9fC4uk08caZi02',
    qr: 'https://live.staticflickr.com/65535/55401311208_88cf86de3d_q.jpg',
  ),
  _PaymentChannel(
    title: 'Telegram wallet',
    id: '@polina_314159',
    link: 'https://t.me/polina_314159',
    qr: 'https://live.staticflickr.com/65535/55401311203_767ab94397_q.jpg',
  ),
  _PaymentChannel(
    title: 'Wise',
    link: 'https://wise.com/pay/me/polinac182',
    qr: 'https://live.staticflickr.com/65535/55374435663_e9bf818107_q.jpg',
  ),
  _PaymentChannel(
    title: 'Russian card',
    description: 'Полина Черкасова, ТБанк',
    id: '2200 7008 8827 2415',
  ),
];

/// Shows all the ways to send money to Polina, one row per [_PaymentChannel].
class Pay extends StatelessComponent {
  const Pay({super.key});

  @override
  Component build(BuildContext context) {
    return AppScaffold(
      route: AppRoutes.pay,
      child: AppColumn(
        width: 700,
        child: div(classes: 'pay', [
          h1([Component.text('Options to send me money')]),
          div(classes: 'spacer', []),
          for (final channel in _channels) _PaymentChannelView(channel),
        ]),
      ),
    );
  }
}

/// Visualizes a single [_PaymentChannel]: its title, a copyable id, a clickable
/// and copyable link, an optional description and an optional QR code.
class _PaymentChannelView extends StatelessComponent {
  const _PaymentChannelView(this.channel);

  final _PaymentChannel channel;

  @override
  Component build(BuildContext context) {
    final id = channel.id;
    final link = channel.link;

    return div(classes: 'pay-channel', [
      div(classes: 'pay-title', [Component.text(channel.title)]),
      // The id is copyable.
      if (id != null)
        div(classes: 'pay-row', [
          span([Component.text(id)]),
          CopyButton(id),
        ]),
      // The link is clickable and copyable.
      if (link != null)
        div(classes: 'pay-row', [
          CopyableLink(url: link, text: _cleanUrl(link)),
        ]),
      if (channel.description != null) div(classes: 'pay-desc', [Component.text(channel.description!)]),
      if (channel.qr != null)
        div(classes: 'pay-qr', [
          img(src: channel.qr!, alt: '${channel.title} QR code'),
        ]),
    ]);
  }
}

/// Strips the scheme from [url] for display, keeping the path and query.
String _cleanUrl(String url) => url.replaceFirst(RegExp(r'^https?://'), '');

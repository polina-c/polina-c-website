import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

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
    title: 'Stripe',
    link: 'https://buy.stripe.com/5kQaEW8sa9fC4uk08caZi02',
  ),
  _PaymentChannel(
    title: 'Telegram wallet',
    id: '@polina_314159',
    link: 'https://t.me/polina_314159',
  ),
  _PaymentChannel(
    title: 'Wise',
    link: 'https://wise.com/pay/me/polinac182?utm_source=request_flow',
    qr: 'https://live.staticflickr.com/65535/55374435663_e9bf818107_q.jpg',
  ),
  _PaymentChannel(
    title: 'Venmo',
    id: '@Polina-Cherkasova',
    link: 'https://venmo.com/code?user_id=1643562064150528522',
    qr: 'https://live.staticflickr.com/65535/55374506039_0b8a81c122_q.jpg',
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
        child: div(classes: 'pay', [
          p([Component.text('Options to send me money:')]),
          div(classes: 'spacer', []),
          for (final channel in _channels) _ChannelRow(channel),
          RawText(_copyScript),
        ]),
      ),
    );
  }
}

/// Renders one payment channel: its title, an optional link or copyable id,
/// an optional description and an optional QR code.
class _ChannelRow extends StatelessComponent {
  const _ChannelRow(this.channel);

  final _PaymentChannel channel;

  @override
  Component build(BuildContext context) {
    final id = channel.id;
    final link = channel.link;

    // The main value: a link (labeled by the id or a cleaned url) or plain id.
    Component? value;
    if (link != null) {
      value = a(
        href: link,
        attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
        [Component.text(id ?? _cleanUrl(link))],
      );
    } else if (id != null) {
      value = span([Component.text(id)]);
    }

    return div(classes: 'pay-channel', [
      div(classes: 'pay-row', [
        span([Component.text('${channel.title}: ')]),
        if (value != null) value,
        if (id != null) _copyButton(id),
      ]),
      if (channel.description != null) div(classes: 'pay-desc', [Component.text(channel.description!)]),
      if (channel.qr != null)
        div(classes: 'pay-qr', [
          img(src: channel.qr!, alt: '${channel.title} QR code'),
        ]),
    ]);
  }
}

/// A ⎘ (U+2398) button that copies [value] to the clipboard.
Component _copyButton(String value) => button(
  classes: 'copy-btn',
  attributes: {
    'type': 'button',
    'title': 'Copy $value',
    'aria-label': 'Copy $value',
    'onclick': "copyEmail(this,'$value')",
  },
  [Component.text('⎘')], // ⎘ U+2398
);

/// Strips the scheme and query string from [url] for display.
String _cleanUrl(String url) {
  var s = url.replaceFirst(RegExp(r'^https?://'), '');
  final q = s.indexOf('?');
  if (q != -1) s = s.substring(0, q);
  return s;
}

const _copyScript = '''
<script>
function copyEmail(btn, email) {
  function confirm() {
    btn.textContent = '✓'; // ✓
    btn.classList.add('copied');
    setTimeout(function () {
      btn.textContent = '⎘'; // ⎘
      btn.classList.remove('copied');
    }, 1200);
  }
  if (navigator.clipboard && navigator.clipboard.writeText) {
    navigator.clipboard.writeText(email).then(confirm, function () {
      fallbackCopy(email);
      confirm();
    });
  } else {
    fallbackCopy(email);
    confirm();
  }
}
function fallbackCopy(text) {
  var ta = document.createElement('textarea');
  ta.value = text;
  ta.style.position = 'fixed';
  ta.style.opacity = '0';
  document.body.appendChild(ta);
  ta.select();
  try { document.execCommand('copy'); } catch (e) {}
  document.body.removeChild(ta);
}
</script>
''';

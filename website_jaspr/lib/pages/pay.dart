import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/layout.dart';
import '../components/scaffold.dart';
import '../constants/routes.dart';

const _zelleEmail = 'polina.c@live.com';
const _paypalEmail = 'polina.c@live.com';
const _stripeUrl = 'https://buy.stripe.com/5kQaEW8sa9fC4uk08caZi02';
const _telegramWalletUrl = 'https://t.me/polina_314159';
const _telegramName = '@polina_314159';
const _wiseUrl = 'https://wise.com/pay/me/polinac182?utm_source=request_flow';
const _wizeQrUrl = 'https://live.staticflickr.com/65535/55374435663_e9bf818107_q.jpg';
const _venmoName = '@Polina-Cherkasova';
const _venmoUrl = 'https://venmo.com/code?user_id=1643562064150528522';
const _venmoQrUrl = 'https://live.staticflickr.com/65535/55374506039_0b8a81c122_q.jpg';
const _ruCardNumber = '2200 7008 8827 2415';
const _ruCardDescription = 'Полина Черкасова, ТБанк';

final _channels = [];

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

/// Shows options to send money to Polina.
///
/// Options are:
///
/// * Zelle: to [_zelleEmail]
/// * PayPal: to [_paypalEmail]
/// * Stripe: [_stripeUrl]
/// * Telegram wallet: [_telegramWalletUrl]
/// * Wise: [_wiseUrl]
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
          const _EmailRow(label: 'Zelle to: ', email: _zelleEmail),
          const _EmailRow(label: 'PayPal to: ', email: _paypalEmail),
          const _LinkRow(
            label: 'Stripe: ',
            linkText: 'donate.stripe.com',
            url: _stripeUrl,
          ),
          const _LinkRow(
            label: 'Telegram wallet: ',
            linkText: 't.me/polina_314159',
            url: _telegramWalletUrl,
          ),
          const _LinkRow(
            label: 'Wise: ',
            linkText: 'wise.com/pay/me/polinac182',
            url: _wiseUrl,
          ),
          RawText(_copyScript),
        ]),
      ),
    );
  }
}

/// A "label + email" line with a copy button (⎘) to its right.
class _EmailRow extends StatelessComponent {
  const _EmailRow({required this.label, required this.email});

  final String label;
  final String email;

  @override
  Component build(BuildContext context) {
    return div(classes: 'pay-row', [
      span([Component.text('$label$email')]),
      button(
        classes: 'copy-btn',
        attributes: {
          'type': 'button',
          'title': 'Copy $email',
          'aria-label': 'Copy $email',
          'onclick': "copyEmail(this,'$email')",
        },
        [Component.text('⎘')], // ⎘ U+2398
      ),
    ]);
  }
}

/// A "label + link" line pointing to an external payment/donation page.
class _LinkRow extends StatelessComponent {
  const _LinkRow({
    required this.label,
    required this.linkText,
    required this.url,
  });

  final String label;
  final String linkText;
  final String url;

  @override
  Component build(BuildContext context) {
    return div(classes: 'pay-row', [
      span([Component.text(label)]),
      a(
        href: url,
        attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
        [Component.text(linkText)],
      ),
    ]);
  }
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

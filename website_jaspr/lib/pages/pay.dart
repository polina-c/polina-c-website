import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/layout.dart';
import '../components/scaffold.dart';
import '../constants/routes.dart';

const _email = 'polina.c@live.com';

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
          const _EmailRow(label: 'Zelle to: '),
          const _EmailRow(label: 'PayPal to: '),
          RawText(_copyScript),
        ]),
      ),
    );
  }
}

/// A "label + email" line with a copy button (⎘) to its right.
class _EmailRow extends StatelessComponent {
  const _EmailRow({required this.label});

  final String label;

  @override
  Component build(BuildContext context) {
    return div(classes: 'pay-row', [
      span([Component.text('$label$_email')]),
      button(
        classes: 'copy-btn',
        attributes: {
          'type': 'button',
          'title': 'Copy $_email',
          'aria-label': 'Copy $_email',
          'onclick': "copyEmail(this,'$_email')",
        },
        [Component.text('⎘')], // ⎘ U+2398
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

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// A ⎘ (U+2398) button that copies [value] to the clipboard when clicked and
/// briefly shows a ✓.
///
/// Relies on the global `copyText` helper loaded from `web/copy.js`.
class CopyButton extends StatelessComponent {
  const CopyButton(this.value, {super.key});

  final String value;

  @override
  Component build(BuildContext context) {
    return button(
      classes: 'copy-btn',
      attributes: {
        'type': 'button',
        'title': 'Copy $value',
        'aria-label': 'Copy $value',
        'onclick': "copyText(this,'$value')",
      },
      [Component.text('⎘')], // ⎘ U+2398
    );
  }
}

/// An external link (opens in a new tab) followed by a [CopyButton] that copies
/// its URL.
class CopyableLink extends StatelessComponent {
  const CopyableLink({required this.url, required this.text, super.key});

  /// The URL to open and copy.
  final String url;

  /// The visible link label.
  final String text;

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      a(
        href: url,
        attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
        [Component.text(text)],
      ),
      CopyButton(url),
    ]);
  }
}

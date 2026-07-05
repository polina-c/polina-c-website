import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:markdown/markdown.dart' as md;

/// Renders a block of Markdown as HTML, mirroring the Flutter app's `AppMarkdown`.
///
/// External links (http/https) are opened in a new tab; internal links (starting
/// with `/`) navigate within the site.
class AppMarkdown extends StatelessComponent {
  const AppMarkdown(this.content, {super.key});

  final String content;

  @override
  Component build(BuildContext context) {
    var html = md.markdownToHtml(
      content.trim(),
      extensionSet: md.ExtensionSet.gitHubWeb,
    );

    // Open external links in a new tab.
    html = html.replaceAllMapped(
      RegExp('<a href="(https?:[^"]*)"'),
      (m) => '<a target="_blank" rel="noopener noreferrer" href="${m[1]}"',
    );

    return div(classes: 'markdown', [RawText(html)]);
  }
}

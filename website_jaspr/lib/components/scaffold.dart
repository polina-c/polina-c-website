import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/routes.dart';

const _version = 'version 11';

/// The shared page shell: sticky app bar, centered content, and gradient footer.
///
/// Mirrors the Flutter app's `AppScaffold`.
class AppScaffold extends StatelessComponent {
  const AppScaffold({super.key, required this.route, required this.child});

  final String route;
  final Component child;

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      _AppBar(route: route),
      main_(classes: 'content', [child]),
      div(classes: 'footer', [Component.text(_version)]),
    ]);
  }
}

class _AppBar extends StatelessComponent {
  const _AppBar({required this.route});

  final String route;

  @override
  Component build(BuildContext context) {
    final title = route == AppRoutes.home
        ? span(classes: 'app-title', [Component.text('Polina Cherkasova')])
        : span(classes: 'app-title', [
            a(href: AppRoutes.home, [Component.text('Polina Cherkasova')]),
          ]);

    return header(classes: 'app-bar', [
      div(classes: 'app-bar-inner', [
        span(classes: 'logo', []),
        title,
      ]),
    ]);
  }
}

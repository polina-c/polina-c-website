import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/layout.dart';
import '../components/scaffold.dart';
import '../constants/routes.dart';

class Pay extends StatelessComponent {
  const Pay({super.key});

  @override
  Component build(BuildContext context) {
    return AppScaffold(
      route: AppRoutes.pay,
      child: const AppColumn(
        child: div(classes: 'pay', [
          p([Component.text('Options to send me money:')]),
          div(classes: 'spacer', []),
          p([Component.text('Zelle to: polina.c@live.com')]),
          p([Component.text('PayPal to: polina.c@live.com')]),
        ]),
      ),
    );
  }
}

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'constants/routes.dart';
import 'pages/home.dart';
import 'pages/molokai.dart';
import 'pages/pay.dart';

// The root component. With multi-page routing it is built on the server during
// pre-rendering to generate one HTML page per route.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(routes: [
      Route(
        path: AppRoutes.home,
        title: 'Polina Cherkasova',
        builder: (context, state) => const Home(),
      ),
      Route(
        path: AppRoutes.molokai,
        title: 'Hawaii, West Molokai · Polina Cherkasova',
        builder: (context, state) => const Molokai(),
      ),
      Route(
        path: AppRoutes.pay,
        title: 'Pay · Polina Cherkasova',
        builder: (context, state) => const Pay(),
      ),
    ]);
  }
}

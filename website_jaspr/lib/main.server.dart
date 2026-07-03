/// The entrypoint for the **server** environment.
///
/// The [main] method is only executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(Document(
    title: 'Polina Cherkasova',
    lang: 'en',
    meta: {
      'description': 'Polina Cherkasova',
      'theme-color': '#FFC107',
      'apple-mobile-web-app-capable': 'yes',
      'apple-mobile-web-app-status-bar-style': 'black',
      'apple-mobile-web-app-title': 'Polina Cherkasova',
    },
    head: [
      link(rel: 'icon', type: 'image/png', href: '/favicon.png'),
      link(rel: 'apple-touch-icon', href: '/icons/Icon-192.png'),
      link(rel: 'manifest', href: '/manifest.json'),
      link(rel: 'stylesheet', href: '/styles.css'),
    ],
    body: const App(),
  ));
}

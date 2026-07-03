import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// A fixed-width column, mirroring the Flutter app's `AppColumn`.
class AppColumn extends StatelessComponent {
  const AppColumn({super.key, required this.child, this.width = 500});

  final double width;
  final Component child;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'app-column',
      styles: Styles(width: width.px),
      [child],
    );
  }
}

/// A rounded, fixed-width image, mirroring the Flutter app's `AppImage`.
class AppImage extends StatelessComponent {
  const AppImage(this.width, this.fileName, {super.key});

  final double width;
  final String fileName;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'app-image',
      styles: Styles(width: width.px),
      [img(src: '/images/$fileName', alt: '')],
    );
  }
}

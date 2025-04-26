import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import '../design/styles.dart';
import 'utils.dart';

class AppText extends StatelessWidget {
  const AppText(this.text, {super.key, this.textAlign, this.style});

  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTextStyles.normal(context),
      textAlign: textAlign,
    );
  }
}

class AppMarkdown extends StatelessWidget {
  const AppMarkdown(
    this.content, {
    super.key,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      selectable: true,
      // To prevent scroll on drag in mobile Safary.
      physics: const ScrollPhysics(),
      data: content,
      shrinkWrap: true,

      onTapLink: (text, url, title) async {
        if (url == null) return;
        if (url.startsWith('/')) {
          push(url, context);
          return;
        }
        await launchUrl(Uri.parse(url));
      },
      styleSheet: markdownStyleSheet,
    );
  }
}

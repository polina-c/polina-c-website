import 'package:flutter/material.dart';

import '../design/styles.dart';
import 'text.dart';

/// A floating action button.
class Fab extends StatelessWidget {
  const Fab({
    super.key,
    required this.callback,
    required this.label,
    this.question,
  });

  final VoidCallback callback;
  final String label;
  final String? question;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (question != null) ...[
            AppText(question!),
            const SizedBox(
              width: 20,
            ),
          ],
          FilledButton(
            style: ButtonStyles.fab(context),
            onPressed: callback,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                label,
                style: AppTextStyles.tab(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

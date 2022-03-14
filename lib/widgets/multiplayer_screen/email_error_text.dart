import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/providers.dart';

class EmailErrorText extends ConsumerWidget {
  const EmailErrorText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(emailAuthNotificationProvider);

        return state.maybeWhen(
          () => const SizedBox(),
          error: (msg) => Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              '$msg',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}

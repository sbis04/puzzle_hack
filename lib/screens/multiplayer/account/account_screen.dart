import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/account/account_screen_large.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/account/account_screen_medium.dart';
import 'package:my_flutter_puzzle/screens/multiplayer/account/account_screen_small.dart';
import 'package:my_flutter_puzzle/utils/responsive_layout.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ResponsiveLayout(
      largeChild: AccountScreenLarge(),
      mediumChild: AccountScreenMedium(),
      smallChild: AccountScreenSmall(),
    );
  }
}

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_flutter_puzzle/application/states/player_matching_state.dart';
// import 'package:my_flutter_puzzle/models/user_info.dart';
// import 'package:my_flutter_puzzle/providers.dart';
// import 'package:my_flutter_puzzle/res/palette.dart';
// import 'package:my_flutter_puzzle/utils/database_client.dart';
// import 'package:my_flutter_puzzle/screens/puzzle_screen.dart';
// import 'package:my_flutter_puzzle/widgets/menu_widgets/menu_widgets.dart';

// class MenuScreen extends ConsumerStatefulWidget {
//   const MenuScreen({
//     Key? key,
//     required this.userData,
//   }) : super(key: key);

//   final UserData userData;

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _MenuScreenState();
// }

// class _MenuScreenState extends ConsumerState<MenuScreen> {
//   final numberList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
//   late final UserData userData;

//   @override
//   void initState() {
//     super.initState();
//     userData = widget.userData;
//     numberList.shuffle();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;

//     ref.listen(playerMatchingNotifierProvider, (previous, next) {
//       if (next is PlayerMatched) {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => PuzzleScreen(
//               initialList: numberList,
//               id: next.id,
//               myInfo: userData,
//             ),
//           ),
//         );
//       }
//     });

//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: SizedBox(
//             width: screenSize.width * 0.5,
//             child: Consumer(
//               builder: (context, ref, child) {
//                 final state = ref.watch(playerMatchingNotifierProvider);

//                 return state.when(
//                   () => Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Game Mode',
//                         style: TextStyle(
//                           fontSize: 30,
//                           // fontWeight: FontWeight.bold,
//                           color: Palette.crimson,
//                         ),
//                       ),
//                       const SizedBox(height: 24),
//                       MultiplayerButton(
//                         myInfo: userData,
//                         list: numberList,
//                       ),
//                       const SizedBox(height: 16),
//                       const SoloButton(),
//                       const SizedBox(height: 30),
//                     ],
//                   ),
//                   processing: () => Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const [
//                       CircularProgressIndicator(
//                         valueColor:
//                             AlwaysStoppedAnimation<Color>(Palette.violet),
//                       ),
//                       SizedBox(width: 16),
//                       Text(
//                         'Finding player ...',
//                         style: TextStyle(
//                           fontSize: 24,
//                         ),
//                       ),
//                     ],
//                   ),
//                   isMatched: (id) => Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const [
//                       Icon(
//                         Icons.check_circle,
//                         color: Palette.violet,
//                         size: 50,
//                       ),
//                       SizedBox(width: 16),
//                       Text(
//                         'Found player',
//                         style: TextStyle(
//                           fontSize: 24,
//                         ),
//                       ),
//                     ],
//                   ),
//                   isQueued: () => PlayerQueuedWidget(
//                     myInfo: userData,
//                   ),
//                   error: (message) => Text(
//                     message.toString(),
//                     style: const TextStyle(
//                       fontSize: 24,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ));
//   }
// }

// class PlayerQueuedWidget extends ConsumerWidget {
//   PlayerQueuedWidget({
//     Key? key,
//     required this.myInfo,
//   }) : super(key: key);

//   final UserData myInfo;

//   final _databaseClient = DatabaseClient();

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return StreamBuilder<DocumentSnapshot>(
//         stream: _databaseClient.isMatched(myInfo: myInfo),
//         builder: (context, snapshot) {
//           if (snapshot.hasData && snapshot.data!.data() != null) {
//             final queuedUserData =
//                 snapshot.data!.data() as Map<String, dynamic>;
//             bool isMatched = queuedUserData['ismatched'];

//             if (isMatched) {
//               WidgetsBinding.instance?.addPostFrameCallback((_) {
//                 ref
//                     .read(playerMatchingNotifierProvider.notifier)
//                     .foundUser(myInfo: myInfo);
//               });
//             }
//           }

//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               CircularProgressIndicator(
//                 valueColor: AlwaysStoppedAnimation<Color>(Palette.violet),
//               ),
//               SizedBox(width: 16),
//               Text(
//                 'Your are in queue ...',
//                 style: TextStyle(
//                   fontSize: 24,
//                 ),
//               ),
//             ],
//           );
//         });
//   }
// }

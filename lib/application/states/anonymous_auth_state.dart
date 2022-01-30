import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';

part 'anonymous_auth_state.freezed.dart';

@freezed
class AnonymousAuthState with _$AnonymousAuthState {
  const factory AnonymousAuthState() = AnonymousAuthIdle;
  const factory AnonymousAuthState.processing() = AnonymousAuthProcessing;
  const factory AnonymousAuthState.done(User user) = AnonymousAuthDone;
  const factory AnonymousAuthState.storingInfo() = StorageProcessing;
  const factory AnonymousAuthState.storageDone(UserData userData) = StorageDone;
  const factory AnonymousAuthState.error({String? message}) = AnonymousAuthError;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_puzzle/models/user_info.dart';

part 'add_user_database_state.freezed.dart';

@freezed
class AddUserDatabaseState with _$AddUserDatabaseState {
  const factory AddUserDatabaseState() = AddUserDatabaseIdle;
  const factory AddUserDatabaseState.processing() = AddUserDatabaseProcessing;
  const factory AddUserDatabaseState.done(UserData user) = AddUserDatabaseDone;
  const factory AddUserDatabaseState.error({String? message}) = AddUserDatabaseError;
}

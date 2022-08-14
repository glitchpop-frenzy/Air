import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String name,
    required String id,
    String? tUserName,
  }) = _User;
}

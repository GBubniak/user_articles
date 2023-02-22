import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_model.freezed.dart';
part 'author_model.g.dart';

@freezed
class AuthorModel with _$AuthorModel {
  const AuthorModel._();
  factory AuthorModel(
    int id,
    String picture,
    @JsonKey(name: 'first_name') String firstname,
    @JsonKey(name: 'last_name') String lastname,
  ) = _AuthorModel;

  String get name {
    return '$firstname $lastname';
  }

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}

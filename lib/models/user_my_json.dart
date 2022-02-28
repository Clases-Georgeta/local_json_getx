import 'package:local_json_getx/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_my_json.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class UserMyJson {
  UserMyJson(this.data);
  List<User> data;

  factory UserMyJson.fromJson(Map<String, dynamic> json) =>
      _$UserMyJsonFromJson(json);

  Map<String, dynamic> toJson() => _$UserMyJsonToJson(this);
}

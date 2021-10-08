import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class CostResponse<T> {

  @JsonKey(name: 'profile_path')
  final String? profilePath;

  CostResponse({
    this.profilePath,
  });
}

import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'home_patch.g.dart';

@JsonSerializable()
class HomePatch extends INetworkModel<HomePatch> {
  String? small;
  String? large;

  HomePatch({
    this.small,
    this.large,
  });

  factory HomePatch.fromJson(Map<String, Object?> json) {
    return _$HomePatchFromJson(json);
  }

  @override
  HomePatch fromJson(Map<String, Object?> json) {
    return _$HomePatchFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$HomePatchToJson(this);
  }
}

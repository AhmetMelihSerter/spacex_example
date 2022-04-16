import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

import 'home_patch.dart';

part 'home_links.g.dart';

@JsonSerializable()
class HomeLinks extends INetworkModel<HomeLinks> {
  HomePatch? patch;

  HomeLinks({
    this.patch,
  });

  factory HomeLinks.fromJson(Map<String, Object?> json) {
    return _$HomeLinksFromJson(json);
  }

  @override
  HomeLinks fromJson(Map<String, Object?> json) {
    return _$HomeLinksFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$HomeLinksToJson(this);
  }
}

import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

import 'home_links.dart';

part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse extends INetworkModel<HomeResponse> {
  String? name;
  String? details;
  HomeLinks? links;

  HomeResponse({
    this.name,
    this.details,
    this.links,
  });

  factory HomeResponse.fromJson(Map<String, Object?> json) {
    return _$HomeResponseFromJson(json);
  }

  @override
  HomeResponse fromJson(Map<String, Object?> json) {
    return _$HomeResponseFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$HomeResponseToJson(this);
  }
}

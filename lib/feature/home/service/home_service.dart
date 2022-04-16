import 'package:vexana/vexana.dart';

import '../model/home_response.dart';
import 'i_home_service.dart';

class HomeService extends IHomeService {
  
  String get _homeRoute => 'v4/launches/latest';
  
  @override
  Future<HomeResponse?> getLatestLaunch() async {
    final response = await manager.send<HomeResponse, HomeResponse>(
      _homeRoute,
      parseModel: HomeResponse(),
      method: RequestType.GET,
    );
    if (response.data is HomeResponse) {
      return response.data;
    } else {
      return null;
    }
  }
}
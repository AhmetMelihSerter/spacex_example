import '../../../core/base/service/base_service.dart';
import '../model/home_response.dart';

abstract class IHomeService extends BaseService {

  Future<HomeResponse?> getLatestLaunch();
}
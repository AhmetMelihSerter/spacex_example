import 'package:vexana/vexana.dart';

import '../../../core/base_init/navigation/i_navigation_service.dart';
import '../../../core/base_init/network/i_core_network_manager.dart';
import '../../../core/constants/app/application_constants.dart';
import '../../../core/constants/navigation/navigation_constants.dart';
import '../startup/startup_top.dart';

class VexanaManager extends NetworkManager implements ICoreNetworkManager {
  VexanaManager()
      : super(
          options: BaseOptions(
            baseUrl: ApplicationConstants.baseUrl,
          ),
          interceptor: InterceptorsWrapper(
            onError: (error, handler) {
              if (error.response?.statusCode == 403 ||
                  error.response?.statusCode == 401) {
                Startup.locator<INavigationService>().navigateToPageClear(
                  path: NavigationConstants.initialRoute,
                );
              }
            },
          ),
        );

  @override
  void signIn(String token) {
    // TODO: implement signIn
  }

  @override
  void signOut() {
    // TODO: implement signOut
  }
}

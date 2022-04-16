import 'package:vexana/vexana.dart';

import '../../../product/init/startup/startup_top.dart';

abstract class BaseService {
  late INetworkManager manager;

  BaseService() {
    manager = Startup.locator<INetworkManager>();
  }
}
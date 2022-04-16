import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../product/init/startup/startup_top.dart';
import '../../base_init/logger/i_logger_manager.dart';
import '../../base_init/network/i_core_network_manager.dart';
import '../service/base_service.dart';

abstract class BaseBloc<Event, State, T extends BaseService>
    extends Bloc<Event, State> {
  late final T service;

  late final ILoggerManager logger;

  final locator = Startup.locator;

  BaseBloc(State initialState) : super(initialState) {
    service = locator<T>();
    logger = locator<ILoggerManager>();
  }

  void signIn(String token) {
    locator<ICoreNetworkManager>().signIn(token);
  }

  void signOut() {
    locator<ICoreNetworkManager>().signOut();
  }

  void onCatchError(Object e) {
    logger.e("Bir hata oluştu: $e");
  }
}

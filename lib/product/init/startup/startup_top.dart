import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:vexana/vexana.dart';

import '../../../core/base/service/no_service.dart';
import '../../../core/base_init/logger/i_logger_manager.dart';
import '../../../core/base_init/navigation/i_navigation_service.dart';
import '../../../core/base_init/network/i_core_network_manager.dart';
import '../../../core/constants/app/application_constants.dart';
import '../../../core/constants/enums/app_enums.dart';
import '../../../feature/home/bloc/home_bloc.dart';
import '../../../feature/home/service/home_service.dart';
import '../../../feature/home/service/i_home_service.dart';
import '../logger/logger_manager.dart';
import '../navigation/navigation_router.dart';
import '../navigation/navigation_service.dart';
import '../network/vexana_manager.dart';

part 'startup.dart';
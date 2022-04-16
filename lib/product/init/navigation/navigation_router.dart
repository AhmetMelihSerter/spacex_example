import 'package:flutter/material.dart';

import '../../../core/constants/navigation/navigation_constants.dart';
import '../../../feature/home/view/home_view.dart';

class NavigationRouter {
  Route<dynamic> onGenerateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case NavigationConstants.initialRoute:
      case NavigationConstants.home:
        return _normalNavigate(
          view: const HomeView(),
          pageName: NavigationConstants.home,
        );
      default:
        return _normalNavigate(
          view: const HomeView(),
          pageName: NavigationConstants.home,
        );
    }
  }

  MaterialPageRoute _normalNavigate(
      {required Widget view, required String pageName, Object? arguments}) {
    return MaterialPageRoute(
      builder: (context) => view,
      settings: RouteSettings(
        name: pageName,
        arguments: arguments,
      ),
    );
  }
}
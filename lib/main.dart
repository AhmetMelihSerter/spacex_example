import 'package:flutter/material.dart';

import 'core/constants/app/application_constants.dart';
import 'feature/home/view/home_view.dart';
import 'product/init/startup/startup_top.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Startup.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ApplicationConstants.APP_NAME,
      home: HomeView(),
    );
  }
}

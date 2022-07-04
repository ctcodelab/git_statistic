import 'package:flutter/material.dart';
import 'package:iqvia_kpi/core/router/router.dart';
import 'package:iqvia_kpi/core/services/hive/hive_service_imp.dart';
import 'package:iqvia_kpi/core/services/hive/secured_hive_service_impl.dart';
import 'package:iqvia_kpi/core/ui/widgets/restart_widget.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  locator.registerLazySingleton(() => HiveServiceImpl());
  locator.registerLazySingleton(() => SecuredHiveServiceImpl());
  await locator<HiveServiceImpl>().init('_preferences');
  await locator<SecuredHiveServiceImpl>().init('_securedBox');
  setUpLocator();

  runApp(
    const RestartWidget(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: generateRoute,
      home: MainScreen(),
    );
  }
}

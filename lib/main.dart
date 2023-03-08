import 'package:flutter/material.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/core/router/router.dart';
import 'package:git_statistic/core/services/hive/hive_service_imp.dart';
import 'package:git_statistic/core/services/hive/secured_hive_service_impl.dart';
import 'package:git_statistic/core/ui/widgets/restart_widget.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/main_screen.dart';

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
    return MaterialApp(
      onGenerateRoute: generateRoute,
      theme: ThemeData(
        hoverColor: Colors.transparent,
        splashColor: AppColors.blue.withOpacity(0.1),
        highlightColor: AppColors.blue.withOpacity(0.1),
      ),
      home: const MainScreen(),
    );
  }
}

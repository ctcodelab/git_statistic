import 'package:flutter/material.dart';
import 'package:iqvia_kpi/core/router/router.dart';
import 'package:iqvia_kpi/core/utils/hive_provider.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/features/merge_requests/presentation/pages/home_page.dart';

void main() async {
  locator.registerLazySingleton(() => HiveProvider());
  await locator<HiveProvider>().init();
  setUpLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: generateRoute,
      home: HomePage(),
    );
  }
}

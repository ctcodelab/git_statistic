import 'package:flutter_modular/flutter_modular.dart';
import 'package:iqvia_kpi/features/presentation/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.lazySingleton((i) => CartService()),
        // Bind.factory((i) => ProductBloc(i())),
        // Bind.factory((i) => CartCubit(i())),
        // Bind.lazySingleton((i) => ProductItemDatasourceImplementation()),
        // Bind.lazySingleton((i) => ProductItemImplementation(i())),
        // Bind.lazySingleton((i) => GetProductItemUsecase(i())),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const HomePage()),
    // ChildRoute(
    //   '/detail',
    //   child: (context, args) => DetailPage(
    //     product: args.data,
    //   ),
    // ),
    // ChildRoute(
    //   '/cart',
    //   child: (context, args) => CartPage(
    //     product: args.data, list: [],
    //   ),
    // ),
  ];
}

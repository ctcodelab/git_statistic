import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_statistic/features/login/presentation/bloc/login_bloc.dart';
import 'package:git_statistic/features/login/presentation/pages/login_page.dart';
import 'package:git_statistic/features/onboarding/presentation/pages/onboarding_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc()..add(const LoginEvent.checkConditions()),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) => state.when(
          () => const SizedBox.shrink(),
          login: () => const LoginPage(),
          regular: () => const OnboardingPage(),
        ),
      ),
    );
  }
}

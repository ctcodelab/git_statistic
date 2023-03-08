import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/core/ui/widgets/text_field_widget.dart';
import 'package:git_statistic/core/ui/widgets/wide_button_widget.dart';
import 'package:git_statistic/features/login/presentation/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  String token = '';
  BoxDecoration buttonDecoration = Style.inactiveButtonDecoration;
  VoidCallback? onTap;
  TextStyle buttonTextStyle = Style.inactiveButtonTextStyle;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 2,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: TextFieldWidget(
                        obscureText: obscureText,
                        hintText: 'Personal Token',
                        onChanged: (text) {
                          token = text;
                          setState(() {
                            checkButtonConditions();
                          });
                        },
                        suffixIcon: InkWell(
                          onTap: () => setState(() => obscureText = !obscureText),
                          child:
                              obscureText ? SvgPicture.asset(AssetsPath.kEyeOff) : SvgPicture.asset(AssetsPath.kEyeOn),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: WideButtonWidget(
                        text: Text(
                          'Set Token',
                          style: buttonTextStyle,
                        ),
                        onTap: onTap,
                        decoration: buttonDecoration,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkButtonConditions() {
    if (token.isNotEmpty) {
      buttonDecoration = Style.activeButtonDecoration;
      onTap = () {
        FocusScope.of(context).requestFocus(FocusNode());
        BlocProvider.of<LoginBloc>(context).add(
          LoginEvent.setToken(token: token),
        );
      };
      buttonTextStyle = Style.activeButtonTextStyle;
    } else {
      buttonDecoration = Style.inactiveButtonDecoration;
      onTap = null;
      buttonTextStyle = Style.inactiveButtonTextStyle;
    }
  }
}

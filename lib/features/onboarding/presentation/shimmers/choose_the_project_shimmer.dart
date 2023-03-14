import 'package:flutter/material.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/core/ui/widgets/wide_button_widget.dart';
import 'package:shimmer/shimmer.dart';

class ChooseTheProjectShimmer extends StatelessWidget {
  const ChooseTheProjectShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Shimmer.fromColors(
          baseColor: AppColors.gray400,
          highlightColor: AppColors.shimmerHighlight,
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Please choose the project which one you want to track. '
                  'The only one project is supported so far.',
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  children: [
                    ...List.generate(
                      10,
                      (index) => Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.text600,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.white,
                        ),
                        child: Row(children: const [Text('')]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: WideButtonWidget(
                        text: const Text(''),
                        onTap: null,
                        decoration: Style.inactiveButtonDecoration,
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
}

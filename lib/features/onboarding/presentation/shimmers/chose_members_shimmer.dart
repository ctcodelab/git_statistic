import 'package:flutter/material.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';
import 'package:iqvia_kpi/core/ui/widgets/wide_button_widget.dart';
import 'package:shimmer/shimmer.dart';

class ChooseMembersShimmer extends StatelessWidget {
  const ChooseMembersShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Shimmer.fromColors(
          baseColor: AppColors.gray400,
          highlightColor: AppColors.shimmerHighlight,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Please choose the members which you want to track.\n'
                    'NOTE: in order, you\'ll select them in this order you\'ll see them. '
                    'So for more convenience it\'s recommended selecting at the same order as in our Exel table.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    children: [
                      ...List.generate(
                        8,
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
                          text: const Text('OK'),
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
      ),
    );
  }
}

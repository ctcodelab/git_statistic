part of 'settings_widget.dart';

class _SettingItemWidget extends StatelessWidget {
  const _SettingItemWidget({
    required this.text,
    required this.onTap,
    this.withUnderline = true,
    Key? key,
  }) : super(key: key);

  final Text text;
  final VoidCallback onTap;
  final bool withUnderline;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      child: Container(
        width: 200,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        decoration: withUnderline
            ? const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: AppColors.blue,
                  ),
                ),
              )
            : null,
        alignment: Alignment.center,
        child: text,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MemberWidget extends StatelessWidget {
  const MemberWidget({
    required this.avatarUrl,
    required this.name,
    Key? key,
  }) : super(key: key);

  final String? avatarUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 40),
      child: Row(
        children: [
          if (avatarUrl != null)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(
                  avatarUrl!,
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          Text(name),
        ],
      ),
    );
  }
}

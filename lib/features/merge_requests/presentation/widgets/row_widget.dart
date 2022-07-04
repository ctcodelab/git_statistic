import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entities/merge_request_entity.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    required this.devName,
    required this.mrs,
    Key? key,
  }) : super(key: key);

  final String devName;
  final List<MergeRequestEntity> mrs;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: Text(devName),
            ),
            const VerticalDivider(
              color: Colors.black,
              thickness: 1,
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onDoubleTap: () {
                  _showSnackBar(context);
                  Clipboard.setData(ClipboardData(text: mrs.length.toString()));
                },
                child: Center(
                  child: Text(
                    mrs.length.toString(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Copied!'),
      duration: Duration(seconds: 1),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

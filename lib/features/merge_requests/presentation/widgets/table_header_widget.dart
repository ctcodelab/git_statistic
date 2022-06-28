import 'package:flutter/material.dart';

class TableHeaderWidget extends StatelessWidget {
  const TableHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          top: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          right: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
            child: const Text(
              'Developer Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Merge Requests',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // const Expanded(
          //   child: Center(
          //     child: Text(
          //       'Discussions',
          //       style: TextStyle(fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

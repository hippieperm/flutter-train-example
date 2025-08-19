import 'package:flutter/material.dart';

class SeatListView extends StatelessWidget {
  const SeatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              lable('A'),
              lable('B'),
              lable(''),
              lable('C'),
              lable('D'),
            ],
          )
        ],
      ),
    );
  }

  Container lable(String str) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      child: Text(
        str,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

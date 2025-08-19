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
              SizedBox(width: 4),
              lable('B'),
              SizedBox(width: 4),
              lable(''),
              SizedBox(width: 4),
              lable('C'),
              SizedBox(width: 4),
              lable('D'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              seat(),
              SizedBox(width: 4),
              seat(),
              SizedBox(width: 4),
              lable('1'),
              SizedBox(width: 4),
              seat(),
              SizedBox(width: 4),
              seat(),
            ],
          )
        ],
      ),
    );
  }

  Container seat() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
    );
  }

  Container lable(String text) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

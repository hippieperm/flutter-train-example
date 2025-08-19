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
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
              )
            ],
          )
        ],
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

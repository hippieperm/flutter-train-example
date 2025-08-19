import 'package:flutter/material.dart';

class SeatListView extends StatelessWidget {
  const SeatListView({
    super.key,
    required this.selectedRowNum,
    required this.selectedColNum,
    required this.onSelected,
  });

  final int? selectedRowNum;
  final int? selectedColNum;
  final void Function(int, int) onSelected;

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
          ...List.generate(
            20,
            (index) => seats(index + 1),
          )
        ],
      ),
    );
  }

  Widget seats(int rowNum) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          seat(),
          SizedBox(width: 4),
          seat(),
          SizedBox(width: 4),
          lable('$rowNum'),
          SizedBox(width: 4),
          seat(),
          SizedBox(width: 4),
          seat(),
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

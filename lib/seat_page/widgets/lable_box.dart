import 'package:flutter/material.dart';

class LableBox extends StatelessWidget {
  const LableBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        lable('선택됨', Colors.purple),
        SizedBox(width: 20),
        lable('선택안됨', Colors.grey),
      ],
    );
  }

  Row lable(String text, Color color) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(width: 4),
        Text(text),
      ],
    );
  }
}

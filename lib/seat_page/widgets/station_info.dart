import 'package:flutter/material.dart';

class StationInfo extends StatelessWidget {
  const StationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        fontSize: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                '수서',
              ),
            ),
          ),
          Icon(
            Icons.arrow_circle_right_outlined,
            size: 30,
          ),
          Expanded(
            child: Center(
              child: Text(
                '부산',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

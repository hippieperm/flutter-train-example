import 'package:flutter/material.dart';

class StationInfo extends StatelessWidget {
  const StationInfo({
    super.key,
    required this.startStation,
    required this.endStation,
  });

  final String startStation;
  final String endStation;

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
                startStation,
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
                endStation,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

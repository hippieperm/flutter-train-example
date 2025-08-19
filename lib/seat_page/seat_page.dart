import 'package:flutter/material.dart';
import 'package:train/seat_page/widgets/lable_box.dart';
import 'package:train/seat_page/widgets/seat_list_view.dart';
import 'package:train/seat_page/widgets/station_info.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('좌석 선택'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                StationInfo(),
                LableBox(),
                SeatListView(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('예매하기'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

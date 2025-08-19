import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train/seat_page/widgets/lable_box.dart';
import 'package:train/seat_page/widgets/seat_list_view.dart';
import 'package:train/seat_page/widgets/station_info.dart';

class SeatPage extends StatefulWidget {
  const SeatPage({
    super.key,
    required this.startStation,
    required this.endStation,
  });

  final String startStation;
  final String endStation;

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectedColNum;
  int? selectedRowNum;

  void onSelectedSeat(int rowNum, int colNum) {
    setState(() {
      selectedColNum = colNum;
      selectedRowNum = rowNum;
    });
  }

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
                StationInfo(
                  startStation: widget.startStation,
                  endStation: widget.endStation,
                ),
                LableBox(),
                SeatListView(
                  selectedColNum: selectedColNum,
                  selectedRowNum: selectedRowNum,
                  onSelected: onSelectedSeat,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (selectedRowNum == null && selectedColNum == null) {
                        return;
                      }
                      showCupertinoDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text('예매 하시겠습니까?'),
                            content:
                                Text('좌석 : $selectedRowNum-$selectedColNum'),
                            actions: [
                              CupertinoDialogAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  '취소',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                              CupertinoDialogAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  '확인',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('예매하기'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

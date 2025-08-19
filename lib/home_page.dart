import 'package:flutter/material.dart';
import 'package:train/seat_page/seat_page.dart';
import 'package:train/station_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? startStation;
  String? endStation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('기차 예매'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  stationArea('출발역', startStation ?? '선택'),
                  Container(
                    width: 2,
                    height: 50,
                    color: Colors.grey[500],
                  ),
                  stationArea('도착역', endStation ?? '선택'),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SeatPage();
                      },
                    ),
                  );
                },
                child: Text('좌석 선택'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded stationArea(String title, String station) {
    return Expanded(
      child: Builder(builder: (context) {
        return GestureDetector(
          onTap: () async {
            String? result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return StationListPage(title: title);
                },
              ),
            );
            setState(() {
              if (result != null) {
                if (title == '출발역') {
                  startStation = result;
                } else {
                  endStation = result;
                }
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(station, style: TextStyle(fontSize: 40)),
            ],
          ),
        );
      }),
    );
  }
}

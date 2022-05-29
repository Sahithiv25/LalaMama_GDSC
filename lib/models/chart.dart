import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  int touchedIndex = -1;
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LalaMama"),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.arrow_back, // add custom icons also
          ),
        ),
        backgroundColor: Color(0xffd4006e),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Image.asset('assets/patterns.png'),
                ),
              ),
              Text(
                'Baby Sleep Dashboard',
                style: TextStyle(color: Color(0xffd4006e), fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Color(0xff03989e),
                          Color(0xffffffff),
                        ],
                        stops: [
                          0.0,
                          1.0
                        ],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        tileMode: TileMode.repeated),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.snooze_rounded, color: Colors.white),
                    title: Text(
                      'Track Sleep on Monday',
                      // style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Color(0xff03989e),
                          Color(0xffffffff),
                        ],
                        stops: [
                          0.0,
                          1.0
                        ],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        tileMode: TileMode.repeated),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.snooze_rounded, color: Colors.white),
                    title: Text(
                      'Track Sleep on Tuesday',
                      // style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Color(0xff03989e),
                          Color(0xffffffff),
                        ],
                        stops: [
                          0.0,
                          1.0
                        ],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        tileMode: TileMode.repeated),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.snooze_rounded, color: Colors.white),
                    title: Text(
                      'Track Sleep on Wednesday',
                      // style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     decoration: new BoxDecoration(
              //       gradient: new LinearGradient(
              //           colors: [
              //             Color(0xff03989e),
              //             Color(0xffffffff),
              //           ],
              //           stops: [
              //             0.0,
              //             1.0
              //           ],
              //           begin: FractionalOffset.topCenter,
              //           end: FractionalOffset.bottomCenter,
              //           tileMode: TileMode.repeated),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     child: ListTile(
              //       leading: Icon(Icons.snooze_rounded, color: Colors.white),
              //       title: Text(
              //         'Track Sleep on Thursday',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       trailing: Icon(Icons.arrow_forward, color: Colors.white),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           BabyCryDetect()),
                      // );
                    },
                    child: Text('View More'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Color(0xFFFBF9FF),
    primary: Color(0xFFd4006c),
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );
}

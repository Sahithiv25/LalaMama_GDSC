import 'package:flutter/material.dart';
import 'package:lalamama/models/chart.dart';
import 'package:lalamama/screens/baby_cry_detection_screen.dart';
import 'package:lalamama/screens/baby_sleep_screen.dart';
import 'package:lalamama/screens/baby_video_screen.dart';
import 'package:lalamama/screens/temperature_screen.dart';

// import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<Items> myList = [item1, item2, item3, item4, item5, item6];
    // var color = 0xfffdfffc;
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 120,
              childAspectRatio: 1),
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     border: Border.all(
            //       color: Color(0xffd4006c),
            //       width: 1.5,
            //     ),
            //   ),
            //   height: 100,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       IconButton(
            //         icon: Image.asset('assets/bs.jpg'),
            //         iconSize: 80,
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => BabyCryDetect()),
            //           );
            //         },
            //       ),
            //       Text(
            //         'Baby Cry Detection',
            //         // data.title,
            //         style: TextStyle(
            //           color: Color(0xff03989e),
            //           fontSize: 14,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffd4006c),
                  width: 1.5,
                ),
              ),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/icon_sleep.png'),
                    iconSize: 80,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BabySleep()),
                      );
                    },
                  ),
                  Text(
                    'Make Baby Sleep',
                    // data.title,
                    style: TextStyle(
                      color: Color(0xff03989e),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffd4006c),
                  width: 1.5,
                ),
              ),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/icon_temp.png'),
                    iconSize: 80,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  Text(
                    'Room Temperature',
                    // data.title,
                    style: TextStyle(
                      color: Color(0xff03989e),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffd4006c),
                  width: 1.5,
                ),
              ),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/icon_call.png'),
                    iconSize: 80,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoPlayerScreen()),
                      );
                    },
                  ),
                  Text(
                    'Watch Baby Live',
                    // data.title,
                    style: TextStyle(
                      color: Color(0xff36c6c9),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffd4006c),
                  width: 1.5,
                ),
              ),
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/icon_graph.png'),
                    iconSize: 80,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Chart()),
                      );
                    },
                  ),
                  Text(
                    'Baby Sleep Patterns',
                    // data.title,
                    style: TextStyle(
                      color: Color(0xff36c6c9),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     border: Border.all(
            //       color: Color(0xffd4006c),
            //       width: 1.5,
            //     ),
            //   ),
            //   height: 150,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       // IconButton(
            //       //   icon: Image.asset('assets/med.png'),
            //       //   iconSize: 80,
            //       //   onPressed: () {
            //       //     // Navigator.push(
            //       //     //   context,
            //       //     //   MaterialPageRoute(builder: (context) => OrderMedicine()),
            //       //     // );
            //       //   },
            //       // ),
            //       Text(
            //         'Order Pills',
            //         // data.title,
            //         style: TextStyle(
            //           color: Color(0xff36c6c9),
            //           fontSize: 14,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
    // Flexible(
    //   child:
    //  GridView.count(
    //   childAspectRatio: 1.0,
    //   padding: EdgeInsets.only(left: 16, right: 16),
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 16,
    //   mainAxisSpacing: 16,
    //   children: myList.map((data) {
    //     return Container(
    //       decoration: BoxDecoration(
    //         color: Color(color),
    //         borderRadius: BorderRadius.circular(10),
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           IconButton(
    //             icon: Image.asset('assets/health_rec.png'),
    //             iconSize: 100,
    //             onPressed: () {},
    //           ),
    //           // Image.asset(
    //           //   data.img,
    //           //   width: 100,
    //           //   height: 100,
    //           // ),
    //           SizedBox(height: 14),
    //           Text(
    //             'EHR',
    //             // data.title,
    //             style: TextStyle(
    //               color: Color(0xff36c6c9),
    //               fontSize: 14,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 8,
    //           ),
    //           IconButton(
    //             icon: Image.asset('assets/voice.png'),
    //             iconSize: 100,
    //             onPressed: () {},
    //           ),
    //           // Image.asset(
    //           //   data.img,
    //           //   width: 100,
    //           //   height: 100,
    //           // ),
    //           SizedBox(height: 14),
    //           Text(
    //             'Voice Prescriptor',
    //             // data.title,
    //             style: TextStyle(
    //               color: Color(0xff36c6c9),
    //               fontSize: 14,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 8,
    //           ),
    //         ],
    //       ),
    //     );
    //   }).toList(),
    // ),
    // );
  }
}

class Items {
  String title;
  // String subtitle;
  // String event;
  String img;
  Items(
      {required this.title,
      // required this.subtitle,
      // required this.event,
      required this.img});
}

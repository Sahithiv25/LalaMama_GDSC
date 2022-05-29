import 'package:flutter/material.dart';
import 'package:lalamama/models/carousal.dart';
import 'package:lalamama/models/grid_view.dart';
import 'package:lalamama/screens/baby_cry_detection_screen.dart';
import 'package:lalamama/screens/main_logo_screen.dart';

class MomView extends StatelessWidget {
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
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 216,
                margin: const EdgeInsets.all(15.0),
                child: ListViewCard(),
              ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: TextButton(
              //       child: Text('View Album', style: TextStyle(fontSize: 13)),
              //       style: ButtonStyle(
              //           // padding: MaterialStateProperty.all<EdgeInsets>(
              //           //     EdgeInsets.all(15)),
              //           backgroundColor:
              //               MaterialStateProperty.all<Color>(Color(0xFF03989e)),
              //           foregroundColor:
              //               MaterialStateProperty.all<Color>(Colors.white),
              //           shape:
              //               MaterialStateProperty.all<RoundedRectangleBorder>(
              //                   RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(15.0),
              //                       side:
              //                           BorderSide(color: Color(0xFFFBF9FF))))),
              //       onPressed: () {}
              //       //  => Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(builder: (context) => ChatScreen()),
              //       // ),
              //       ),
              // ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Know what your baby wants...',
                  style: TextStyle(
                      color: Color(0xffd4006c),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[],
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   alignment: Alignment.topCenter,
                    //   icon: Image.asset("images/notification.png", width: 24),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset('assets/bs.jpg'),
                              height: 80.0,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text("✦ Why is baby Crying?",
                                      style: TextStyle(
                                        color: Color(0xff03989e),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                                ElevatedButton(
                                  style: raisedButtonStyle,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BabyCryDetect()),
                                    );
                                  },
                                  child: Text('Know It'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GridDashboard()
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

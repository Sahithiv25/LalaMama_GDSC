import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 10,
              child: Text(
                'Room',
                style: TextStyle(
                    color: Color(0xFF03989e),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: Text(
                'Temperature',
                style: TextStyle(
                    color: Color(0xFF03989e),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      // backgroundImage: const AssetImage('images/light_frame.png'),
                      minimum: -50,
                      maximum: 50,
                      interval: 10,
                      radiusFactor: 0.5,
                      showAxisLine: false,
                      labelOffset: 5,
                      useRangeColorForAxis: true,
                      axisLabelStyle:
                          GaugeTextStyle(fontWeight: FontWeight.bold),
                      ranges: <GaugeRange>[
                        GaugeRange(
                            startValue: -50,
                            endValue: -20,
                            sizeUnit: GaugeSizeUnit.factor,
                            color: Color(0xff03989e),
                            endWidth: 0.03,
                            startWidth: 0.03),
                        GaugeRange(
                            startValue: -20,
                            endValue: 20,
                            sizeUnit: GaugeSizeUnit.factor,
                            color: Colors.white12,
                            endWidth: 0.03,
                            startWidth: 0.03),
                        GaugeRange(
                            startValue: 20,
                            endValue: 50,
                            sizeUnit: GaugeSizeUnit.factor,
                            color: Color(0xffd4006c),
                            endWidth: 0.03,
                            startWidth: 0.03),
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: Text(
                              '°C',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            positionFactor: 0.8,
                            angle: 90)
                      ],
                    ),
                    RadialAxis(
                      ticksPosition: ElementsPosition.outside,
                      labelsPosition: ElementsPosition.outside,
                      minorTicksPerInterval: 5,
                      axisLineStyle: AxisLineStyle(
                        thicknessUnit: GaugeSizeUnit.factor,
                        thickness: 0.1,
                      ),
                      axisLabelStyle: GaugeTextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                      radiusFactor: 0.97,
                      majorTickStyle: MajorTickStyle(
                          length: 0.1,
                          thickness: 2,
                          lengthUnit: GaugeSizeUnit.factor),
                      minorTickStyle: MinorTickStyle(
                          length: 0.05,
                          thickness: 1.5,
                          lengthUnit: GaugeSizeUnit.factor),
                      minimum: -60,
                      maximum: 120,
                      interval: 20,
                      startAngle: 115,
                      endAngle: 65,
                      ranges: <GaugeRange>[
                        GaugeRange(
                            startValue: -60,
                            endValue: 120,
                            startWidth: 0.1,
                            sizeUnit: GaugeSizeUnit.factor,
                            endWidth: 0.1,
                            gradient: SweepGradient(stops: <double>[
                              0.2,
                              0.5,
                              0.75
                            ], colors: <Color>[
                              Color(0xff03989e),
                              Colors.white,
                              Color(0xffd4006c),
                            ]))
                      ],
                      pointers: <GaugePointer>[
                        NeedlePointer(
                            value: 60,
                            needleColor: Colors.black,
                            tailStyle: TailStyle(
                                length: 0.18,
                                width: 8,
                                color: Colors.black,
                                lengthUnit: GaugeSizeUnit.factor),
                            needleLength: 0.68,
                            needleStartWidth: 1,
                            needleEndWidth: 8,
                            knobStyle: KnobStyle(
                                knobRadius: 0.07,
                                color: Colors.white,
                                borderWidth: 0.05,
                                borderColor: Colors.black),
                            lengthUnit: GaugeSizeUnit.factor)
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: Text(
                              '°F',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            positionFactor: 0.8,
                            angle: 90)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: -10,
              top: -10,
              child: Image.asset(
                'assets/hangings.png',
                height: 200,
                width: 150,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 50,
              right: 50,
              child: ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Leader()),
                  // );
                },
                child: Text('Switch/Turn OFF on AC'),
              ),
            ),
          ],
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

import 'package:flutter/material.dart';
import 'package:tflite_audio/tflite_audio.dart';

class BabyCryDetect extends StatefulWidget {
  @override
  _BabyCryDetectState createState() => _BabyCryDetectState();
}

class _BabyCryDetectState extends State<BabyCryDetect> {
  String _sound = '';
  // = "Press the button to start";
  bool _recording = false;
  late Stream<Map<dynamic, dynamic>> result;

  @override
  void initState() {
    super.initState();
    TfliteAudio.loadModel(
        model: 'assets/soundclassifier_with_metadata.tflite',
        label: 'assets/labels.txt',
        numThreads: 1,
        isAsset: true);
  }

  void _recorder() {
    String recognition = "";
    if (!_recording) {
      setState(() => _recording = true);
      result = TfliteAudio.startAudioRecognition(
        numOfInferences: 1,
        inputType: 'rawAudio',
        sampleRate: 22100,
        // 44100,
        recordingLength: 44032,
        bufferSize: 22016,
      );
      result.listen((event) {
        recognition = event["recognitionResult"];
      }).onDone(() {
        setState(() {
          _recording = false;
          _sound = recognition.split(" ")[1];
        });
      });
    }
  }

  void _stop() {
    TfliteAudio.stopAudioRecognition();
    setState(() => _recording = false);
  }

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Why is my baby crying...?",
                  style: TextStyle(
                    color: Color(0xff03989e),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: _recorder,
                color: _recording ? Color(0xff03989e) : Color(0xffd4006c),
                textColor: Colors.white,
                child: Icon(Icons.mic, size: 60),
                shape: CircleBorder(),
                padding: EdgeInsets.all(25),
              ),
              Text(
                'Press the button to start',
                style: TextStyle(
                    color: Color(0xffd4006c),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(

                      // border: Border.all(
                      //   color: Color(0xff03989e),
                      //   width: 1.0,
                      //   style: BorderStyle.solid,
                      // ),
                      ),
                  width: 300,
                  height: 100,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Baby is crying because it is',
                          style: TextStyle(
                              color: Color(0xffd4006c),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          '$_sound',
                          style: TextStyle(
                              color: Color(0xffd4006c),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

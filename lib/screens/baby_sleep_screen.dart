import 'package:flutter/material.dart';

class BabySleep extends StatelessWidget {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Image.asset('assets/sleep.png'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Let baby sleep by...',
            style: TextStyle(
                color: Color(0xff03989e),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: raisedButtonStyle,
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => MomView()),
              // );
            },
            child: Text('Singing a lullaby'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: raisedButtonStyle,
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => MomView()),
              // );
            },
            child: Text('Record a Voice'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: raisedButtonStyle,
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => MomView()),
              // );
            },
            child: Text('Playing Songs'),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Choose Songs like...',
              style: TextStyle(
                  color: Color(0xff03989e),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTomMFFDxxKqCEYEiGdmaEgsyhmtwnwZK7w_w&usqp=CAU'),
            title: Text(
              'Baby Shark',
              style: TextStyle(
                  color: Color(0xff03989e),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.send_to_mobile,
              color: Color(0xff03989e),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Image.network(
                'https://is4-ssl.mzstatic.com/image/thumb/Purple20/v4/b0/39/b0/b039b0e7-ef21-ab94-9d66-341c7a3575e0/source/512x512bb.jpg'),
            title: Text(
              'Twinkle Twinkle',
              style: TextStyle(
                  color: Color(0xff03989e),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.send_to_mobile,
              color: Color(0xff03989e),
            ),
          ),
        ],
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

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //======================================================

  //it's an audioplayer instance mama rawand
  AudioPlayer audioPlayer = AudioPlayer();
  //the url
  var url = "https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3?fbclid=IwAR07nOk2yYIlckmsUZ69gTFBlv2GnTgK3_uExU3A3tgqrU-pt-YA54nrJj8";
  //the method that play the music
  play() async {
    int result = await audioPlayer.play(url);
  }

  //=====================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: <Widget>[
            //space top lagal image aka
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            //image aka
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/music.jpg'),
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
            ),

            //space image w text aka
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text("Play Audio",style: TextStyle(color:  Color(0xff2A2424),fontWeight: FontWeight.bold,fontSize: 22),),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.2,
              child: FloatingActionButton(
                onPressed: (){
                  play(); },
                child: Icon(Icons.play_arrow,),
                backgroundColor: Color(0xff2A2424),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


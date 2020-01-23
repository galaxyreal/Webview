import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'หวยลาว หวยยี่กี เลขเด็ดออนไลน์',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Splash screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new AfterSplash(),

      imageBackground: new AssetImage("assets/images/bg-black.jpg"),
      // photoSize: MediaQuery.of(context).size.height,
      onClick: () => print("Flutter Egypt"),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-black.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              Container(
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/main.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: _launchURL1,
                    child: Text("เข้าใช้งาน Lotto VIP"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: _launchURL2,
                    child: Text("สมัคร Lotto VIP"),
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

_launchURL1() async {
  const url = 'http://febxetlt18.gb.net/drc.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'http://febxetlt18.gb.net/fua.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

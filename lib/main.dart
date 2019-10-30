import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:game_matematika/game/tambah.dart';
import 'package:game_matematika/game/kurang.dart';
import 'package:game_matematika/game/bagi.dart';
import 'package:game_matematika/game/kali.dart';
import 'package:game_matematika/game/multiplayer/gamepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values); // Disabel Status Bar
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/tambah':(context) => TambahPage(),
        '/kurang':(context) => KurangPage(),
        '/kali':(context) => KaliPage(),
        '/bagi':(context) => BagiPage(),
        '/cari_lawan':(context) => GamePage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  //Construct
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final menu_tambah = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.pink,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(FontAwesomeIcons.plus, size: 70),
            title: Text('Penjumlahan', style: TextStyle(color: Colors.white)),
            subtitle: Text('berisi soal matematika penjumlahan', style: TextStyle(color: Colors.white)),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('PLAY', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/tambah');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final menu_kurang = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.blue,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(FontAwesomeIcons.minus, size: 70),
            title: Text('Pengurangan', style: TextStyle(color: Colors.white)),
            subtitle: Text('berisi soal matematika pengurangan', style: TextStyle(color: Colors.white)),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('PLAY', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/kurang');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final menu_kali = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.deepOrange,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(FontAwesomeIcons.times, size: 70),
            title: Text('Perkalian', style: TextStyle(color: Colors.white)),
            subtitle: Text('berisi soal matematika perkalian', style: TextStyle(color: Colors.white)),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('PLAY', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/kali');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final menu_bagi = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.deepPurple,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(FontAwesomeIcons.divide, size: 70),
            title: Text('Pembagian', style: TextStyle(color: Colors.white)),
            subtitle: Text('berisi soal matematika pembagian', style: TextStyle(color: Colors.white)),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('PLAY', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/bagi');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final menu_mencari_lawan = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.deepPurple,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(FontAwesomeIcons.info, size: 70),
            title: Text('Pembagian', style: TextStyle(color: Colors.white)),
            subtitle: Text('berisi soal matematika pembagian', style: TextStyle(color: Colors.white)),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('PLAY', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cari_lawan');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
    
    return Scaffold(
      /*appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),*/
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50,),
              //Text('QUIZ MATEMATIKA',style: TextStyle(fontSize: 32),),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: FittedBox(
                  child: Image.asset('assets/logo_title.png'),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20,),
              menu_tambah,
              menu_kurang,
              menu_kali,
              menu_bagi,
              //menu_mencari_lawan
              /*Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),*/
            ],
          ),
        ),
      ) 
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

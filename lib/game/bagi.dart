import 'package:flutter/material.dart';
import 'dart:math';

class BagiPage extends StatefulWidget {
  @override
  _BagiPage createState() => _BagiPage();
}

class _BagiPage extends State<BagiPage> {
  // Inisialisasi variabel nilai soal
  var rng = new Random();
  var soal_a_1, soal_a_2;
  var soal_b_1,soal_b_2;
  var jawaban_a, jawaban_b;
  var cek_inisialisasi_a,cek_inisialisasi_b;
  int value_hidup;
  double nilai_canvas;
  
  @override
  void initState() {
    nilai_canvas = 0.0;
    jawaban_a = ''; 
    jawaban_b = '';
    cek_inisialisasi_a = 0;
    cek_inisialisasi_b = 0;
    value_hidup = 0;
  }
  
  // Tambah
  int _rumus_bagi(int a, int b){
    return (a ~/ b);
  }

  // Merubah data tombol jadi jawaban
  void parse_calculator(var nilai, int cek){
    if (cek == 1) {
      setState(() {
        jawaban_a += nilai;
      });
    }else{
      setState(() {
        jawaban_b += nilai;
      });
    }
  }

  void clear_jawaban(var cek){
    if (cek == 1) {
      setState(() {
        jawaban_a = '';
      });
    }else{
      setState(() {
        jawaban_b = '';
      });
    }
  }

  void cek_jawaban(var cek){
    if(cek == 1){
      print(jawaban_a);
      print(_rumus_bagi(soal_a_1, soal_a_2));
      if(_rumus_bagi(soal_a_1, soal_a_2) == int.parse(jawaban_a)){
        value_hidup = value_hidup + 1;
        nilai_canvas = nilai_canvas + 45.0;
        if(value_hidup == 4){
          // Player A Menang
          showDialog<String>(
            context: context,
            builder: (BuildContext object) => AlertDialog(
              title: Text('PEMENANG !'),
              content: Text('Yeay Player Biru Menang'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Tutup'),
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                ),
                FlatButton(
                  child: Text('Restart'),
                  onPressed: (){
                    Navigator.pop(context, 'Ok');
                    nilai_canvas = 0.0;
                    jawaban_a = ''; 
                    jawaban_b = '';
                    cek_inisialisasi_a = 0;
                    cek_inisialisasi_b = 0;
                    value_hidup = 0;
                  } 
                ),
              ],
            )
          );
        }
      }
    }else{
      if(_rumus_bagi(soal_b_1,soal_b_2) == int.parse(jawaban_b)){
        value_hidup = value_hidup - 1;
        nilai_canvas = nilai_canvas - 45.0;
        if(value_hidup == -4){
          // Player A Menang
          showDialog<String>(
            context: context,
            builder: (BuildContext object) => AlertDialog(
              title: Text('PEMENANG !'),
              content: Text('Yeay Player Pink Menang'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Tutup'),
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                ),
                FlatButton(
                  child: Text('Restart'),
                  onPressed: (){
                    Navigator.pop(context, 'Ok');
                    nilai_canvas = 0.0;
                    jawaban_a = ''; 
                    jawaban_b = '';
                    cek_inisialisasi_a = 0;
                    cek_inisialisasi_b = 0;
                    value_hidup = 0;
                  } 
                ),
              ],
            )
          );
        }
      }
    }
    clear_jawaban(cek);
  }

  @override
  Widget build(BuildContext context) {
    // Inisialisasi nilai soal
    var nilai_cek_a = 1, nilai_cek_b = 0;
    var rng = new Random();
    if(cek_inisialisasi_a == 0){
      soal_a_1 = rng.nextInt(100); 
      soal_a_2  = rng.nextInt(100);
      cek_inisialisasi_a = 1;
    }
    if(cek_inisialisasi_b == 0){
      soal_b_1 = rng.nextInt(100);
      soal_b_2 = rng.nextInt(100);
      cek_inisialisasi_b = 1;
    }

    final papan_a =Row(
      children: <Widget>[
        // Tombol Angka
        Column( 
          children: <Widget>[
            // Tombol 987
            Row(
              children: <Widget>[
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('7', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "8",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('8', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "9",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('9', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
              ],
            ),
            // Tombol 654
            Row(
              children: <Widget>[
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "4",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('4', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "5",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('5', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "6",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('6', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
              ],
            ),
            // Tombol 621
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "1",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('1', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "2",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('2', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "3",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('3', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
                ),
              ],
            ),
            // Tombol 0
            ButtonTheme(
              minWidth: 280,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "0",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (){
                    parse_calculator('0', nilai_cek_a);
                    //cek_inisialisasi_a = 1;
                  },
              ),
            ),
          ],
        ),
        
        SizedBox(width: 6,),
        // Tombol Trigger
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              height: 90,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "Enter",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (){
                  cek_inisialisasi_a = 0;
                  cek_jawaban(nilai_cek_a);
                },
              ),
            ),
            SizedBox(height: 6,),
            ButtonTheme(
              height: 90,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "Clear",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (){
                  //cek_inisialisasi_a = 1;
                  clear_jawaban(nilai_cek_a);
                },
              ),
            ),
          ],
        ),  
      ],
    );
    
    final papan_b =Row(
      children: <Widget>[
        // Tombol Angka
        Column( 
          children: <Widget>[
            // Tombol 987
            Row(
              children: <Widget>[
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('7', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "8",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('8', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "9",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('9', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
              ],
            ),
            // Tombol 654
            Row(
              children: <Widget>[
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "4",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('4', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "5",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('5', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "6",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('6', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
              ],
            ),
            // Tombol 621
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "1",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('1', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "2",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('2', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
                SizedBox(width: 6,),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "3",
                    style: TextStyle(fontSize: 22),
                  ),
                  onPressed: (){
                    parse_calculator('3', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
                ),
              ],
            ),
            // Tombol 0
            ButtonTheme(
              minWidth: 280,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.pink,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "0",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (){
                    parse_calculator('0', nilai_cek_b);
                    //cek_inisialisasi_b = 1;
                  },
              ),
            ),
          ],
        ),
        
        SizedBox(width: 6,),
        // Tombol Trigger
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              height: 90,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.pink,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "Enter",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (){
                  cek_inisialisasi_b = 0;
                  cek_jawaban(nilai_cek_b);
                },
              ),
            ),
            SizedBox(height: 6,),
            ButtonTheme(
              height: 90,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.pink,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "Clear",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (){
                  clear_jawaban(nilai_cek_b);
                },
              ),
            ),
          ],
        ),  
      ],
    );

    final rotasi_papan = RotatedBox(
      quarterTurns: 2,
      child: papan_b,
    ); 

    final soal_a = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('$soal_a_1',style: TextStyle(fontSize: 32),),
        SizedBox(width: 28 ,),
        Text('/',style: TextStyle(fontSize: 32),),
        SizedBox(width: 28 ,),
        Text('$soal_a_2',style: TextStyle(fontSize: 32),),
        SizedBox(width: 28 ,),
        Text('=',style: TextStyle(fontSize: 32),),
        SizedBox(width: 28 ,),
        Text('$jawaban_a',style: TextStyle(fontSize: 32),),
      ],
    );

    final soal_b = RotatedBox(
      quarterTurns: 2,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('$soal_b_1',style: TextStyle(fontSize: 32),),
          SizedBox(width: 28 ,),
          Text('/',style: TextStyle(fontSize: 32),),
          SizedBox(width: 28 ,),
          Text('$soal_b_2',style: TextStyle(fontSize: 32),),
          SizedBox(width: 28 ,),
          Text('=',style: TextStyle(fontSize: 32),),
          SizedBox(width: 28 ,),
          Text('$jawaban_b',style: TextStyle(fontSize: 32),),
        ],
      ),
    );
    /*
    final _canvasku = CustomPaint(
      painter: ShapesPainter(),
      child: Container(
        height: 279,
      ),
    );*/

    final _menu =Padding(
      padding: EdgeInsets.all(7),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 30,), // Bagian Pembatas Atas
          rotasi_papan,
          soal_b,
          Container(
            height: 280,
            child: 
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(color: Colors.pink,width: 50, height: 280,),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(color: Colors.blue,width: 50, height: 280,),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 60,
                    height: 280,
                    child: Transform.translate(
                      offset: Offset(nilai_canvas, 0),
                      child: Image.asset('assets/ball.png', width: 32, height: 32,)
                    ), 
                  ),       
                ),
              ],
            )
          ), // Bagian Canvas
          soal_a,
          papan_a
        ],
      )
    );
    return Scaffold(
      body: _menu 
    );
  }
}
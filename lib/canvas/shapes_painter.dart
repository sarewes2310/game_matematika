import 'package:flutter/material.dart';

class ShapesPainter extends CustomPainter {
  var ukuran;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint =Paint();
    paint.color = Colors.black87;
    //Mendapatkan nilai tengah
    var center = Offset(size.width / 2, size.height / 2);
    //menambahkan gambar pada canvas
    canvas.drawCircle(center, 35.0, paint);
    
    // keranjang 1 luar
    final paint2 =Paint();
    paint2.color = Colors.blue;
    //Mendapatkan nilai tengah
    var left = Offset((size.width / 2) / 3, size.height / 2);
    //menambahkan gambar pada canvas
    canvas.drawCircle(left, 55.0, paint2);
    // keranjang 1 dalam
    final paint2_1 =Paint();
    paint2_1.color = Colors.white;
    //Mendapatkan nilai tengah
    var left_1 = Offset((size.width / 2) / 3, size.height / 2);
    //menambahkan gambar pada canvas
    canvas.drawCircle(left_1, 45.0, paint2_1);
    /*
    // keranjang 2 luar
    final paint3 =Paint();
    paint3.color = Colors.pink;
    //Mendapatkan nilai tengah
    var right = Offset(((size.width / 2) / 3) * 5, size.height / 2);
    //menambahkan gambar pada canvas
    canvas.drawCircle(right, 55.0, paint3);
    // keranjang 2 dalam
    final paint3_1 =Paint();
    paint3_1.color = Colors.white;
    //Mendapatkan nilai tengah
    var right_1 = Offset(((size.width / 2) / 3) * 5, size.height / 2);
    //menambahkan gambar pada canvas
    canvas.drawCircle(right_1, 45.0, paint3_1);*/
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}
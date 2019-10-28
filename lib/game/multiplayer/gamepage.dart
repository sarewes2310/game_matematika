import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void _add_data(){
      Firestore.instance.collection('books').document()
      .setData({ 'title' : 'title', 'author' : 'author' });
    }
    return StreamBuilder(
      stream: Firestore.instance.collection('books').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
        if(snapshot.hasError){
          return new Text('Error:${snapshot.error}');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...');
            break;
          default:
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () => _add_data(),
              ),
              body: ListView(
                children: snapshot.data.documents.map((DocumentSnapshot document){
                  return new ListTile(
                    title: new Text(document['title']),
                    subtitle: new Text(document['author']),
                  );
                }).toList()
              ),
            );
        }
      },
    );
  }
}
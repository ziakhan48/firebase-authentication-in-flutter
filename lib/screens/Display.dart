import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:firebase_auth/firebase_auth.dart';


class ChatScreen extends StatefulWidget {
  static const String id ='chat_screen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;

// ignore: deprecated_member_use
  FirebaseUser loggedin;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedin = user;
        print(loggedin.email);
      }
    }
    catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Contents"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: <Widget>[
                Image.network("https://placeimg.com/500/500/any"),
                Image.network("https://placeimg.com/500/500/any"),
                Image.network("https://placeimg.com/500/500/any"),
                Image.network("https://placeimg.com/500/500/any"),
                Image.network("https://placeimg.com/500/500/any"),
                Image.network("https://placeimg.com/500/500/any"),
                Image.network("https://placeimg.com/500/500/any"),
                Image.network("https://placeimg.com/500/500/any"),
              ],
            )),
      ),
    );
  }
}
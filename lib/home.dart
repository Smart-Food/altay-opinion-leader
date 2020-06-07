import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/news/newsList.dart';

import 'login/login.dart';
import 'login/register.dart';
import 'main.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
        print("logged in user is ${loggedInUser.email}");

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigationBarScreen()),
        );
//        Firestore.instance
//            .collection('users')
//            .document(loggedInUser.uid)
//            .get()
//            .then((DocumentSnapshot ds) {
//          setState(() {
//            var fname = ds.data["fname"];
//            var lname = ds.data["lname"];
//            var phone = ds.data["phone"];
//            var email = ds.data["email"];
//          });
//          // use ds as a snapshot
//        });
      } else {
        print("user is null");
      }
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Media App"),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Color(0xFF2699FB),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Color(0xFF2699FB),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
//      body: StreamBuilder<QuerySnapshot>(
//        stream: Firestore.instance.collection('books').snapshots(),
//        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//          if (snapshot.hasError)
//            return new Text('Error: ${snapshot.error}');
//          switch (snapshot.connectionState) {
//            case ConnectionState.waiting: return new Text('Loading...');
//            default:
//              return new ListView(
//                children: snapshot.data.documents.map((DocumentSnapshot document) {
//                  return new ListTile(
//                    title: new Text(document['title']),
//                    subtitle: new Text(document['author']),
//                  );
//                }).toList(),
//              );
//          }
//        },
//      ),
    );
  }
}
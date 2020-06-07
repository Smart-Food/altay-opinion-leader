import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';

import 'data.dart';

class Add extends StatefulWidget {
  Add({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  String _inputErrorText;
  Post post;
  final TextEditingController _heading =  TextEditingController();
  final TextEditingController _description =  TextEditingController();
  final TextEditingController _area =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 50),
                  child: Icon(Icons.arrow_back_ios, color: Colors.black,),
                )
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                decoration: new InputDecoration(
                    labelText: "Заголовок",
                    errorText: _inputErrorText,
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: new BorderSide(
                            color: Colors.blueGrey
                        )
                    )
                ),
                controller: _heading,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                    color: Colors.blueGrey
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                decoration: new InputDecoration(
                    labelText: "Описание",
                    errorText: _inputErrorText,
                    fillColor: Colors.white,
                    contentPadding: new EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: new BorderSide(
                            color: Colors.blueGrey
                        )
                    )
                ),

                controller: _description,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                    color: Colors.blueGrey
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                decoration: new InputDecoration(
                    labelText: "Район",
                    errorText: _inputErrorText,
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: new BorderSide(
                            color: Colors.blueGrey
                        )
                    )
                ),
                controller: _area,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                    color: Colors.blueGrey
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: FlatButton(
                  color: Colors.blue[600],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Center(
                    child: Text("Опубликовать", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  onPressed: () {
                    setState(() {
                      posts.add(Post('https://avatars.mds.yandex.net/get-altay/2714499/2a00000171061a2a8645b485942e1e845582/XXL',
                          u2, _description.text, DateTime.now(), [], [com],true, false, 1, _area.text));

                      _area.clear();
                      _description.clear();
                    });
                  }
              ),
            ),
          ],
        )
    );
  }
}
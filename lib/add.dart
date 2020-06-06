import 'package:flutter/material.dart';
import 'package:opinionleader/post/post.dart';
import 'package:opinionleader/maps/full_map.dart';

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
  final TextEditingController _topic =  TextEditingController();
  final TextEditingController _description =  TextEditingController();
  final TextEditingController _area =  TextEditingController();
  Color topicBorder = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
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
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextFormField(
              decoration: new InputDecoration(
                  labelText: "Тема",
                  errorText: _inputErrorText,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      borderSide: new BorderSide(
                          color: topicBorder
                      )
                  )
              ),
              controller: _topic,
              keyboardType: TextInputType.text,
              style: new TextStyle(
                  color: Colors.blueGrey
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 5.0),
            child: Container(
              height: 15,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            _topic.text = _topic.text + "#Предложение ";
                            topicBorder = Colors.green;
                          });
                        },
                        child: Text("#Предложение", style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold
                        ),),
                      )
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              _topic.text = _topic.text + "#Новости ";
                              topicBorder = Colors.blue;
                            });
                          },
                          child: Text("#Новости", style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold
                          ),),
                        )
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              _topic.text = _topic.text + "#Жалоба ";
                            });
                          },
                          child: Text("#Жалоба", style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold
                          ),),
                        )
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.yellow[200],
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              _topic.text = _topic.text + "#Обратнаясвязь ";
                            });
                          },
                          child: Text("#Обратнаясвязь", style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold
                          ),),
                        )
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              _topic.text = _topic.text + "#Расписание ";
                            });
                          },
                          child: Text("#Расписание", style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold
                          ),),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextFormField(
              decoration: new InputDecoration(
                  labelText: "Описание",
                  errorText: _inputErrorText,
                  fillColor: Colors.white,
                  contentPadding: new EdgeInsets.symmetric(vertical: 60.0, horizontal: 10.0),
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
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              SizedBox(width: 30),
              CircleAvatar(
                radius: 7.8 * 3,
                backgroundColor: Colors.red,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.image),
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 7.8 * 3,
                backgroundColor: Colors.green,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 7.8 * 3,
                backgroundColor: Colors.blue,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.assessment),
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 7.8 * 3,
                backgroundColor: Colors.orange,
                child: IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FullMapPage()
                  )),
                  icon: Icon(Icons.location_on),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
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
                        u2, _description.text, DateTime.now(), [], [com],true, false, 1, _area.text, _heading.text, _topic.text));

                    _area.clear();
                    _description.clear();
                    Navigator.pop(context);
                  });
                }
            ),
          ),
        ],
      )
    );
  }
}

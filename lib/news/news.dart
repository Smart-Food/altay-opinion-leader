import 'package:flutter/material.dart';
import 'package:opinionleader/animation/fadeAnimation.dart';

import 'newsInfo.dart';

// ignore: must_be_immutable
class Item extends StatefulWidget {
  String name,
      brand,
      picture;
  double price,
      value,
      oldPrice;
  int id, num;
  Item({
    this.name, this.brand, this.price, this.value,
    this.picture, this.oldPrice, this.id, this.num=0
  });

  @override
  ItemState createState() => ItemState();
}

class ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: FadeAnimation(
            1,
            Hero(
                tag: widget.id,
                child: Material(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewsInfo()
//                          (item:
//                        Item(
//                          name: widget.name, id:widget.id, picture: widget.picture,
//                          value: widget.value, brand: widget.brand,
//                          oldPrice: widget.oldPrice, price: widget.price,)
//                        )
                    )),
                    child: Container(
                      height: 150.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Image.network(
                                        widget.picture,
                                        height: 60.0,
                                        width: 60.0,),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                widget.name,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.favorite_border,
                                                color: Colors.red,
                                                size: 20.0,
                                              )
                                            ],
                                          ),
                                          Text(
                                            widget.price.toString() + "р.",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 14.0),
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                widget.oldPrice.toString() + "р.",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12.0,
                                                    decoration: TextDecoration.lineThrough
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 75.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          children: <Widget>[
                                            FlatButton(
                                              onPressed: () {
                                                setState((){
//                                                if(cart.contains(widget)){
//                                                  widget.num += 1;
//                                                }
//                                                else {
//                                                  cart.add(widget); //update
//                                                  widget.num = 1;
//                                                }
//                                                sum += widget.price;
                                              }
                                              );},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(5.0)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Text(
                                                    "Добавить в корзину",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  ),
                )
            )
        )
    );
  }
}
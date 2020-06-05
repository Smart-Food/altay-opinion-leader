import 'package:flutter/material.dart';
import 'package:opinionleader/data.dart';
import 'package:opinionleader/main.dart';
import 'package:opinionleader/search.dart';
import 'package:opinionleader/add.dart';
import 'package:opinionleader/favorite.dart';
import 'package:opinionleader/profile.dart';

int bottomNavigationBarIndex = 0;

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        IgnorePointer(
          child: Container(
            height: 100,
            margin: EdgeInsets.only(bottom: 50),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  kBackGroundColor,
                  kBackGroundColor.withOpacity(0.01),
                ],
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: BottomBarClipper(),
          child: Container(
            height: 105,
            width: MediaQuery.of(context).size.width,
            color: kForGroundColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      setState(() {
                        bottomNavigationBarIndex = 0;
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Home()
                      ));
                      },
                      icon: Icon(
                        Icons.home,
                        size: 28,
                      ),
                      color: bottomNavigationBarIndex == 0 ? Colors.black : Colors.white
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        bottomNavigationBarIndex = 1;
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Search()
                      ));
                    },
                    icon: Icon(
                      Icons.search,
                      size: 28,
                    ),
                      color: bottomNavigationBarIndex == 1 ? Colors.black : Colors.white
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          bottomNavigationBarIndex = 2;
                        });
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Add()
                        ));
                      },
                    child: Container(
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.orange.shade400.withOpacity(0.6),
                            Colors.pink
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                            Colors.deepOrangeAccent.shade100.withOpacity(0.3),
                            offset: Offset(0, 10),
                            blurRadius: 20,
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: FittedBox(
                          child: Text('+',
                              style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white))),
                    )
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        bottomNavigationBarIndex = 3;
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Favorite()
                      ));
                    },
                    icon: Icon(
                      Icons.favorite_border,
                      size: 28,
                    ),
                      color: bottomNavigationBarIndex == 3 ? Colors.black : Colors.white
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        bottomNavigationBarIndex = 4;
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Profile()
                      ));
                    },
                    icon: Icon(
                      Icons.perm_identity,
                      size: 28,
                    ),
                      color: bottomNavigationBarIndex == 4 ? Colors.black : Colors.white
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;
    path.moveTo(0, sh * 0.35);
    path.lineTo(sw * 0.3, sh * 0.35);
    path.cubicTo(sw * 0.4, sh * 0.35, sw * 0.4, 0, sw * 0.5, 0);
    path.cubicTo(sw * 0.6, 0, sw * 0.6, sh * 0.35, sw * 0.7, sh * 0.35);
    path.lineTo(sw, sh * 0.35);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
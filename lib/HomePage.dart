import 'package:flutter/material.dart';
import 'package:sorrento/PhotoScreen.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 60, left: 30),
              width: MediaQuery.of(context).size.width / 1.8,
              color: Colors.white,
              alignment: Alignment.topLeft,
              child: Text('Francesco Fusari',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ))),
          Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Portfolio',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Sicilian',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Sicilian',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.7,
            child: Container(
              child: ListView(
                padding: EdgeInsets.only(bottom: 30),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  
                  Stack(children: <Widget>[
                    Hero(
                    tag:"PhotoTag",
                    child:
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      width: 270,
                      height: 1000,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Color.fromRGBO(253, 160, 133, 1),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color.fromRGBO(253, 160, 50, 0.7),
                              offset: Offset(0.0, 8.0),
                              blurRadius: 15.0,
                            )
                          ]),
                    )),
                    
                    Container(
                      margin: EdgeInsets.only(left: 45, top: 25),
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          image: DecorationImage(
                            image: AssetImage('assets/sun.png'),
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(253, 160, 133, 0.3),
                                BlendMode.darken),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color.fromRGBO(253, 160, 50, 0.7),
                              offset: Offset(0.0, 8.0),
                              blurRadius: 30.0,
                            )
                          ]),
                    ),
                   
                    Container(
                        margin: EdgeInsets.fromLTRB(190, 175, 0, 0),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.zoom_in,
                          color: Colors.black87,
                          size: 30,
                        )),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 250, 0, 0),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(bottom: 10, top: 30),
                              child: Text('Fujifilm XT-10, 300mm',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500))),
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Sunset',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500))),
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Catania, Sicily, IT',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500))),
                        ],
                      ),
                    ),
                   GestureDetector(
                     onTap: () {
                       Navigator.push(context, 
                       PageRouteBuilder(
                         transitionDuration: Duration(milliseconds: 600),
                         pageBuilder: (_, __, ___) => PhotoScreen()));
                     },
                   
                   child: Container(
                        margin: EdgeInsets.fromLTRB(55, 400, 0, 0),
                        width: 200,
                        height: 100,
                        
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.white,
                            )))),
                    Container(
                        margin: EdgeInsets.fromLTRB(110, 415, 0, 0),
                        child: Text('More Photos',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white))),
                  ]),
                  Stack(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 270,
                      height: 800,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: Color.fromRGBO(150, 230, 161, 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 240,
                      height: 240,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          image: DecorationImage(
                              image: AssetImage('assets/code.png'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 250, 0, 0),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(bottom: 10, top: 30),
                              child: Text('Google\'s Flutter UI kit',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500))),
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Dart Language',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500))),
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text('Mobile Apps',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500))),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(35, 400, 0, 0),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(360),
                                bottomRight: Radius.circular(360),
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          size: 50,
                          color: Colors.black87,
                        ))),
                  ]),
                  Stack(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 270,
                      height: 800,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: Color.fromRGBO(111, 166, 150, 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 240,
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: Color.fromRGBO(111, 166, 150, 1),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
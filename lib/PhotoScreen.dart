import 'package:flutter/material.dart';




class PhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        Hero(
            tag: "PhotoTag",
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(253, 160, 133, 1),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color.fromRGBO(253, 160, 50, 0.7),
                        offset: Offset(0.0, 8.0),
                        blurRadius: 15.0,
                      )
                    ]),
                child: 
                     Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 3.0),
                                blurRadius: 15.0,
                              ),
                            ],
                            image: DecorationImage(
                            image: AssetImage('assets/sun.png'),
                            
                            fit: BoxFit.cover,
                          ),
                            ),
                      )),
                      ));
                      
                     
  }
}

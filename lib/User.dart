import 'dart:io';

import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.clear,
                size: 16,
                color: Colors.black,
              ),
              onPressed: (){
                Navigator.pop(context);
              }),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 29,
                    backgroundImage: AssetImage('assets/images2.jpg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20, top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "Prasanna Hirlekar",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: IconButton(icon: Icon(Icons.more_vert, size: 20,), onPressed: null),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10, bottom: 25),
                              child: Row(
                                children: [
                                  Icon(Icons.star, size: 12),
                                  Icon(Icons.star, size: 12),
                                  Icon(Icons.star, size: 12),
                                  Icon(Icons.star, size: 12),
                                  Icon(Icons.star_border, size: 12),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25, right: 185),
                              child: Text("4/14/19", style: TextStyle(fontSize: 10),),
                            ),

                          ],
                        ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text("Tasty Food", style: TextStyle(fontSize: 14, color: Colors.black),),
            )
          ],
        ),
      ),
    );
  }
}

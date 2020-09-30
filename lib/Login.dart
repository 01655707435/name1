import 'package:flutter/material.dart';
import 'Cards.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180) , bottomRight: Radius.circular(180) ),
                color: Colors.purple,

              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 50),
                    child: Image(
                      image: AssetImage('assets/images2.jpg'),
                      fit: BoxFit.cover,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 280, left: 150),
                    child: Text(
                      "Smart Move",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 320, left: 80),
                    child: Text(
                      "get your favorite food in a single place",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.lens,
                    size: 15,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.panorama_fish_eye,
                    size: 15,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.panorama_fish_eye,
                    size: 15,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
              child: Text("By tapping Log in, you agree with our team of "),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
              child: Text("Service and Privacy Policy"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20),),
                    color: Colors.purple,
                    ),
                  height: 60,
                  width: 360,
                  child: Center(child: Text("LOGN IN WITH FACEBOOK", style: TextStyle(fontSize: 15, color: Colors.white),)),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cards()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 70),
              child: Row(
                children: [
                  Text("We don't post anything to facebook", style: TextStyle(fontSize: 15, color: Colors.black),),
                  IconButton(icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Colors.black,), onPressed: null)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

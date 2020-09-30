import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app2/Image.dart';
import 'Image.dart';
import 'Detail.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.location_on,
              size: 25,
            ),),
        title: Row(
          children: [
            Text(
              "Malad, sunder nagar",
              style: TextStyle(fontSize: 18, color: Colors.black38),
            ),
            IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: null)
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1, color: Colors.black38
            ),
          ),
          height: 800,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Images.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 340,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5, color: Colors.blue
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image(
                          image: AssetImage(Images[index].imager),
                          fit: BoxFit.cover,
                          height: 150,
                          width: 340,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17, top: 25),
                            child: Text(
                              "Kung Pao Potato",
                              style: TextStyle(fontSize: 17, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80, top: 25),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                              ),
                              child:IconButton(
                                    icon: Icon(
                                      Icons.place,
                                      size: 25,
                                    ),
                                    onPressed: null),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(Images[index].text1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 10),
                        child: Text(Images[index].text2, style: TextStyle(fontSize: 10,color: Colors.black38),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30, top: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 3, left: 3),
                                      child: Icon(
                                        Icons.star,
                                        size: 15,
                                      ),
                                    ),
                                    Text(
                                      Images[index].number,
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50, top: 5),
                                child: Text(
                                  "500+ rating",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black38),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "20-30 mins",
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "Delivery Time",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black38),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 2),
                                        child: Icon(
                                          Icons.sim_card,
                                          size: 13,
                                        ),
                                      ),
                                      Text(Images[index].cost, style: TextStyle(fontSize: 13, color: Colors.black),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, right: 25),
                                  child: Text(
                                    "Delivery Time",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20 ),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.5,color: Colors.black38
                                  )
                                ),
                                width: 100,
                                height: 32,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:3, right: 70),
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,color: Colors.green
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:3 ,right: 45),
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,color: Colors.red
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:3, right: 20),
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,color: Colors.blue
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:3, right: 0),
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,color: Colors.black
                                        ),
                                        // child: Text("5", style: TextStyle(fontSize: 5, color: Colors.white),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.green)),
                              child: GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: 100,
                                  height: 30,
                                  child: Center(
                                      child: Text(
                                    "ADD+",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(imagers: Images[index],)));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('account'),
          ),
        ],
      ),
    );
  }
}

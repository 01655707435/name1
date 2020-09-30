import 'package:flutter/material.dart';
import 'package:flutter_app2/User.dart';
import 'Image.dart';

class Detail extends StatelessWidget {
  final Imager imagers;

  Detail({Key key, this.imagers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage(imagers.imager),
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                ),
                IconButton(icon: Icon(Icons.keyboard_backspace, size: 20, color: Colors.black,),
                    onPressed: (){
                  Navigator.pop(context);
                }),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 30),
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
                  padding: const EdgeInsets.only(right: 230),
                  child: Text(imagers.text1),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 77, top: 15),
                  child: Text(imagers.text2, style: TextStyle(fontSize: 12,color: Colors.black38),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Row(
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
                                  imagers.number,
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
                                  Text(imagers.cost, style: TextStyle(fontSize: 13, color: Colors.black),),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: RaisedButton(
                          child: Container(
                            height: 20,
                            width: 100,
                            child: Text("See All reviews", style: TextStyle(
                                fontSize: 13, color: Colors.black),),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => User()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 215),
                  child: Text("Dellvering Food to", style: TextStyle(
                      fontSize: 10, color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Home (B 701,sunder nagar,malad...)",
                        style: TextStyle(
                          fontSize: 13, color: Colors.black)
                      ),
                      Text("CHANGE",
                          style: TextStyle(
                              fontSize: 13, color: Colors.green)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    width: 300,
                    height: 55,
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.ac_unit, size: 20,),
                      title: Text("Apply Promo Code", style: TextStyle(fontSize: 15),),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green
                    ),
                  width: 300,
                  height: 50,
                  child: Center(child: Text("ADD +", style: TextStyle(fontSize: 20),)),
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}

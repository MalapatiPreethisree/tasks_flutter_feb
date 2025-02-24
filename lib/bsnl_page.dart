import 'package:flutter/material.dart';

class GradientStackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // Get screen width
    double screenHeight = MediaQuery.of(context).size.height; // Get screen height
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Gradient Background
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange,
                    Colors.white], // Gradient colors
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  width: screenWidth,
                  height: 70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Good Afternoon, Prasad TNVD",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width * 0.045, // Responsive font size
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "9843321093",
                                style: TextStyle(
                                  fontSize:17 , // Responsive font size
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(height: 20,width: 70,decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(10)),child: Text("  Prepaid",style: TextStyle(color: Colors.orange),),)
                              , SizedBox(width: 170,),
                              Icon(Icons.notifications_none_outlined),
                            ],
                          )
                        ],
                      ),
                    ],

                  ),),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 120,
                  width: 600,
                  decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Centers content horizontally
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.mobiledata_off_outlined),
                          Text("-"),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Centers content horizontally
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(height: 25,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange),
                            child:
                            Text("  view pack",style: TextStyle(color: Colors.white),),
                          ),
                          SizedBox(width: 10,),
                          Container(height: 25,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange),child:
                          Text("  Recharge",style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10,top: 3),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: screenWidth,height: 25,
                  decoration: BoxDecoration(color: Colors.pink[100],borderRadius: BorderRadius.circular(6)),
                  child: Text("Uh-oh!Your plan has expired Recharge now.",style: TextStyle(color: Colors.pink,fontWeight:FontWeight.bold),),)
                ,
                SizedBox(height: 25,),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 150,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(25) ,
                    gradient: LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.white], // Gradient colors
                      begin: Alignment.topLeft, // Start position
                      end: Alignment.bottomRight, // End position
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("App Exclusive Offer",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
                          Text("Applicable on recharge above Rs.249",style: TextStyle(fontWeight:FontWeight.bold,fontSize:12)),
                          Text("Check Now",style: TextStyle(fontWeight:FontWeight.bold,fontSize:20)),
                          Text("T & C",style: TextStyle(fontWeight:FontWeight.bold,fontSize:15))
                        ],
                      ),
                      SizedBox(width: 40,),
                      Text("2",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
                      Text("% Off",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(

                  height: 250,
                  width: screenWidth,
                  color: Colors.grey[200],
                  child: GridView.builder(
                    padding: EdgeInsets.all(10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: 8, // 8 items
                    itemBuilder: (context, index) {
                      List<Map<String, dynamic>> items = [
                        {"name": "Recharge", "icon": Icons.settings},
                        {"name": "Pay bill", "icon": Icons.settings},
                        {"name": "Land line", "icon": Icons.settings},
                        {"name": "Book fibre", "icon": Icons.message},
                        {"name": "Upgrade", "icon": Icons.camera_alt},
                        {"name": "dnd", "icon": Icons.photo},
                        {"name":  "games", "icon": Icons.music_note},
                        {"name":  "Number", "icon": Icons.notifications},
                      ];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.phone_android, size: 30, color: Colors.orange),
                          ),
                          SizedBox(height: 8),
                          Text(
                            items[index]["name"], // Different names
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      );
                    },
                  ),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: GradientStackScreen()));
}

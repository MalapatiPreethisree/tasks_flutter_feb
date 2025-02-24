import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Top 30% Orange Gradient Background
          Container(
            width: double.infinity,
            height: screenHeight * 0.5, // 50% of screen height
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30), // Responsive padding
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text & icon
                        children: [
                          // Name & Phone Number Section
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Good Afternoon, Prasad TNVD",
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width * 0.045, // Responsive font size
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                      Icon(
                                      Icons.notifications_none_outlined,
                                      color: Colors.black,
                                        size: MediaQuery.of(context).size.width * 0.05,// Responsive icon size
                                    ),
                                ],
                              ),
                              SizedBox(height: 2), // Spacing between name & phone number
                              Row(
                                children: [
                                  Text(
                                    "9618566951",
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width * 0.04,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5.5), // Inner spacing
                                    decoration: BoxDecoration(
                                      color: Colors.white70, // Background color
                                      borderRadius: BorderRadius.circular(20),

                                      // Curved edges
                                    ),
                                    child: Text(
                                      "Prepaid",
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width * 0.035, // Responsive font size
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange, // Text color
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                   Container(
                          height: 130, // Fixed height
                     margin: EdgeInsets.symmetric(horizontal: 16), // Space at the sides
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color
                            borderRadius: BorderRadius.circular(15), // Curved border
                          ),
                        ),
                    Container(height: 20,color: Colors.pink[100],
                    margin:EdgeInsets.symmetric(horizontal: 16),),
                SizedBox(height: 20,),
                Container(height: 150,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), gradient: LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                    ),
                    )), // Space at the side, gradient: LinearGradient(
                  ],
                ),
            ),


          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.white, // Light background for remaining page
                ),
                Container(color: Colors.blue,)
              ],
            ),
          ),
        ],

      ),
    );
  }
}

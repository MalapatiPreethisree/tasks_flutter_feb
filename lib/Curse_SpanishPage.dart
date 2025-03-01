import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      home: CurvedScreen(),
    );
  }
}

class CurvedBackground extends StatelessWidget {
  final List<Map<String, dynamic>> gridItems = [
    {"icon": Icons.book, "title": "Basic","indtext":"2/5", "progress": 0.4, "color": Colors.orangeAccent},
    {"icon": Icons.shopping_bag, "title": "Occupations","indtext":"4/5", "progress": 0.8,"color": Colors.red},
    {"icon": Icons.chat, "title": "Conversation", "indtext":"3/5","progress": 0.6,"color": Colors.blue},
    {"icon": Icons.place, "title": "Places", "indtext":"3/5","progress": 0.6,"color": Colors.green},
    {"icon": Icons.person, "title": "Family Members", "indtext":"2/5","progress": 0.2,"color": Colors.purple},
    {"icon": Icons.fastfood_rounded, "title": "Foods", "indtext":"5/5","progress": 1.0,"color":Color(0xff0C4CBE)},
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          ClipPath(
          clipper: CurvedBackgroundClipper(),
          child: Container(
            height: 900,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.orange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
          Positioned(
              top: 110,
              left: 40,
              child: Text("Spanish", style: TextStyle(color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),)),
          Positioned(
              top: 165,
              left: 30,
              child: ElevatedButton(
            style:  ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Color(0xFFFFAD2D),
            ),
              onPressed: (){}, child: Row(
                children: [
                  Text("Begginer",style: TextStyle(fontSize: 20),),
                  SizedBox(width: 5,),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),)),
          Positioned(top:140,right:63,child: Text("43%",style: TextStyle(color:Colors.white,fontSize: 20),)),
          Positioned(top:165,right:50,child: Text("completed",style: TextStyle(color:Colors.white,fontSize: 15),)),
          Positioned(
            top: 120,
            right: 35,
            child: SizedBox(
                width: 100, // Increase width
                height: 100, // Increase height
                child: CircularProgressIndicator(
                  value: 0.4, // Example progress (0.0 - 1.0)
                  backgroundColor: Colors.white.withOpacity(0.5),
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  strokeWidth: 4,
                  // Increase thickness
                ),
              ),
            ),
          Positioned(
              top: 240,
              left: 40,
              child: Row(
                children: [
                  Icon(Icons.diamond_sharp,color: Colors.red,size: 30,),
                  SizedBox(width: 2,),
                  Icon(Icons.diamond_sharp,color: Colors.red,size: 30),
                  SizedBox(width: 10,),
                  Text("2 Mile Stones", style: TextStyle(color: Colors.white,
                      fontSize: 15,),),
                ],
              )),
    Positioned(
    top: MediaQuery.of(context).size.height * 0.35,
    left: 20,
    right: 20,
    bottom: 0, // Expands to the bottom
    child: SizedBox(
    height: MediaQuery.of(context).size.height * 0.6,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.1,
        ),
        itemCount: gridItems.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 55,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 3 , spreadRadius: .2, offset: Offset(1,2),color: Colors.grey )]
                    ),
                    child: Center(
                      child: Icon(
                        gridItems[index]["icon"],
                        size: 35,
                        color: gridItems[index]["color"],
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    gridItems[index]["title"],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height:1),
                  Text(
                    gridItems[index]["indtext"],
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  LinearProgressIndicator(
                    value: gridItems[index]["progress"],
                    backgroundColor: Colors.grey[300],
                    color: gridItems[index]["color"],
                    minHeight: 5,
                  ),
                  SizedBox(height: 5),
                ]),),);
    },),),),]);
  }
}

class CurvedBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0,300); // Start from bottom left
    path.quadraticBezierTo(
        size.width / 2, 500, size.width, 300); // Curve
    path.lineTo(size.width, 0); // Top right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
class CurvedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Allows AppBar to overlay background
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent AppBar
        elevation: 0, // Removes shadow
        title: Text("Curse",style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
        actions: [
          Padding(padding:  const EdgeInsets.only(right: 16.0),
          child:  Icon(Icons.more_vert_outlined,color: Colors.white,),)
         ]
      ),
      body: Stack(
        children: [
          CurvedBackground(),
        ],
      ),
    );
  }
}

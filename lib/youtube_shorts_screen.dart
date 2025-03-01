import "package:flutter/material.dart";
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,home:(YourScreen()));
  }
}
class YourScreen extends StatefulWidget {
  @override
  _YourScreenState createState() => _YourScreenState();
}

class _YourScreenState extends State<YourScreen> {
  int _selectedIndex = 1; 
  final List<Widget> _screens = [
    home_screen(), 
    ShortsScreen(),
    Add_screen(),
    subscription_screen(),
    library_screen(),
  ];
  void _onItemTapped(int index) {
    // if (_selectedIndex != index) {
    setState(() {
      _selectedIndex = index;
    });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Shorts",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert,color: Colors.white,), onPressed: () {}),
        ],
      ),
      body:  IndexedStack(
        index: _selectedIndex, 
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

//CustomNavigationBar
class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(backgroundColor: Colors.black,
      currentIndex: selectedIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.red, 
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 33,), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline,size: 33), label: 'Shorts'),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_sharp, size: 40), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined,size: 33), label: 'Subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined,size: 33), label: 'Library'),
      ],
    );
  }
}

//Shorts Screen
class ShortsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            "https://www.palasa.co.in/cdn/shop/articles/feey-tDnlNLK_3dk-unsplash.jpg?v=1708159210",
            fit: BoxFit.cover, // Ensures the image covers the full area
          ),
        ),
        Positioned(
          right: 16,
          bottom: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.thumb_up_alt_outlined, color: Colors.white, size: 40),
              SizedBox(height: 35),
              Icon(Icons.thumb_down_alt_outlined, color: Colors.white, size: 40),
              SizedBox(height: 35),
              Icon(Icons.comment_outlined, color: Colors.white, size: 40),
              SizedBox(height: 35),
              Icon(Icons.share_outlined, color: Colors.white, size: 40),
            ],
          ),
        ),
        Positioned(
          left: 12,
          bottom: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(2),
                  // backgroundColor: Colors.transparent,
                  backgroundColor: Colors.grey.withOpacity(0.2), // 50% transparency
                ),
                onPressed: (){}, child:Row(
                children: [
                  Icon(Icons.search_sharp,color: Colors.white,),
                  Text(" search for planthobby  ",style: TextStyle(color: Colors.white,fontSize:15),)
                ],
              ),),
              Row(
                children: [
                  Text(
                    "@ ThePlantHobby",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                    ),),
                  SizedBox(width: 3,),
                  ElevatedButton(onPressed: (){}, child: Text("Subscribe"))
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        Positioned(left: 16,
          bottom: 10,
          child:  ElevatedButton(
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(2),
              // backgroundColor: Colors.transparent,
              backgroundColor: Colors.grey.withOpacity(0.2), // 50% transparency
            ),
            onPressed: (){}, child:Row(
            children: [
              Icon(Icons.music_note_rounded,color: Colors.white,),
              Text(" sarigamapa  (ZeeTelugumovies)  ",style: TextStyle(color: Colors.white,fontSize:15),)
            ],
          ),),
        )],
    );
  }
}


//homeScreen
class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Image.network(
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/plant-sapling/c/f/k/yes-perennial-yes-rogoon-madhu-malati-plant-flower00f-ower-00e-original-imahyy7kgmzxpzyn.jpeg?q=90&crop=false",
          fit: BoxFit.cover, // Ensures the image covers the full area
        ),
      ),]
    );
  }
}

//SubscriptionScreen
class subscription_screen extends StatelessWidget {
  const subscription_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Image.network(
          "https://img.freepik.com/free-photo/vertical-shot-cute-cat-background-field_181624-56606.jpg",
          fit: BoxFit.cover, // Ensures the image covers the full area
        ),
      ),]
    );
  }
}

//Library Screen
class library_screen extends StatelessWidget {
  const library_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTidY9a2dd01P5qC2MGVy1msSkozsjx5hvQ3w&s",
          fit: BoxFit.cover, // Ensures the image covers the full area
        ),
      ),]
    );
  }
}

//Addscreen
class Add_screen extends StatelessWidget {
  const Add_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Image.network(
          "https://wallpapershome.com/images/pages/ico_v/1536.jpg",
          fit: BoxFit.cover, // Ensures the image covers the full area
        ),
      ),]
    );
  }
}

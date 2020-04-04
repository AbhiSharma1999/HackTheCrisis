import 'package:flutter/material.dart';
import 'package:hack_final/placeholders/homePlaceholder.dart';
import 'package:hack_final/placeholders/infoPlaceholder.dart';



class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return HomeView();
  }
}




class HomeView extends State<Home> {

  
 // const HomeView({Key key}) : super(key: key);

  int _currentIndex = 0;
  final List<Widget> _children = [homePlaceholderWidget(),
                                  infoPlaceholderWidget()];

  @override
  Widget build(BuildContext context) {
   // var userLocation = Provider.of<UserLocation>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('HackTheCrisis_2020'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
       currentIndex: _currentIndex, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.info),
           title: new Text('Info'),
         ),
        //  BottomNavigationBarItem(
        //    icon: Icon(Icons.person),
        //    title: Text('Profile')
        //  )
       ],
     ),

        // child: Text(
        //     'Location: Lat:${userLocation.latitude}, Long: ${userLocation.longitude}'),
      );
  }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}
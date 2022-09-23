import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trip_it/calender_screen.dart';
import 'package:trip_it/favourite_screen.dart';
import 'package:trip_it/location_screen.dart';
import 'package:trip_it/profile_screen.dart';
import 'package:trip_it/splash_screen.dart';
import 'package:trip_it/tours/tours_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
 class MainPage extends StatefulWidget {
    MainPage({Key? key,required this.token}) : super(key: key);

    String? token ;

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  int _currentIndex = 2 ;

    List<Widget> _pages = <Widget>[];

  void changeItem(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      ToursScreen(token: widget.token),
      FavouriteScreen(),
      LocationScreen(),
      CalenderScreen(),
      ProfileScreen(),
    ];
    super.initState();
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: _pages[_currentIndex],
       bottomNavigationBar: ConvexAppBar(
         items:
         [
           TabItem(icon: Image.asset('assets/images/bottomNavBar/home.png',)),
           TabItem(icon: Image.asset('assets/images/bottomNavBar/heart.png',)),
           TabItem(icon: Image.asset('assets/images/bottomNavBar/suitcase.png',)),
           TabItem(icon: Image.asset('assets/images/bottomNavBar/calendar.png',)),
           TabItem(icon: Image.asset('assets/images/bottomNavBar/avatar.png',)),
         ],
         initialActiveIndex: _currentIndex,
         backgroundColor: Colors.white,
         elevation: 0,
         onTap: changeItem,
       ),
     );
   }

}


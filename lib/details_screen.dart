import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_it/tours/tours_screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final apiImages = [
    'assets/images/details/house.png',
    'assets/images/details/mount.png',
    'assets/images/details/road.png',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: GestureDetector(
            onTap: ()
            {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ToursScreen();
                },
               ),
              );
            },
            child: Row(
              children:
              [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey[500],
                  size: 17.0,
                ),
                Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Row(
          children:
          [
            SizedBox(
              width: 100.0,
            ),
            Text(
              'Paris',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions:
        [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.grey[500],
              size: 20.0,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          SizedBox(
            height: 335,
            child: Stack(
              children:
              [
                Image.asset(
                  'assets/images/details/cover.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 100.0,
                  ),
                  child: Text(
                      'Top 10 Favourite',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 32.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 95,
                    left: 83.0,
                  ),
                  child: Text(
                      'Destination In Paris',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 32.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 127.0,

                  ),
                  child: CarouselSlider(
                   items: <Widget> [
                     Image.asset('assets/images/details/mount.png',),
                     Image.asset('assets/images/details/house.png',),
                     Image.asset('assets/images/details/road.png',),
                     ],
                    options: CarouselOptions(
                      height: 290,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 0.0,
          ),
          Center(
            child: Text(
              'Disneyland Paris',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Departure',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '23rd Oct 2017',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Duration',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '5 Days / 4 Nights',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Discover 7 world Heritage Sites in this tour.',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Fans of Mickey can visit Disneyland Paris which is located 32 km from central Paris, with connection to the suburban RER A.',
                    style: TextStyle(
                      color: Colors.grey[500],
                      height: 1.5,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 28.0,
                  ),
                  Text(
                    'Disneyland Paris has two theme parks: Disneyland (with Sleeping Beauty\'s castle) and Walt Disney Studios. Top attractions are Space Mountain, It\'s a Small World and Big Thunder Mountain.',
                    style: TextStyle(
                      color: Colors.grey[500],
                      height: 1.5,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

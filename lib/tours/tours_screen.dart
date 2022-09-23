import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:trip_it/custom_color.dart';
import 'package:trip_it/details_screen.dart';
import 'package:trip_it/tours/Places.dart';

class ToursScreen extends StatefulWidget {
   ToursScreen({Key? key,this.token}) : super(key: key);

  String? token;

  @override
  State<ToursScreen> createState() => _ToursScreenState();
}

class _ToursScreenState extends State<ToursScreen> {

  @override
  void initState() {
    super.initState();
    places();
    print('Token is : ${widget.token}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 93.0),
          child: Text(
            'TOURS',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23.0),
          ),
        ),
        actions:
        const [
           Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
                Icons.search,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Destination',
                    style: TextStyle(
                      color: CustomColor.blue,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '10 Tours Available',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                      [
                        Stack(
                          children:
                          [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 90.0,
                              width: 80.0,
                            ),
                            Image.asset('assets/images/tours/paris.png',),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 65.0,
                                  left: 8.0
                              ),
                              child: Text(
                                'Paris',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Stack(
                          children:
                          [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 90.0,
                              width: 80.0,
                            ),
                            Image.asset('assets/images/tours/india.png',),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 65.0,
                                  left: 8.0
                              ),
                              child: Text(
                                'India',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Stack(
                          children:
                          [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 90.0,
                              width: 80.0,
                            ),
                            Image.asset('assets/images/tours/newyork.png',),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 65.0,
                                  left: 8.0
                              ),
                              child: Text(
                                'New York',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Stack(
                          children:
                          [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 90.0,
                              width: 80.0,
                            ),
                            Image.asset('assets/images/tours/losangelos.png',),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 65.0,
                                  left: 8.0
                              ),
                              child: Text(
                                'Los Angelos',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            Stack(
              children:
              [
                Container(
                    color: Colors.grey[200],
                    width: 450.0,
                    height: 240.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 0,
                      bottom: 72,
                    ),
                    child: Image.asset(
                      'assets/images/tours/offer.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  ),
                SizedBox(
                  height: 231.0,
                  width: 400.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context,index) => Padding(
                      padding: const EdgeInsets.only(
                        top: 105,
                        left: 30,
                      ),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          width: 250.0,
                          height: 126.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                SizedBox(
                                  height: 10.0,

                                ),
                                Text(
                                  'Holidays',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Text(
                                  'Say yes to iconic snow Catamount,',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  'Hillsdale, New York!',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Book your holiday package today',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35.0,
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(
                                        'assets/images/tours/button.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Discover New Places',
                    style: TextStyle(
                      color: CustomColor.blue,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  SizedBox(
                    height: 343.0,
                    child:SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:
                        [
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DetailsScreen();
                                  },
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Stack(
                                  children:
                                  [
                                    Image.asset('assets/images/tours/tower.png', ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 200.0,
                                        left: 10.0,
                                      ),
                                      child: Text(
                                        'Eiffel Tower',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  'assets/images/tours/star.png',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4.8 (512 Reviews)',
                                  style: TextStyle(
                                      color: Colors.blue[700]
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text(
                                  'Paris',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DetailsScreen();
                                  },
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Stack(
                                  children:
                                  [
                                    Image.asset('assets/images/tours/cay.png', ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 200.0,
                                        left: 10.0,
                                      ),
                                      child: Text(
                                        'Parrot Cay',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  'assets/images/tours/star.png',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4.8 (512 Reviews)',
                                  style: TextStyle(
                                      color: Colors.blue[700]
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text(
                                  'Hawaii',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DetailsScreen();
                                  },
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Stack(
                                  children:
                                  [
                                    Image.asset('assets/images/tours/dame.png', ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 200.0,
                                        left: 10.0,
                                      ),
                                      child: Text(
                                        'Notre Dame',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Image.asset(
                                  'assets/images/tours/star.png',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4.8 (512 Reviews)',
                                  style: TextStyle(
                                      color: Colors.blue[700]
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                const Text(
                                  'Paris',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

   Future places() async {

     Response places = await get(
         Uri.parse("http://alcaptin.com/api/places"),
         headers: {
           "Authorization" : "Bearer ${widget.token} "
         });

     dynamic convertedJson = jsonDecode(places.body);

     if (places.statusCode == 200) {
       Places place = Places.fromJson(convertedJson);
       print('true');

     } else {
       print (convertedJson["message"]);
     }

   }
}

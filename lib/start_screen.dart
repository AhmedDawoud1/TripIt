import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trip_it/custom_color.dart';
import 'package:trip_it/login/login_screen.dart';

class StartingModel {
  final String image;
  final String title;
  final String body;
  final String body2;

  StartingModel(
    this.image,
    this.title,
    this.body,
    this.body2,
  );
}

class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var nextController = PageController();

  List<StartingModel> starting =
  [
    StartingModel(
      'assets/images/one.png',
      'Plan Your Trip',
      'Plan your trip, choose your destination.',
      'Pick the best place for your holiday.',
    ),
    StartingModel(
      'assets/images/two.png',
      'Select The Date',
      'Select the day, book your ticket. We give',
      'you the best price. We guarantied!',
    ),
    StartingModel(
      'assets/images/three.png',
      'Enjoy Your Trip',
      'Enjoy your holiday! don\'t forget to take',
      'a photo and share to the world.',
    ),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: nextController,
              onPageChanged: (index){
                if(index == starting.length - 1)
                {
                  setState(()
                  {
                    isLast = true;
                  });
                }else
                  {
                    isLast = false;
                  }
              },
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => buildStartItem(starting[index]),
              itemCount: starting.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'SKIP',
                  ),
                ),
                const SizedBox(
                  width: 80.0,
                ),
                SmoothPageIndicator(
                  effect: ColorTransitionEffect(
                    activeDotColor: CustomColor.blue,
                    dotColor: Colors.indigo.shade100,
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                    spacing: 10.0,
                  ),
                  controller: nextController,
                  count: starting.length,
                ),
                const SizedBox(
                  width: 80.0,
                ),
                TextButton(
                  onPressed: ()
                  {
                    if(isLast)
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    }else
                      {
                        nextController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }

                  },
                  child: const Text(
                    'NEXT',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStartItem(StartingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100.0,
          ),
          Center(
            child: Image.asset(
              'assets/images/Logo.png',
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Expanded(
            child: Image.asset(
              model.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            model.title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            model.body,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            model.body2,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16.0,
            ),
          ),
        ],
      );
}

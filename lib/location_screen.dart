import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 85.0),
          child: Text(
            'LOCATION',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23.0),
          ),
        ),
      ),
      drawer: SizedBox(
        width: 400.0,
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50.0,
                horizontal: 16.0
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 335.0
                  ),
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                          builder: (context) {
                            return const LocationScreen();
                          },
                        ),
                      );
                    },
                      child: Image.asset(
                        'assets/images/drawer/cancel.png',
                      ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80.0),
                    child: Image.asset(
                      'assets/images/eliza.jpg',
                      width: 120.0,
                      height: 120.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Elizabeth Olsen',
                  style:  TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Elizabeth_Olsen@gmail.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  height: 28.0,
                ),
                Row(
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('assets/images/drawer/red.png',),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 6.0,
                            left: 8.0,
                          ),
                          child: Image.asset('assets/images/drawer/bell.png',),
                        ),

                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    const Text(
                      'Notification',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      width: 200.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('assets/images/drawer/sky.png',),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 9.0,
                            left: 5.0,
                          ),
                          child: Image.asset('assets/images/drawer/surface.png',),
                        ),

                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    const Text(
                      'Tours',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      width: 245.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('assets/images/drawer/violet.png',),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            left: 10.0,
                          ),
                          child: Image.asset('assets/images/drawer/pin.png',),
                        ),

                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    const Text(
                      'Location',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      width: 225.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('assets/images/drawer/blue.png',),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 7.0,
                            left: 7.0,
                          ),
                          child: Image.asset('assets/images/drawer/global.png',),
                        ),

                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    const Text(
                      'Language',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      width: 215.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('assets/images/drawer/bluea.png',),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 7.0,
                            left: 6.0,
                          ),
                          child: Image.asset('assets/images/drawer/friend.png',),
                        ),

                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    const Text(
                      'Invite Friends',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      width: 187.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14.0,
                ),
                SizedBox(
                  width: 345.0,
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey[350],
                  ),
                ),  //Divider
                const SizedBox(
                  height: 14.0,
                ),
                Row(
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('assets/images/drawer/yellow.png',),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 7.0,
                            left: 8.0,
                          ),
                          child: Image.asset('assets/images/drawer/headset.png',),
                        ),

                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    const Text(
                      'Help Center',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      width: 200.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('assets/images/drawer/green.png',),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 7.0,
                            left: 7.0,
                          ),
                          child: Image.asset('assets/images/drawer/settings.png',),
                        ),

                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    const Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      width: 227.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('assets/images/drawer/grey.png',),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            left: 9.0,
                          ),
                          child: Image.asset('assets/images/drawer/logout.png',),
                        ),

                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    const Text(
                      'Log Out',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      width: 231.0,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
                bottom: 8,
              ),
              child: SizedBox(
                width: 360,
                child: Image.asset(
                  'assets/images/location/usa.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
                bottom: 8,
              ),
              child: SizedBox(
                width: 360,
                child: Image.asset(
                  'assets/images/location/france.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
                bottom: 8,
              ),
              child: SizedBox(
                width: 360,
                child: Image.asset(
                  'assets/images/location/india.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
                bottom: 8,
              ),
              child: SizedBox(
                width: 360,
                child: Image.asset(
                  'assets/images/location/england.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 16,
                bottom: 8,
              ),
              child: SizedBox(
                width: 360,
                child: Image.asset(
                  'assets/images/location/australia.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

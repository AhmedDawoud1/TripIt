import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:trip_it/custom_color.dart';
import 'package:trip_it/login/login_response.dart';
import 'package:trip_it/main.dart';
import 'package:trip_it/register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  String email = "a@a.com";
  String password = "123456";
  bool isLoading = false;
  bool isPassword = true;

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient:  const LinearGradient(
                colors: [CustomColor.blue, CustomColor.violet],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 1.0],
                tileMode: TileMode.clamp
            ),
            borderRadius: BorderRadius.circular(55.0),
          ),
          child: Column(
            children:
            [
              const SizedBox(
                height: 100.0,
              ),
              Center(
                child: Image.asset(
                  'assets/images/white.png',
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 400,
                width: double.infinity,
                child: Stack(
                  children:
                  [
                    Container(
                      height: 400,
                      margin: const EdgeInsets.symmetric(horizontal: 55),
                      decoration: BoxDecoration(
                          color: const Color(0xff8173E0),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 385,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 370,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children:
                              [
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0,left: 30.0),
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 16.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0)),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        hintText: 'Email',
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            !value.contains("@")) {
                                          return "Enter Valid Email";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0,left: 30.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0)),
                                    child: TextFormField(
                                      controller: controller,
                                      keyboardType: TextInputType.text,
                                      decoration: const InputDecoration(
                                        hintText: 'Password',
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Enter Valid Password";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 0.0,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 220.0,
                                    ),
                                    Stack(
                                      children: [
                                        TextButton(
                                          onPressed:()
                                          {

                                          },
                                          child: const Text(
                                            'Forgot password?',
                                            style: TextStyle(
                                              color: CustomColor.blue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                Container(
                                  width: 300.0,
                                  decoration: BoxDecoration(
                                    color: CustomColor.blue,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: isLoading ? Center(
                                    child: CircularProgressIndicator(),
                                  ) : MaterialButton(
                                    onPressed: ()
                                    {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        login();
                                      }
                                    },
                                    child: const Text(
                                      'Sign in',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 130.0,
              ),
              Center(
                child: Row(
                  children:
                  [
                    const SizedBox(
                      width: 135.0,
                    ),
                    Image.asset('assets/images/facebook.png'),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Image.asset('assets/images/google.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children:
                [
                 const SizedBox(
                    width: 115.0,
                  ),
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  TextButton(
                    onPressed: ()
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterScreen();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future login() async {
    setState(() {
      isLoading = true;
    });

    Response loginResponse = await post(
        Uri.parse("http://alcaptin.com/api/login"),
        body: {
          "email": email ,
          "password": password,
        });

    dynamic convertedJson = jsonDecode(loginResponse.body);

    if (loginResponse.statusCode == 200) {
      LoginResponse login = LoginResponse.fromJson(convertedJson);
      print(login.data?.accessToken);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return MainPage(token: login.data?.accessToken);
          },
        ),
      );
    } else {
      print (convertedJson["message"]);
    }
    setState(() {
      isLoading = false;
    });
  }
}
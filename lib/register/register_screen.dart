import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:trip_it/custom_color.dart';
import 'package:trip_it/login/login_screen.dart';
import 'package:trip_it/main.dart';
import 'package:trip_it/register/register_response.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();
  String firstName = "ahmed";
  String lastName = "elshora";
  String email = "dawouda1212@gmail.com";
  String password = "123456789";
  String age = "30";
  String gender = "male";
  bool isLoading = false;
  bool isPassword = true;
  bool checkBox = false;

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
              const SizedBox(
                height: 40.0,
              ),
              Container(
                height: 500,
                width: double.infinity,
                child: Stack(
                  children:
                  [
                    Container(
                      height: 500,
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
                        height: 485,
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
                      child: Form(
                        key: _formKey,
                        child: Container(
                          height: 470,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children:
                              [
                                const SizedBox(
                                  height: 30.0,
                                ),
                                const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0,left: 30.0),
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0)),
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: const InputDecoration(
                                        hintText: 'Name',
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0,left: 30.0),
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 8.0),
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
                                    margin: const EdgeInsets.only(bottom: 8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0)),
                                    child: TextFormField(
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
                                  height: 5.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0,left: 30.0),
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 4.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0)),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: 'Phone Number',
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children:
                                  [
                                    const SizedBox(
                                      width: 16.0,
                                    ),
                                    Checkbox(
                                      value: checkBox,
                                      onChanged: (val)
                                      {
                                        setState(() {
                                          checkBox = val! ;
                                        });
                                      },
                                    ),
                                    const Text(
                                        'I agree the',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed:()
                                      {

                                      },
                                      child: const Text(
                                        'Terms & Conditions',
                                        style: TextStyle(
                                          color: CustomColor.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  width: 300.0,
                                  decoration: BoxDecoration(
                                    color: CustomColor.blue,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: isLoading? const Center(
                                    child: CircularProgressIndicator(),
                                  ): MaterialButton(
                                    onPressed: ()
                                    {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        register();
                                      }
                                    },
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30.0,
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
              SizedBox(
                height: 30.0,
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
                    'Already have an account?',
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
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
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


  Future register() async {
    setState(() {
      isLoading = true;
    });

    Response registerResponse = await post(
        Uri.parse("http://alcaptin.com/api/register"),
        body: {
          "first_name":firstName,
          "last_name": lastName,
          "email": email ,
          "password": password,
          "age":age,
          "gender": gender,
        });

    dynamic convertedJson = jsonDecode(registerResponse.body);
    if (registerResponse.statusCode == 200) {
      RegisterResponse register = RegisterResponse.fromJson(convertedJson);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return MainPage(token: register.data?.accessToken);
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

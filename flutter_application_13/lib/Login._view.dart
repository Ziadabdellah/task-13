import 'package:flutter/material.dart';
import 'package:flutter_application_13/Register_view.dart';
import 'package:flutter_application_13/colors.dart';
import 'package:flutter_application_13/home_view.dart';
import 'package:flutter_application_13/style.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  var formkey = GlobalKey<FormState>();

  bool isNotvisabi = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Appcolors.app,
          title: Center(
            child: Text(
              'Z A  Chat',
              style: getTitleStyle(),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/abbb.jpg',
                        width: 170,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Log in to your account',
                      style: getTitleStyle(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your account';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          hintText: 'ZA22@gmail.com',
                          suffixIconColor: Colors.black,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Appcolors.z),
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Appcolors.z),
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isNotvisabi,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isNotvisabi = !isNotvisabi;
                                });
                              },
                              icon: Icon(isNotvisabi
                                  ? Icons.remove_red_eye_rounded
                                  : Icons.visibility_off)),
                          label: Text(
                            ' Password',
                            style: TextStyle(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Appcolors.z),
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Appcolors.z),
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Appcolors.app,
                            ),
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                }
                              }
                            },
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'I don"t have an account',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        TextButton(
                            onPressed: () {
                              {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => Register_view()));
                              }
                            },
                            child: Text(
                              'Create an account ',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 19),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/////////
///
///
///
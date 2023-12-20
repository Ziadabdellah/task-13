import 'package:flutter/material.dart';
import 'package:flutter_application_13/Login._view.dart';
import 'package:flutter_application_13/colors.dart';
import 'package:flutter_application_13/style.dart';

class Register_view extends StatefulWidget {
  const Register_view({super.key});

  @override
  State<Register_view> createState() => _Register_viewState();
}

class _Register_viewState extends State<Register_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Appcolors.app,
          title: Center(
            child: Text(
              'Z   Chat',
              style: getTitleStyle(),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/as.jpg',
                      width: 170,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create an account new',
                    style: getTitleStyle(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.black,
                        ),
                        hintText: 'Name',
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.black,
                        ),
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
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Appcolors.app,
                          ),
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I have an account',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {
                            {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => login_view()));
                            }
                          },
                          child: Text(
                            'Login ',
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
    );
  }
}

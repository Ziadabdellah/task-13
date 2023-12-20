import 'package:flutter/material.dart';
import 'package:flutter_application_13/Login._view.dart';

void main(List<String> args) {
  runApp(Mas());
}

class Mas extends StatelessWidget {
  const Mas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home:login_view(),
    );
    
  }
}

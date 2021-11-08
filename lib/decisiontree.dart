import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:house_rent/login/login.dart';
import 'package:house_rent/screen/home/home.dart';

class DecisionTree extends StatefulWidget {
  DecisionTree({Key? key}) : super(key: key);

  @override
  _DecisionTreeState createState() => _DecisionTreeState();
}

class _DecisionTreeState extends State<DecisionTree> {
  User? user;
  onRefresh(userCred) {
    setState(() {
      user = userCred;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return LoginPage(
        onSignIn: (userCred) => onRefresh(userCred),
      );
    } else {
      return HomePage(
        onSignOut: (userCred) => onRefresh(userCred),
      );
    }
  }
}

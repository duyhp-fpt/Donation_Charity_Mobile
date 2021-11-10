import 'package:flutter/material.dart';
import 'package:house_rent/model/user.dart';
import 'package:house_rent/screen/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:house_rent/services/user_api.dart';

class LoginPage extends StatefulWidget {
  final Function(User?) onSignIn;
  LoginPage({required this.onSignIn});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPhoneNum = TextEditingController();

  String error = '';
  bool isLogin = true;
  var obs = true;
  DonatorInfo? donator;
  Future<DonatorInfo>? donatorFuture;

  Future<void> loginUser() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _controllerEmail.text, password: _controllerPassword.text);
      print(userCredential.user);
      widget.onSignIn(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.message!.contains('is empty')) {
        setState(() {
          error = 'email or password can not be empty !';
        });
      } else if (e.message!.contains('badly formatted')) {
        setState(() {
          error = 'email is invalid';
        });
      } else if (e.message!.contains('is invalid')) {
        setState(() {
          error = "wrong password";
        });
      }
      // setState(() {
      //   error = e.message!;
      // });
    }
  }

  Future<void> createUser() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _controllerEmail.text, password: _controllerPassword.text);
      userCredential.user!.updateDisplayName(_controllerName.text);
      // userCredential.user!.updatePhoneNumber(_controllerPhoneNum);
      print(userCredential.user!);
      donator = DonatorInfo(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
        name: _controllerName.text,
        phoneNumber: _controllerPhoneNum.text,
        roleId: 3,
        address: 'Đồng Nai',
        uid: userCredential.user!.uid,
      );
      print(donator.toString());
      // UserInfo userInfo = ;
      setState(() {
        donatorFuture = UserApi().createUser(donator!);
      });
      widget.onSignIn(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.message!.contains('is empty')) {
        setState(() {
          error = 'some fields is missing !';
        });
      } else if (e.message!.contains('badly formatted')) {
        setState(() {
          error = 'email is invalid';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: new Text('Login'),
      //   backgroundColor: Colors.blue[200],
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          height: double.infinity,
          constraints: BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  // width: 200,
                  // height: 200,
                  // padding: EdgeInsets.all(15),
                  // child: FlutterLogo(),
                  child: Image.asset(
                    ('assets/images/logoApp.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: TextFormField(
                    controller: _controllerEmail,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                      child: TextFormField(
                        controller: _controllerPassword,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        obscureText: obs,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.blue[300],
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          obs = !obs;
                        });
                      },
                      child: Text(
                        'Show',
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: isLogin ? false : true,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: TextFormField(
                      controller: _controllerName,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: isLogin ? false : true,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: TextFormField(
                      controller: _controllerPhoneNum,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        labelText: 'PhoneNumber',
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  error,
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: RaisedButton(
                      onPressed: () {
                        isLogin ? loginUser() : createUser();
                      },
                      color: Colors.blue[200],
                      child: Text(isLogin ? 'Sign In' : 'Create User',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
                Container(
                  height: 130,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: Text(
                      isLogin
                          ? 'New User? Sign Up'
                          : 'Already have? Login now !',
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

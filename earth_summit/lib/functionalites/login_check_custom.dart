import 'dart:async';

import 'package:earthsummit/app_home.dart';
import 'package:earthsummit/functionalites/internent_connection_check_custom.dart';
import 'package:earthsummit/pages/home_page.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCheckCustom extends StatefulWidget {
  const LoginCheckCustom({super.key});

  @override
  State<LoginCheckCustom> createState() => _LoginCheckCustomState();
}

class _LoginCheckCustomState extends State<LoginCheckCustom> {
  // Future<bool?> _checkLogin() async {
  //   await SharedPreferences.getInstance().then((value) => value.getBool('login'));
  // }

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<bool> _isLoggedIn;

  @override
  void initState() {
    super.initState();
      _isLoggedIn = _prefs.then((SharedPreferences prefs) {
          print("The returned  value is ${prefs.getBool('login') ?? false}");
        return prefs.getBool('login') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {

        if (snapshot.connectionState ==  ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: TextStyle(fontSize: 18),
              ),
            );
          } else if (snapshot.hasData && snapshot.data == true) {
            return MyAppHome();
          } else if (snapshot.hasData && snapshot.data == false) {
            return InternetConnectionCheckCustom();
          }
          else  {
            print("No snapshot.hasData is false");
            return Center(child: CircularProgressIndicator());
          }
        }
        else{

          print("Connection Failure during Login Check");
          return Center(child: CircularProgressIndicator());
        }

      },
      initialData: Center(child: CircularProgressIndicator()),
      future: _isLoggedIn,
    );
  }
}

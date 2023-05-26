import 'dart:async';

import 'package:earthsummit/pages/login_screen.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetConnectionCheckCustom extends StatefulWidget {
  const InternetConnectionCheckCustom({Key? key}) : super(key: key);

  @override
  State<InternetConnectionCheckCustom> createState() =>
      _InternetConnectionCheckCustomState();
}

class _InternetConnectionCheckCustomState
    extends State<InternetConnectionCheckCustom> {

  late StreamSubscription subscription;
  bool isConnected = false;

   @override
  void initState() {
    super.initState();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // if(result!=ConnectivityResult.none){
      //   setState(
      //     () async {
      //         isConnected = await InternetConnectionChecker().hasConnection;
      //       }
      //   );
      // }

      setState(
              () {
            isConnected = result != ConnectivityResult.none;
          }
      );
    });

  }



  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    
          if(isConnected)
            return LoginScreen();
          else
            return Scaffold(
              appBar: AppBar(
                title: const Text("Earth Summit"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/no_internet_error.png",
                      scale: .4,
                    ),
                  ],
                ),
              ),
            );
  }
}



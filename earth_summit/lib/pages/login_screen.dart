import 'package:earthsummit/app_home.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? id = '';
  final _formKey = GlobalKey<FormState>();

  void _submitForm() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      // Call a function to check if the entered ID is valid
      _checkID();
    }
  }

  Future<DocumentSnapshot> _getSnapshot() async {
    
    return await FirebaseFirestore.instance
        .collection('registrations')
        .doc(id)
        .get();
  }

  void _checkID() {
    _getSnapshot().then((documentSnapshot) => {
          if (documentSnapshot.exists)
            {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Login Successful'),
                    // content: const Text('Invalid ID. Please try again.'),
                    actions: [
                      ElevatedButton(
                        child: const Text('OK'),
                        onPressed: () {
                          _login();
                          Navigator.of(context).pop();
                          Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyAppHome()),
                        );
                        },
                      ),
                    ],
                  );
                },
              )

              // ID exists, proceed to home screen
            }
          else
            {
              // ID does not exist, show error message
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: const Text('Invalid ID. Please try again.'),
                    actions: [
                      ElevatedButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              )
            }
        });
  }

  Future<void> _login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('login', true);
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 120.0, left: 15.0, right: 15.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/icons/tooshort_logo_earth_summit.png"),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Enter Summit ID',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)))),
                      validator: (value) {
                        if (value == null && value!.isEmpty) {
                          return 'Please enter ID';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        id = value;
                      },
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

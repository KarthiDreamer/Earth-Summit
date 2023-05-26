// import 'package:earthsummit/pages/contact_page.dart';
import 'package:earthsummit/functionalites/login_check_custom.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase/firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:dynamic_color/dynamic_color.dart';


Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      const MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static final _defaultLightColorScheme =
  ColorScheme.fromSwatch(primarySwatch: Colors.blue);

  static final _defaultDarkColorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.blue, brightness: Brightness.dark);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  @override
  void initState(){
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (lightColorScheme, darkColorScheme){
        return MaterialApp(
          title: 'Earth Summit',
          theme: ThemeData(
            colorScheme: lightColorScheme ?? MyApp._defaultLightColorScheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: darkColorScheme ?? MyApp._defaultDarkColorScheme,
            useMaterial3: true,
          ),
          home: LoginCheckCustom(),
        );
      }
    );
  }
}


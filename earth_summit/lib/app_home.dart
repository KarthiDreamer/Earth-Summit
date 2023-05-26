import 'package:dynamic_color/dynamic_color.dart';
import 'package:earthsummit/functionalites/login_check_custom.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/about_page.dart';
import 'pages/speaker_page.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';

var selectedindex = 0;
String appbartitle = "Home";

class MyAppHome extends StatefulWidget {
  const MyAppHome({super.key});

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {

  int _selectedindex = 0;
  static String appbartitle = "Home";

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const AboutPage(),
    const SpeakerPage(),
    const SchedulePage(),
    const Text('Index 5: Chat'),

  ];

  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('login', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).canvasColor,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                ),
                child: Text("Earth Summit 2023",
                    style: TextStyle(color: Colors.white, fontSize: 25))),
            DrawerListTile(
                titleText: "Home", index: 0, appbartitle: appbartitle),
            DrawerListTile(
                titleText: "About", index: 1, appbartitle: appbartitle),
            DrawerListTile(
                titleText: "Speakers", index: 2, appbartitle: appbartitle),
            DrawerListTile(
                titleText: "Schedule", index: 3, appbartitle: appbartitle),
            DrawerListTile(
                titleText: "Contact Us", index: 4, appbartitle: appbartitle),
            DrawerListTile(
                titleText: "Chat", index: 5, appbartitle: appbartitle),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor.harmonizeWith(Theme.of(context).colorScheme.primary),
        centerTitle: true,
        title: Text(appbartitle, style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () {
              _logout();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginCheckCustom()
                  )
                );
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedindex),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: Theme.of(context).canvasColor,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedindex = index;
          });
          if (index == 0) {
            appbartitle = "Home";
          } else if (index == 1) {
            appbartitle = "About The Event";
          } else if (index == 2) {
            appbartitle = "Event Speakers";
          } else if (index == 3) {
            appbartitle = "Event Schedule";
          } else if (index == 4) {
            appbartitle = "Chat";
          }
        },
        selectedIndex: _selectedindex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.info_outline_rounded),
            selectedIcon: Icon(Icons.info),
            label: 'About',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            selectedIcon: Icon(Icons.person_2),
            label: 'Speakers',
          ),
          NavigationDestination(
            icon: Icon(Icons.schedule_outlined),
            selectedIcon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            selectedIcon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatefulWidget {
  final String titleText;
  final int index;
  final String appbartitle;
  const DrawerListTile(
      {Key? key,
      required this.titleText,
      required this.index,
      required this.appbartitle})
      : super(key: key);

  @override
  State<DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.titleText),
      onTap: () {
        setState(() {
          selectedindex = widget.index;
          appbartitle = widget.appbartitle;
        });
        Navigator.pop(context);
      },
      textColor: Colors.white,
    );
  }
}

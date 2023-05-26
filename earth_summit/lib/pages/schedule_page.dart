import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  // final String title = "EVENT SCHEDULE";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text("A step forward towards conserving the environment on ",textAlign: TextAlign.center,),
          const Text("World Environment Day",textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 12),child: Row(
            children: [
              Column(
                children: const [
                  Text("8 AM Onwards",textAlign: TextAlign.start,style: TextStyle(color: Color.fromARGB(255, 130, 126, 126))),
                  Text("Registration Starts"),
                ],
              ),
            ],
          ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // Text(title),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 15),
                child: Text("9:30 AM", style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/1.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Introduction - Mr Balakumaran Thangavel"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Indian Head - CSR, Cognizant"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("9:45 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/2.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Presential Address - Shri Shankar Vanavarayar"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                      "Managing Director - Confideration of Indian Industries ( CII ), Joint Corresspondent - Kumaraguru Institutions"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/3.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Context Setting - Mr Saravanan Chandrasekaran"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("General Manager - Kumaraguru Institutions"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/4.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Master Class - Mr Hari Prasad"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Founder - Beyound Sustainability"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/schedule/refreshment.jpeg')),
                title: Text("Refreshments"),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/6.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Session on Waste Management - Mrs Sangeetha Subash"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                      "Manager - Siruthuli\nMr Sathish Balaji\nManager - Restoring Nature\nMrs Aparna\nManager - Robert Bosch"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/7.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Session on Biodiversity - Mr Boominathan"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                      "Manager - WWF\nMr Bharthidasan\nManager - Arulagam Nursery"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/schedule/lunch.jpg')),
                // Image.asset('assets/schedule/lunch.jpg'),
                title: Text("Networking Lunch"),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/8.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Master Class - Mr Girish Earthonomics"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("Mrs Nivetha\nManager - Bliss Pads\nEcoline"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/9.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Session on Energy Efficient Optimization - Mr X"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                      "Manager - Clime Up\nMr Y\nManager - Recharka\nMrs Z\nManager - Yellow Bags"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/speakers/10.jpg')),
                title: Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 2),
                  child: Text("Session on Water Management - Mr Selvaraj P K"),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                      "Manager - Kowshika Neerkarangal\nMrs Sindhuja\nManager - WRI\nMr Krishnaswamy\nManager - Siruthuli\nMr Ram Sundhar\nFaculty - KCT"),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 11,top: 12,bottom: 5),
                child: Text("10:00 AM", style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color.fromARGB(255, 130, 126, 126))),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/schedule/refreshment.jpeg')),
                title: Text("Refreshments"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

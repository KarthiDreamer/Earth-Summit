import 'package:flutter/material.dart';

class SpeakerPage extends StatelessWidget {
  const SpeakerPage({Key? key}) : super(key: key);

  final List<String> speakerName = const ["Balakumar Thangavelu","Shri Shankar Vanavarayar","Mr Saravanan Chandrasekaran","Mr Hari Prasad"];
  final List<String> speakerPosition = const ["India Head - CSR, Cognizant","Managing Director - CII\nJoint Corresspondent - Kumaraguru Institutions","General Manager - Kumaraguru Institutions","Founder - Beyound Sustainability"];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25,right:25),
        child: Column(children: [

          CustomCard(speaker_name: speakerName[0], speaker_position: speakerPosition[0], image_path: 'assets/speakers/1.jpg'),
          CustomCard(speaker_name: speakerName[1], speaker_position: speakerPosition[1], image_path: 'assets/speakers/2.jpg'),
          CustomCard(speaker_name: speakerName[2], speaker_position: speakerPosition[2], image_path: 'assets/speakers/3.jpg'),
          CustomCard(speaker_name: speakerName[3], speaker_position: speakerPosition[3], image_path: 'assets/speakers/4.jpg'),


        ]),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key,required this.speaker_name,required this.speaker_position,required this.image_path}) : super(key: key);

  final String speaker_name;
  final String speaker_position;
  final String image_path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(image_path),
              borderRadius: BorderRadius.circular(10),
            ),
            SizedBox(height: 5),
            Text(speaker_name),
            Text(speaker_position),
          ],
        ),
        color: Theme.of(context).cardColor,
      ),
    );
  }
}

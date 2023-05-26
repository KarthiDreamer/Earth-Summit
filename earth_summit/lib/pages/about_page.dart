import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  // static const String title = "About The Event";
  static const String body1 =
      "Welcome to the website of Earth Summit 23, the conference on environmental sustainability and climate change. Scheduled to take place from 5th June 2023, Earth Summit 23 is a platform where leaders, experts, and activists will come together to discuss and create solutions for the pressing environmental issues that our planet is facing.";
  static const String body2 =
      "\nThe theme of Earth Summit 23 is Solutions to plastic pollution, which highlights the importance of collective action and cooperation to tackle the environmental challenges that affect us all. The event will feature a wide range of discussions, workshops, and seminars on topics such as climate change, biodiversity loss, sustainable development, and more.";
  static const String body3 =
      "\nAs a participant in Earth Summit 23, you will have the opportunity to engage with some of the foremost experts on environmental sustainability and climate change. You will also be able to network with like-minded individuals and organizations from around , share your own ideas and insights, and collaborate on innovative solutions to the environmental issues we face.";
  static const String body4 =
      "\nEarth Summit 23 will also feature a number of high-profile keynote speakers, including leaders, environmental activists, and renowned experts in the field. Whether you are a student, a researcher, a policymaker, or an industry leader, Earth Summit 23 is the perfect platform to learn, engage, and collaborate on creating a sustainable future for all. Join us in June 2023 to be a part of this  event and make a difference for the planet.";
  static const String whereTitle = "WHERE";
  static const String whereBody =
      "\nKumaraguru College of Technology,\nCoimbatore";
  static const String whenTitle = "WHEN";
  static const String whenBody = "Monday\nJune 5";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 3),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const SelectableText(
                body1,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SelectableText(
                body2,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SelectableText(
                body3,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SelectableText(
                body4,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: const [
                      SelectableText(
                        whereTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SelectableText(
                        whereBody,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      SelectableText(
                        whenTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SelectableText(
                        whenBody,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

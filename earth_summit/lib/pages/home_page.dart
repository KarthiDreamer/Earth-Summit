import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String earth = "EARTH";
  final String summit = "SUMMIT";
  final String year = "2023";
  final String date = "June 5";
  final String venue = "Kumaraguru College of Technology Coimbatore";
  final String quote =
      """A step forward towards conserving the environment on World Environment Day""";
  final TextStyle heading =
      const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(earth, style: heading),
        Text(summit, style: heading),
        Text(year, style: heading),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(date, style: const TextStyle(fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            venue,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
            padding:
                const EdgeInsets.only(top: 30),
            child: Text(
              quote,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                decorationColor: Colors.red,
                decorationThickness: 2,
              ),
            ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ContactPage  extends StatelessWidget {
  const ContactPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      body: Column(
        children: const [
          Text("Kumaraguru College of Technology"),
          Text("Saravanampatti, Coimbatore"),
          Text("Tamil Nadu, India"),
          Text("Phone: +91 9363327359"),
          Text("Email: earthsummit@kct.ac.in,contact@earthsummit2023.in"),
        ]
      ),
    );
  }
}

// class ContactAnimatedPage extends StatefulWidget {
//   const ContactAnimatedPage({super.key});

//   @override
//   State<ContactAnimatedPage> createState() => _ContactAnimatedPageState();
// }

// class _ContactAnimatedPageState extends State<ContactAnimatedPage> with SingleTickerProviderStateMixin{
//   late AnimationController _controller;
//   late Animation<Offset> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     )..forward();
//     _animation = Tween<Offset>(
//       begin: const Offset(0, 1),
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeOut,
//     ));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Contact Us"),
//       ),
//       body: SlideTransition(
//         position: _animation,
//         child: Column(
//           children: const [
//             Text("Kumaraguru College of Technology"),
//             Text("Saravanampatti, Coimbatore"),
//             Text("Tamil Nadu, India"),
//             Text("Phone: +91 9363327359"),
//             Text("Email: earthsummit@kct.ac.in,contact@earthsummit2023.in"),
//           ],
//         ),
//       ),
//     );
//   }
// }
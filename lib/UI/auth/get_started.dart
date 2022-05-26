import 'package:event_app/UI/auth/login_screen.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/trees.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ));
              },
              child: button(btnText: 'Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:event_app/UI/auth/verification_code.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:event_app/UI/widgets/textfield.dart';
import 'package:flutter/material.dart';

class RestorePassword extends StatelessWidget {
  const RestorePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                child: Image.asset('assets/images/restore2.png'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                'Restore your password',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 3,
                  letterSpacing: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                'Enter your email to reset your password',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            textFields(
              text: 'User@gmail.com',
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const VerificationCode();
                    },
                  ));
                },
                child: button(btnText: 'Continue')),
          ],
        ),
      ),
    );
  }
}

import 'package:event_app/UI/auth/create_new_password.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:event_app/UI/widgets/verification_box.dart';
import 'package:flutter/material.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xfffafafa),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/mobilescreen2.png'),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Verification Code',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Enter 6 digit code that you received on your email',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerificationBox(boxText: '0'),
                VerificationBox(boxText: '0'),
                VerificationBox(boxText: '0'),
                VerificationBox(boxText: '0'),
                VerificationBox(boxText: '0'),
                VerificationBox(boxText: '0'),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const CreateNewPassword();
                    },
                  ));
                },
                child: button(btnText: 'Continue')),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'if you dont receive the email in few minutes please check your spam folder or click here  to receive another code',
            ),
          ],
        ),
      ),
    );
  }
}

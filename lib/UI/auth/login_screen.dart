import 'package:event_app/UI/auth/sign_up.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:event_app/UI/widgets/textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/verification_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'Access Account',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            textFields(
              text: 'user@gmail.com',
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Password'),
            const SizedBox(
              height: 8,
            ),
            textFields(
              isPasswordField: true,
              suffixIcon: Icons.remove_red_eye,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'Forgot your password ?',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            button(btnText: 'Sign in'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'i don\'t have account',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SignUp();
                      },
                    ));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xff5AB964),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

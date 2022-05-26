import 'package:event_app/UI/auth/restore_password.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:event_app/UI/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 1,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Create New Account',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Name',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              textFields(
                text: 'John Doe',
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              textFields(
                text: 'user@gmail.com',
              ),
              const SizedBox(
                height: 12,
              ),
              const Text('Phone number'),
              const SizedBox(
                height: 7,
              ),
              textFields(
                text: '783929',
              ),
              const SizedBox(
                height: 12,
              ),
              const Text('Password'),
              const SizedBox(
                height: 7,
              ),
              textFields(
                text: '38hdk37',
                isPasswordField: true,
                suffixIcon: Icons.remove_red_eye,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text('Confirm Password'),
              const SizedBox(
                height: 7,
              ),
              textFields(
                text: 'Re type password',
                suffixIcon: Icons.remove_red_eye,
                isPasswordField: true,
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return RestorePassword();
                      },
                    ));
                  },
                  child: button(btnText: 'Sign Up')),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'I Already have an account',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'SignIn',
                    style: TextStyle(
                      color: Color(0xff5AB964),
                      fontSize: 16,
                    ),
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

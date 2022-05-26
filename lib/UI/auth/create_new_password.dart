import 'package:event_app/UI/auth/location_access.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:event_app/UI/widgets/textfield.dart';
import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

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
            Center(
              child: Container(
                child: Image.asset('assets/images/newpassword2.png'),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Create New Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Enter your new password',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'New Password',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            textFields(
              isPasswordField: true,
              text: 'sample password',
              suffixIcon: Icons.remove_red_eye,
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            textFields(
              isPasswordField: true,
              text: 'sample password',
              suffixIcon: Icons.remove_red_eye,
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const LocationAccess();
                    },
                  ));
                },
                child: button(btnText: 'Save')),
          ],
        ),
      ),
    );
  }
}

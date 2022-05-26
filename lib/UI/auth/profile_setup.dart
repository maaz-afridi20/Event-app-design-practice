import 'package:event_app/UI/auth/transportation.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:event_app/UI/widgets/textfield.dart';
import 'package:flutter/material.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Profile Setup',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Enter your profile information',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Expanded(
                    child: textFields(
                      text: 'First Name',
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: textFields(
                      text: 'Last Name',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              textFields(
                text: 'Preffered Name',
              ),
              const SizedBox(
                height: 15,
              ),
              textFields(
                text: 'Mailing Address',
              ),
              const SizedBox(
                height: 15,
              ),
              textFields(
                text: 'Other Number',
              ),
              const SizedBox(
                height: 15,
              ),
              textFields(
                text: 'Date Of Birth',
              ),
              const SizedBox(
                height: 15,
              ),
              textFields(
                text: 'Anniversary Date',
              ),
              const SizedBox(
                height: 15,
              ),
              textFields(
                text: 'High School',
              ),
              const SizedBox(
                height: 15,
              ),
              textFields(
                text: 'College Name',
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Transportation();
                      },
                    ));
                  },
                  child: button(btnText: 'Continue')),
            ],
          ),
        ),
      ),
    );
  }
}

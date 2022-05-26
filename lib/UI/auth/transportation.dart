import 'package:event_app/UI/auth/upload_image.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:event_app/UI/widgets/check_box.dart';
import 'package:event_app/UI/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Transportation extends StatelessWidget {
  const Transportation({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Preffered Transportation',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Enter your transportation details',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            myCheckBox(mytext: 'Uber'),
            const SizedBox(
              height: 15,
            ),
            myCheckBox(mytext: 'Lyft'),
            const SizedBox(
              height: 15,
            ),
            myCheckBox(mytext: 'Personel vehicle'),
            const SizedBox(
              height: 15,
            ),
            myCheckBox(mytext: 'Other'),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const UploadImage();
                    },
                  ));
                },
                child: button(btnText: 'Continue')),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}

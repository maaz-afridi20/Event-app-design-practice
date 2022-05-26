import 'package:event_app/UI/auth/profile_setup.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:flutter/material.dart';

class LocationAccess extends StatelessWidget {
  const LocationAccess({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/location.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Location Access',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 3,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Let event app access your location to show you nearby events',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ProfileSetup();
                    },
                  ));
                },
                child: button(btnText: 'Enable Location')),
            const SizedBox(height: 15),
            const Text(
              'Don\'t enable',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

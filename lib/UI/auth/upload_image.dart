import 'package:event_app/UI/auth/entertaintment_info.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:flutter/material.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({Key? key}) : super(key: key);

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
              'Upload Image',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Upload identifiable image',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.4),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Center(
              child: Stack(
                children: const [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'assets/images/bilal.jpg',
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 70,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'UserName',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const Entertainment();
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

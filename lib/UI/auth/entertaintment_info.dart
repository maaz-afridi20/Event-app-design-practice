import 'package:event_app/UI/auth/fashion_info.dart';
import 'package:event_app/UI/widgets/button.dart';
import 'package:event_app/UI/widgets/entertainment_reusable_form.dart';
import 'package:flutter/material.dart';

class Entertainment extends StatelessWidget {
  const Entertainment({Key? key}) : super(key: key);

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
              'Entertainment info',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Enter your desired entertainment info',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ReusableMyForm(
              reusableText: 'Desired drink',
              lastIcon: Icons.arrow_drop_down,
            ),
            const SizedBox(
              height: 15,
            ),
            ReusableMyForm(
              reusableText: 'Entertainment type',
              lastIcon: Icons.arrow_drop_down,
            ),
            const SizedBox(
              height: 15,
            ),
            ReusableMyForm(
              reusableText: 'Seating type',
              lastIcon: Icons.arrow_drop_down,
            ),
            const SizedBox(
              height: 15,
            ),
            ReusableMyForm(
              reusableText: 'Desired ticket',
              lastIcon: Icons.arrow_drop_down,
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FashionInfo();
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

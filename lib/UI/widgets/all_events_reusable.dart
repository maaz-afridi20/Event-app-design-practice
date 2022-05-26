import 'package:flutter/material.dart';

class AllEventsReusable extends StatelessWidget {
  const AllEventsReusable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/watch.jpg',
              fit: BoxFit.cover,
            ),
          ),
          height: 100,
          width: 120,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Pixaby'),
            const SizedBox(height: 5),
            Row(
              children: const [
                Icon(Icons.calendar_month),
                SizedBox(
                  width: 5,
                ),
                Text('Jan 10, 2020'),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Icon(Icons.alarm),
                SizedBox(
                  width: 5,
                ),
                Text('12:30 PM')
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Icon(Icons.location_on),
                SizedBox(
                  width: 5,
                ),
                Text('Ayub Park Pindi')
              ],
            ),
          ],
        ),
      ],
    );
  }
}

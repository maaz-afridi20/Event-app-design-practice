import 'package:event_app/UI/widgets/button.dart';
import 'package:flutter/material.dart';

class Pixaby extends StatelessWidget {
  const Pixaby({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pixaby',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset('assets/images/hacking2.jpg')),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Icon(Icons.calendar_month),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Jan 10, 2020'),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Ayub Park Pindi'),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Icon(Icons.alarm),
                  SizedBox(
                    width: 5,
                  ),
                  Text('1:00'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text(
                'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              button(btnText: 'Attend'),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

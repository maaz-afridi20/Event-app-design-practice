import 'package:event_app/UI/auth/pixaby.dart';
import 'package:event_app/UI/widgets/all_events_reusable.dart';
import 'package:event_app/UI/widgets/textfield.dart';
import 'package:flutter/material.dart';

class AllEvents extends StatelessWidget {
  const AllEvents({Key? key}) : super(key: key);

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
            children: [
              const Text(
                'All Events',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Find the event near you',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              textFields(
                text: 'Search Events',
                suffixIcon: Icons.analytics_sharp,
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Pixaby();
                      },
                    ));
                  },
                  child: const AllEventsReusable()),
              const SizedBox(height: 24),
              const AllEventsReusable(),
              const SizedBox(height: 24),
              const AllEventsReusable(),
              const SizedBox(height: 24),
              const AllEventsReusable(),
              const SizedBox(height: 24),
              const AllEventsReusable(),
            ],
          ),
        ),
      ),
    );
  }
}

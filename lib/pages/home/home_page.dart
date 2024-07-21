import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_share/router.gr.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/logo-small.png',
                    height: 60,
                  ),
                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Good day, ", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                      Text(FirebaseAuth.instance.currentUser?.displayName ?? 'Paul',
                          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4.0),
                      Text("Make the world a better place! ", style: Theme.of(context).textTheme.labelLarge),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 42.0),
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  ),
                  child: Stack(
                    children: [
                      // Image as the base layer
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/home.jpg'),
                            fit: BoxFit.cover, // Cover the entire area of the container
                          ),
                        ),
                      ),
                      // Overlay as the top layer
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.5), // Black color with 50% opacity
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 250,
                                padding: const EdgeInsets.all(24.0),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  'You have made 3 donations last month.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              Container(
                                width: 250,
                                padding: const EdgeInsets.all(24.0),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  'You have made 124 people happy last month.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 32.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 52.0,
                                  child: FilledButton.icon(
                                    onPressed: () => context.pushRoute(const AddDonationRoute()),
                                    label: const Text('Add a donation'),
                                    icon: const Icon(Icons.add),
                                  ),
                                ),
                                const SizedBox(width: 12.0),
                                SizedBox(
                                  height: 52.0,
                                  child: OutlinedButton.icon(
                                    onPressed: () {},
                                    label: const Text('view last'),
                                    icon: const Icon(Icons.calendar_month),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

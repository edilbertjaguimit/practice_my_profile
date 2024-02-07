import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  final int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _counter++;
      //     });
      //   },
      //   backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      //   child: const Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      // ),
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/me.jpg'),
                          radius: 50,
                        ),
                      ),
                      const Divider(
                        height: 100,
                      ),
                      const Text(
                        'NAME',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'EDILBER CRIST P. JAGUIMIT',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'YEAR LEVEL',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '$_counter',
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 50),
                      const Text(
                        'SOCIALS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'edilbertjagimit01@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'www.facebook.com/edilbertjaguimit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    color: const Color.fromARGB(255, 34, 34, 34),
                    child: const Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

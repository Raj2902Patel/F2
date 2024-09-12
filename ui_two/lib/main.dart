import 'package:flutter/material.dart';
import 'package:ui_two/details_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the height of the screen
    final deviceHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                        child: Text(
                          './\\/',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: deviceHeight * 0.4, // 40% of screen height
                        child: const Center(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Natural\nIngredidients',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: deviceHeight * 0.4, // 40% of screen height
                        child: Image.network(
                          "https://media.istockphoto.com/id/658291850/photo/young-plant-growing-in-sunlight.webp?b=1&s=612x612&w=0&k=20&c=2GzCZo0bk2D4MI36gvrCke4CWa7J4qoh5Wfzy_f_pjs=",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: deviceHeight * 0.475, // 35% of screen height
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "01",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 28,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              width: 1,
                              height: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: deviceHeight * 0.475, // 35% of screen height
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 30),
                              child: Text(
                                "Info",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 30),
                              child: Text(
                                "The Beauty Of The Natural World Lies In The Details!",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailPage()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    'Read More..',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

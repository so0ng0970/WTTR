import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildWeatherColumn({required String tem, required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 30,
        ),
        const Text(
          'humidity',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25,
          ),
        ),
        Text(
          '$temº',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 76, 80),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Stack(children: [
              Image.asset('asset/images/brokenCloudy.png'),
              const Positioned(
                right: 0,
                top: 10,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    "misty",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 50,
                        color: Colors.black),
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
              height: 1,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'seoul',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '22º',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            buildWeatherColumn(
                                icon: Icons.cloud_outlined, tem: '20'),
                            const SizedBox(
                              width: 20,
                            ),
                            buildWeatherColumn(
                                icon: Icons.water_drop_outlined, tem: '23'),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

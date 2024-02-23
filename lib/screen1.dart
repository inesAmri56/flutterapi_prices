import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = (screenWidth - 28) / 2; // 28 is the sum of padding and spacing

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'TODAY',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  shadows: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        2,
                        2,
                      ),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
              Text(
                ' PRICE',
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  shadows: [
                    BoxShadow(
                      color: Colors.yellow[300]!,
                      offset: const Offset(
                        0,
                        0,
                      ),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50, right: 8, left: 8, bottom: 8),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/gold.png',
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                const SizedBox(height: 20),
                Text(
                  'GOLD',
                  style: TextStyle(
                    color: Colors.orange[800],
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 8,
                    shadows: [
                      BoxShadow(
                        color: Colors.yellow[300]!,
                        offset: const Offset(
                          2,
                          2,
                        ),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '1800\$', // Provide the actual text value
                  style: TextStyle(
                    color: Colors.orange[800],
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 16,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/silver.png', // Check the asset name
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                const SizedBox(height: 20),
                Text(
                  'SILVER',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 8,
                    shadows: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          2,
                          2,
                        ),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '1800\$',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 16,
                    shadows: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          2,
                          2,
                        ),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

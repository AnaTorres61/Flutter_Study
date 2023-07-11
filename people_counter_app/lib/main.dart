import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('decrement');
  }

  void increment() {
    print('increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background
          SizedBox.expand(
            child: Image.asset('assets/images/wood.jpg', fit: BoxFit.fill,),
          ),
          // logo
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'ice',
                  style: TextStyle(
                    color: Color.fromARGB(255, 211, 210, 210),
                    fontFamily: 'AbrilFatface',
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'NORDESTE',
                  style: TextStyle(
                    color: Color.fromARGB(255, 26, 77, 28),
                    fontFamily: 'AbrilFatface',
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 140,
                  width: 100,
                  child: Image.asset('assets/images/cactus.png', fit: BoxFit.fill),
                ),
              ],
            ),
          ),
          // body
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(top: 60),
              alignment: Alignment.center,
              height: 450,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(150, 189, 159, 140),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'PODE ENTRAR',
                    style: TextStyle(
                      fontSize: 31,
                      color: Color.fromARGB(255, 26, 77, 28),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top:50, bottom: 50,),
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 100,
                        color: Color.fromARGB(255, 26, 77, 28),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: decrement,
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 26, 77, 28),
                          fixedSize: const Size(100, 100),
                          foregroundColor: const Color.fromARGB(255, 211, 210, 210),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          'Saiu',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 211, 210, 210),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: increment,
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 26, 77, 28),
                          fixedSize: const Size(100, 100),
                          foregroundColor: const Color.fromARGB(255, 211, 210, 210),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          'Entrou',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 211, 210, 210),
                            fontWeight: FontWeight.w800,
                          ),
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
    );
  }
}

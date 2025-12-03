import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Login.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: 400,
                height: 370,
                // color: Colors.white,
                child: Image.asset(
                  "assets/images/download.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "From Bowl to Soul\n  We've Got it All!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Buy the best pet food packed\n  with health and nutrition for\n           you beloved pet",
            style: TextStyle(fontSize: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(
              children: [
                Container(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 77, 153, 79),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 330,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 77, 153, 79),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          width: 2.0,
                          color: const Color.fromARGB(255, 77, 153, 79),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 74,
          //   child: Container(
          //     child: Divider(
          //       height: 5,
          //       thickness: 8,
          //       indent: 130,
          //       endIndent: 130,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

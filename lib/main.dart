// import 'package:flutter/material.dart';
// import 'package:flutter_ecommerce/Home_dashboard.dart';
// import 'package:flutter_ecommerce/SplashScreen.dart';
// import 'package:flutter_ecommerce/Detail.dart';
// import 'package:flutter_ecommerce/Products.dart';
// import 'package:flutter_ecommerce/Login.dart';
// import 'package:go_router/go_router.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// void main() async {
//    WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(MyApp());
// }
// FirebaseAuth auth = FirebaseAuth.instance;

// // Sign Up
// Future<void> signUp(String email, String password) async {
//   try {
//     await auth.createUserWithEmailAndPassword(email: email, password: password);
//   } catch (e) {
//     print("Error: $e");
//   }
// }
// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
 
//     return MaterialApp.router(
//       routerConfig: _goRouter,

//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),

//       // home: SplashScreen(title: ''),
//     );
//   }

//   final GoRouter _goRouter = GoRouter(
//     // initialLocation: '/Login',
//     initialLocation: '/Home',
//     routes: <RouteBase>[
//       GoRoute(
//         path: '/Home',
//         builder: (context, state) => const Home(title: ''),
//       ),
//       GoRoute(path: '/Login', builder: (context, state) => Login()),
//       GoRoute(path: '/Detail', builder: (context, state) => const Detail()),
//       GoRoute(path: '/Products', builder: (context, state) => Products()),
//       GoRoute(
//         path: '/HomeDashboard',
//         builder: (context, state) => HomeDashboard(),
//       ),
//     ],
//   );
// }



import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp();
    print("✅ Firebase initialized successfully");
  } catch (e) {
    print("❌ Firebase initialization error: $e");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Static Hello World',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HelloWorldPage(),
    );
  }
}

class HelloWorldPage extends StatelessWidget {
  const HelloWorldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello World App")),
      body: const Center(
        child: Text(
          "Hello, World!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

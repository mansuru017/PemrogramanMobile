import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/Main_menu/menu.dart';
<<<<<<< HEAD
import 'package:tugas_akhir/controller_main/auth_users.dart';
=======
import 'package:tugas_akhir/controller_main/auth.dart';
>>>>>>> 05446248c2f23320139f8ccc5a201fdf05fcd68f
import 'package:tugas_akhir/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
<<<<<<< HEAD
  runApp(
    const MyApp(),
  );
=======
  runApp(const MyApp());
>>>>>>> 05446248c2f23320139f8ccc5a201fdf05fcd68f
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        home: const SplashScreen(),
      );
}

final navigatorKey = GlobalKey<NavigatorState>();

class MainController extends StatelessWidget {
  const MainController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Something Wrong'),
              );
            } else if (snapshot.hasData) {
              return const Menu();
            } else {
<<<<<<< HEAD
              return const AuthUsers();
=======
              return const AuthPage();
>>>>>>> 05446248c2f23320139f8ccc5a201fdf05fcd68f
            }
          }),
    );
  }
}

/* firebase 관련 */
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jinny_portfolio/config/constants.dart';
import 'package:jinny_portfolio/screens/home/home_screen.dart';
import 'package:jinny_portfolio/screens/main/main_screen.dart';
import 'firebase_options.dart';

/* 그 외 */
import 'package:flutter/material.dart';

void main() async {
  /* firebase 관련 */
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* debug 문양 제거 */
      debugShowCheckedModeBanner: false,
      title: 'Jinny\'s Portfolio',
      theme: ThemeData.light().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black)
            .copyWith(
              bodyText1: const TextStyle(
                color: bodyTextColor,
              ),
              bodyText2: const TextStyle(
                color: bodyTextColor,
              ),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}

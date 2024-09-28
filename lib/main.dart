import 'package:attensync/ui/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;
void main() async {
  runApp(const MyApp());
  sharedPreferences = await SharedPreferences.getInstance();
  await dotenv.load(fileName: "attensync/assets/config/.env");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AttenSyncApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_2627_51/data/candi_data.dart';
import 'package:flutter_wisata_candi_2627_51/providers/favorite_provider.dart';
import 'package:flutter_wisata_candi_2627_51/screens/detail_contoh.dart';
import 'package:flutter_wisata_candi_2627_51/screens/detail_screen.dart';
import 'package:flutter_wisata_candi_2627_51/screens/home_screen.dart';
import 'package:flutter_wisata_candi_2627_51/screens/profile.screens.dart';
import 'package:flutter_wisata_candi_2627_51/screens/search_screen.dart';
import 'package:flutter_wisata_candi_2627_51/screens/signin_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        // ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ).copyWith(primary: Colors.deepPurple, surface: Colors.deepPurple[50]),
        useMaterial3: true,
      ),

      home: HomeScreen(),
    );
  }
}

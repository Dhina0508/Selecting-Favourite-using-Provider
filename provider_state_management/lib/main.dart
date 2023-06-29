import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/favourite.dart';
import 'package:provider_state_management/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Favourite(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Colors.teal,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
            ),
            useMaterial3: true,
          ),
          home: Home()),
    );
  }
}

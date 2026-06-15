import 'package:flutter/material.dart';
import 'features/usuarios/presentation/home_page.dart';


void main() {
  runApp(const MiApp());
}


class MiApp extends StatelessWidget {

  const MiApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: const HomePage(),
    );

  }

}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}


class _HomePageState extends State<HomePage> {

  final TextEditingController nombreController =
      TextEditingController();

  String mensaje = "";


  void mostrarMensaje() {

    String nombre = nombreController.text;

    DateTime ahora = DateTime.now();

    setState(() {

      mensaje =
          "Hola $nombre\n"
          "Hoy es: ${ahora.day}/${ahora.month}/${ahora.year}";

    });

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Mi primera app Flutter"),
      ),


      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              "Escribe tu nombre:",
              style: TextStyle(fontSize: 22),
            ),


            const SizedBox(height: 15),


            TextField(
              controller: nombreController,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Tu nombre",
              ),

            ),


            const SizedBox(height:20),


            ElevatedButton(
              onPressed: mostrarMensaje,
              child: const Text("Presiona"),
            ),


            const SizedBox(height:30),


            Text(
              mensaje,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize:20),
            ),

          ],

        ),

      ),

    );

  }

}

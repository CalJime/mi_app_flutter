// Importa la librería Material de Flutter.
// Contiene widgets visuales como Text, Button, Scaffold, AppBar, etc.
import 'package:flutter/material.dart';


// Punto de inicio de toda aplicación Flutter.
// La ejecución comienza aquí.
void main() {

  // runApp recibe el widget principal de la aplicación.
  // En este caso iniciamos MiApp.
  runApp(const MiApp());
}


// Widget principal de la aplicación.
// StatelessWidget significa que este widget no cambia su estado interno.
class MiApp extends StatelessWidget {

  // Constructor constante del widget.
  const MiApp({super.key});


  // build crea la interfaz visual del widget.
  @override
  Widget build(BuildContext context) {

    // MaterialApp configura la aplicación Flutter.
    return MaterialApp(

      // Quita la etiqueta roja de "debug" en la esquina superior.
      debugShowCheckedModeBanner: false,

      // Indica la pantalla inicial que se mostrará.
      home: const HomePage(),
    );
  }
}


// Esta pantalla sí puede cambiar.
// StatefulWidget permite modificar datos y actualizar la pantalla.
class HomePage extends StatefulWidget {

  const HomePage({super.key});


  // Crea el objeto que manejará los cambios de estado.
  @override
  State<HomePage> createState() => _HomePageState();
}



// Aquí se guarda la lógica y los datos que cambian.
class _HomePageState extends State<HomePage> {


  // Controlador que permite leer lo que el usuario escribe
  // dentro del TextField.
  final TextEditingController nombreController =
      TextEditingController();


  // Variable donde guardaremos el mensaje que aparece
  // después de presionar el botón.
  String mensaje = "";



  // Método que se ejecuta al presionar el botón.
  void mostrarMensaje() {


    // Obtiene el texto escrito por el usuario.
    String nombre = nombreController.text;



    // Obtiene fecha y hora actual del sistema.
    DateTime ahora = DateTime.now();



    // setState avisa a Flutter que la información cambió
    // y debe volver a dibujar la pantalla.
    setState(() {


      // Creamos el mensaje usando interpolación de cadenas.
      mensaje =
          "Hola $nombre\n"
          "Hoy es: ${ahora.day}/${ahora.month}/${ahora.year}";
    });
  }



  // Construye la interfaz gráfica.
  @override
  Widget build(BuildContext context) {


    // Scaffold crea la estructura básica:
    // barra superior, cuerpo, botones, etc.
    return Scaffold(


      // Barra superior de la aplicación.
      appBar: AppBar(

        // Texto mostrado en la barra.
        title: const Text("Mi primera app Flutter"),
      ),



      // Área principal de la pantalla.
      body: Padding(


        // Margen alrededor de todo el contenido.
        padding: const EdgeInsets.all(20),



        // Column organiza widgets verticalmente.
        child: Column(


          // Centra todo el contenido en la pantalla.
          mainAxisAlignment: MainAxisAlignment.center,



          children: [



            // Texto que indica al usuario qué hacer.
            const Text(
              "Escribe tu nombre:",


              // Estilo del texto.
              style: TextStyle(
                fontSize: 22,
              ),
            ),



            // Espacio vertical.
            const SizedBox(height: 15),




            // Campo donde el usuario escribe.
            TextField(


              // Conecta el campo con el controlador.
              controller: nombreController,



              // Diseño del campo de texto.
              decoration: const InputDecoration(


                // Borde alrededor del campo.
                border: OutlineInputBorder(),


                // Texto de ayuda dentro del campo.
                hintText: "Tu nombre",
              ),
            ),




            const SizedBox(height: 20),




            // Botón que ejecuta una acción.
            ElevatedButton(


              // Cuando se presiona llama al método.
              onPressed: mostrarMensaje,



              // Texto dentro del botón.
              child: const Text(
                "Presiona",
              ),
            ),




            const SizedBox(height: 30),




            // Muestra el resultado después de presionar.
            Text(


              // Contenido generado dinámicamente.
              mensaje,



              // Centra el texto.
              textAlign: TextAlign.center,



              style: const TextStyle(
                fontSize: 20,
              ),
            ),


          ],
        ),//fin child: Column
      ),//fin body: Padding
    );//fin Scaffold
  }//Fin class _Widget build 
} //Fin class _HomePageState 
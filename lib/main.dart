
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicación Personal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF168AAD),
        ),
        scaffoldBackgroundColor: const Color(0xFFE9F2F7),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mi Aplicación'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _mostrarInformacion() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Acerca de mi aplicación'),
          content: const Text(
            'Esta aplicación fue creada como parte de una práctica '
            'de Flutter. Permite interactuar con botones, visualizar '
            'un contador y conocer información sobre la aplicación.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF173B57),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.apps_rounded,
                size: 85,
                color: Color(0xFF168AAD),
              ),

              const SizedBox(height: 20),

              const Text(
                '¡Bienvenido!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF173B57),
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Gracias por visitar mi primera aplicación '
                'desarrollada en Flutter.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF526575),
                ),
              ),

              const SizedBox(height: 35),

              const Text(
                'Contador de interacciones',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF173B57),
                ),
              ),

              const SizedBox(height: 10),

              Text(
                '$_counter',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF168AAD),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _incrementCounter,
                  icon: const Icon(Icons.add_circle_outline),
                  label: const Text('Aumentar contador'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF168AAD),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: _mostrarInformacion,
                  icon: const Icon(Icons.info_outline),
                  label: const Text('Mostrar información'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF173B57),
                    side: const BorderSide(
                      color: Color(0xFF168AAD),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: const Color(0xFF173B57),
        foregroundColor: Colors.white,
        tooltip: 'Aumentar contador',
        child: const Icon(Icons.add),
      ),
    );
  }
}
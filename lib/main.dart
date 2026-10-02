import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _name = TextEditingController();
  String greeting = "";

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // แก้ไขจุดที่ 1: หุ้ม TextField ด้วย Expanded
                  Container(
                    width: 200,
                    child: TextField(
                      controller: _name,
                      decoration: const InputDecoration(
                        hintText: 'Enter your name',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 25,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        120,
                        50,
                      ), // ความกว้าง 120, ความสูง 50
                    ),
                    onPressed: () {
                      // แก้ไขจุดที่ 2: อัปเดตเฉพาะข้อความที่จะนำมาแสดงผล
                      setState(() {
                        if (_name.text.isNotEmpty) {
                          greeting = "Hello, ${_name.text}!";
                        }
                      });
                    },
                    child: const Text('Hello'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(greeting, style: const TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}

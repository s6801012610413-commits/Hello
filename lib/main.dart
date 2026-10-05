import 'package:flutter/material.dart';

String find_result(String player1,String player2){
  if(player1 == '' || player2 == ''){
    return '';
  }
  if(player1==player2){
    return "draw";
  }else{
    if(player1 == 'rock' && player2 == 'scissor'){
      return 'player1 win';
    }
    if(player1 == 'rock' && player2 == 'paper'){
      return 'player2 win';
    }
    if(player1 == 'scissor' && player2 == 'paper'){
      return 'player1 win';
    }
    if(player1 == 'scissor' && player2 == 'rock'){
      return 'player2 win';
    }
    if(player1 == 'paper' && player2 == 'rock'){
      return 'player1 win';
    }
    if(player1 == 'paper' && player2 == 'scissor'){
      return 'player2 win';
    }
  }
  return '';
}

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
  String player1 = "";
  String player2 = "";
  String result = "";
  bool isContinue = false;

  @override
  void dispose() {
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
                  
                  ElevatedButton(
                    key: Key('rock_botton'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        120,
                        50,
                      ), // ความกว้าง 120, ความสูง 50
                    ),
                    onPressed: () {
                      setState(() {
                        if (isContinue) {
                           player2 = 'rock';
                        }else{
                           player1 = 'rock';
                        }
                      });
                    },
                    child: const Text('Rock'),
                  ),
                  const SizedBox(width: 10),

                  ElevatedButton(
                    key: Key('paper_botton'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        120,
                        50,
                      ), // ความกว้าง 120, ความสูง 50
                    ),
                    onPressed: () {
                      setState(() {
                        if (isContinue) {
                           player2 = 'paper';
                        }else{
                           player1 = 'paper';
                        }
                      });
                    },
                    child: const Text('Paper'),
                  ),
                  const SizedBox(width: 10),


                  ElevatedButton(
                    key: Key('scissor_botton'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        120,
                        50,
                      ), // ความกว้าง 120, ความสูง 50
                    ),
                    onPressed: () {
                      setState(() {
                        if (isContinue) {
                           player2 = 'scissor';
                        }else{
                           player1 = 'scissor';
                        }
                      });
                    },
                    child: const Text('Scissor'),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                    key: Key('continue_botton'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        120,
                        50,
                      ), // ความกว้าง 120, ความสูง 50
                    ),
                    onPressed: () {
                      setState(() {
                        isContinue = true;
                      });
                    },
                    child: const Text('Continue'),
                  ),
                  const SizedBox(height: 20),
                
                ElevatedButton(
                  key: Key('result_botton'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        120,
                        50,
                      ), // ความกว้าง 120, ความสูง 50
                    ),
                    onPressed: () {
                      setState(() {
                        result = find_result(player1, player2);
                      });
                    },
                    child: const Text('Result'),
                  ),

                  const SizedBox(height: 20),
                  Text(result, style:TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
                  const SizedBox(height: 20),
                  Text(player1, style:TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
                  const SizedBox(height: 20),
                  Text(player2, style:TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),
                  
            ],
          ),
        ),
      ),
    );
  }
}

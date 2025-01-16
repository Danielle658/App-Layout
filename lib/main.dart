import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 29, 4, 72)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
      debugShowCheckedModeBanner: false, // Adicione esta linha
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
               alignment: Alignment.center,
                //color: const Color.fromARGB(185, 37, 105, 139),
                child: const Text("Layout Superior"),
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      //alignment: Alignment.center,
                      //color: const Color.fromARGB(184, 211, 61, 211),
                      //child: const Text('Primeira Coluna'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration( 
                        color: const Color.fromARGB(181, 35, 108, 168),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all( 
                          color: const Color.fromARGB(193, 62, 7, 190),
                          width: 1,
                        ),
                        boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 10,
                            offset: Offset(5,25),
                          ),
                        ]
                      ),
                      child: const Text('MEU APP'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //alignment: Alignment.center,
                     // color: const Color.fromARGB(122, 239, 9, 239),
                     // child: const Text('Terceira Coluna'),
                    ),
                 ),
                ],
              ),
            ),  
              Expanded(      
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  //color: const Color.fromARGB(185, 17, 121, 172),
                  child: const Text("Layout Inferior"),
                ),
              ),
            ],  
         ),
       ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}

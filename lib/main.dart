import 'package:flutter/material.dart';
import 'package:numbers/apis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Facts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Number Facts'),
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
  final textcontroller = TextEditingController();

  String resulttext = 'type a number';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: textcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter a number',
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    final _number = textcontroller.text;

                    final result = await getnumber(number: _number);
                    setState(() {
                      resulttext = result.trivia ?? 'type a number';
                    });
                  },
                  child: Text('Get Result')),
              SizedBox(
                height: 10,
              ),
              Text(resulttext)
            ],
          ),
        ),
      ),
    );
  }
}

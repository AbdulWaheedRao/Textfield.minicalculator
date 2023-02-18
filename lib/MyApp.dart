import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = '';
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.amber,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                  child: SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                            controller: no1Controller,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 27, 27, 24)),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Enter the number',
                            )),
                      ))),
              Center(
                  child: SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                            controller: no2Controller,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 27, 27, 24)),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Enter the number',
                            )),
                      ))),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        num no1 = int.parse(no1Controller.text.toString());
                        num no2 = int.parse(no2Controller.text.toString());
                        num add = no1 + no2;
                        result = 'The Sum of two nos is$add';
                        setState(() {});
                      },
                      child: const Text('+',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          num no1 = int.parse(no1Controller.text.toString());
                          num no2 = int.parse(no2Controller.text.toString());
                          num sub = no1 - no2;
                          result = 'The subtraction is $sub';

                          setState(() {});
                        },
                        child: const Text('-',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                    ElevatedButton(
                        onPressed: () {
                          num no1 = int.parse(no1Controller.text.toString());
                          num no2 = int.parse(no2Controller.text.toString());
                          num multi = no1 * no2;
                          result = 'The Multiplication is$multi';
                          setState(() {});
                        },
                        child: const Text('*',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                    ElevatedButton(
                        onPressed: () {
                          num no1 = int.parse(no1Controller.text.toString());
                          num no2 = int.parse(no2Controller.text.toString());
                          num divid = no1 / no2;
                          result = 'The division is $divid';
                          setState(() {});
                        },
                        child: const Text('/',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              Text(
                result,
                style: const TextStyle(fontSize: 25, color: Colors.white),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}

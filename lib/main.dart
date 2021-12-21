import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String currentItem = '';
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: List.generate(
                      names.length,
                      (i) => MaterialButton(
                            onPressed: () {
                              setState(() {
                                currentItem = names[i].name!;
                                isExpanded = true;
                              });
                            },
                            child: SizedBox(
                              height: 80,
                              child: Card(
                                color: Colors.red,
                                child: Center(child: Text(names[i].name!)),
                              ),
                            ),
                          )),
                ),
              ),
            ],
          ),
          bottomSheet: GestureDetector(
            onTap: () => setState(() => isExpanded = !isExpanded),
            child: AnimatedContainer(
              duration: const Duration(seconds: 2),
              height: isExpanded ? MediaQuery.of(context).size.height : 80,
              color: Colors.blue,
              width: double.infinity,
              child: Center(child: Text(currentItem)),
            ),
          )),
    );
  }
}

List<Names> names = [
  Names('1', 'Orange'),
  Names('2', 'Rice'),
  Names('3', 'Mango'),
  Names('4', 'Beans'),
  Names('5', 'Computer'),
  Names('6', 'Phone'),
  Names('7', 'Earphone'),
  Names('8', 'book'),
  Names('6', 'Phone'),
  Names('7', 'Earphone'),
  Names('8', 'book'),
];

class Names {
  final String? id;
  final String? name;

  Names(this.id, this.name);
}

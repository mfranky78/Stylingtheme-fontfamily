import 'package:flutter/material.dart';
import 'package:fontfamilyapp/fontart.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isExpanded = false;
  bool isExpanded1 = false;
  bool darkMode = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Schriftarten')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Center(
                  child: Text(
                    'Hallo liebe Leute wie geht es euch heute',
                    style: courgette,
                    overflow: TextOverflow.ellipsis,
                    maxLines: isExpanded ? 20 : 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: 200,
                color: Colors.orange,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded1 = !isExpanded1;
                    });
                  },
                  child: Center(
                    child: Text(
                      'Hallo0000000000000000',
                      style: statisfy,
                      overflow: TextOverflow.visible,
                      maxLines: isExpanded1 ? 10 : 1,
                    ),
                  ),
                ),
              ),
              Switch(
                value: darkMode,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
            Text(style: const TextStyle(color: Colors.green),
            darkMode ? 'dark' : 'light',
            textAlign: TextAlign.center,
            )
            
            ],
          ),
        ),
      ),
    );
  }
}

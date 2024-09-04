import 'package:flutter/material.dart';

main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Counter",
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyhomeUI();
  }
}

class MyhomeUI extends State<Myhome> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 15,
        title: const Text("Simple Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counted Number\n             $countNum",
              style: const TextStyle(fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: () {
                    setState(
                      () {
                        countNum -= 1;
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 50,
                  width: 30,
                ),
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    setState(
                      () {
                        countNum += 1;
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 50,
                  width: 0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

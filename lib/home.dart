import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  double result = 0;
  final TextEditingController firstNumber = TextEditingController();
  final TextEditingController secondNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 228, 6),
        title: const Text("Simple Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: firstNumber,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "First Number"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: secondNumber,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Second Number"),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Result:$result",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                  onPressed: () {
                    double fNum = double.parse(firstNumber.text);
                    double sNum = double.parse(secondNumber.text);
                    setState(() {
                      result = fNum + sNum;
                    });
                  },
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    double fNum = double.parse(firstNumber.text);
                    double sNum = double.parse(secondNumber.text);
                    setState(() {
                      result = fNum - sNum;
                    });
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    double fNum = double.parse(firstNumber.text);
                    double sNum = double.parse(secondNumber.text);
                    setState(() {
                      result = fNum * sNum;
                    });
                  },
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: () {
                    double fNum = double.parse(firstNumber.text);
                    double sNum = double.parse(secondNumber.text);
                    setState(() {
                      result = fNum / sNum;
                    });
                  },
                  child: Text("/"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

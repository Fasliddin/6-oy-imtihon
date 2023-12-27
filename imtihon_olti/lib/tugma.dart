import 'package:flutter/material.dart';

class Tugma extends StatefulWidget {
  const Tugma({super.key});

  @override
  State<Tugma> createState() => _TugmaState();
}

class _TugmaState extends State<Tugma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bato",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple[900],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  elevation: MaterialStatePropertyAll(2),
                  shadowColor: MaterialStatePropertyAll(Colors.grey)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("  back  "),
            )
          ],
        ),
      ),
    );
  }
}

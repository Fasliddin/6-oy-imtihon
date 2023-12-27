import 'package:flutter/material.dart';
import 'package:imtihon_olti/data.dart';

class School extends StatefulWidget {
  const School({super.key});

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.redAccent,
              Color.fromARGB(255, 255, 243, 132),
              Colors.white,
              Colors.blueAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: size.width - 50,
                height: size.height / 3.5,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(16, 239, 131, 1),
                    border: Border.all(color: Colors.teal),
                    borderRadius: BorderRadius.circular(35)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Container(
                    width: size.width - 100,
                    height: size.height / 3.5,
                    child: Center(
                        child: Text(
                      "$textu",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  controller: cont,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter the week"),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  elevation: MaterialStatePropertyAll(2),
                  shadowColor: MaterialStatePropertyAll(Colors.grey),
                ),
                onPressed: () {setState(() {
                  search(); 
                });},
                child: Text("  Translate  "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

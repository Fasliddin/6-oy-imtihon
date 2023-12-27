import 'package:flutter/material.dart';
import 'package:imtihon_olti/data.dart';
import 'package:intl/intl.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: screens.elementAt(selected),
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 120,
        title: Text(
          "final exam",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple[900],
          ),
        ),
        actions: [
          Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    DigitalClock(
                      colon: Text(
                        ":",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple[900],
                        ),
                      ),
                      is24HourTimeFormat: true,
                      secondDigitTextStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[900],
                      ),
                      digitAnimationStyle: Curves.ease,
                      hourMinuteDigitTextStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[900],
                      ),
                    )
                  ],
                )),
          ),
        ],
        leading: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              DateFormat('y-MM-d').format(DateTime.now()),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[900],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (value) {
          setState(() {});
          setState(() {
            selected = value;
          });
        },
        backgroundColor: Colors.deepPurple[900],
        selectedIconTheme: IconThemeData(
          color: Colors.orange,
        ),
        selectedLabelStyle:
            TextStyle(color: Colors.orange, fontWeight: FontWeight.w600),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
              ),
              label: "Businnes"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
              ),
              label: "Scholl"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imtihon_olti/tugma.dart';

class Bussines extends StatefulWidget {
  const Bussines({super.key});

  @override
  State<Bussines> createState() => _BussinesState();
}

class _BussinesState extends State<Bussines> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
          children: [
            Container(
              width: size.width - 50,
              height: size.height / 6.5,
              decoration: BoxDecoration(
                color: Colors.deepPurple[700],
                borderRadius: BorderRadius.all(
                  Radius.elliptical(20, 80),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                                  backgroundColor: Colors.white,
                                  title: Text("Bato"),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          22, 10, 0, 10),
                                      child: Text(
                                        "keyingi sahifaga o'tasizmi?",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Tugma(),
                                                    ),
                                                  );
                                                },
                                                child: Text("Xa")),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  setState(() {});
                                                },
                                                child: Text("Yo'q")),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                      });
                    },
                    icon: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {setState(() {
                        showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                                  backgroundColor: Colors.white,
                                  title: Text("Bato"),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          22, 10, 0, 10),
                                      child: Text(
                                        "keyingi sahifaga o'tasizmi?",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Tugma(),
                                                    ),
                                                  );
                                                },
                                                child: Text("Xa")),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  setState(() {});
                                                },
                                                child: Text("Yo'q")),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                      });},
                    icon: Icon(
                      Icons.call_end,
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    onPressed: () {setState(() {
                        showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                                  backgroundColor: Colors.white,
                                  title: Text("Bato"),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          22, 10, 0, 10),
                                      child: Text(
                                        "keyingi sahifaga o'tasizmi?",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Tugma(),
                                                    ),
                                                  );
                                                },
                                                child: Text("Xa")),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  setState(() {});
                                                },
                                                child: Text("Yo'q")),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                      });},
                    icon: Icon(
                      Icons.cabin,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 130,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  children: [
                    for (var i = 0; i < 501; i++)
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                            10,
                          )),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "card number",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple[900],
                                  ),
                                ),
                                Text(
                                  "$i",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.deepPurple[900],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

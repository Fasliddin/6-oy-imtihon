import 'package:flutter/material.dart';
import 'package:imtihon_olti/data.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                    backgroundColor: Colors.amber,
                    title: Text('Malumot kiriting'),
                    children: [
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            top = value;
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('cancel')),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                setState(() {
                                  date.add(top);
                                });
                              },
                              child: Text('add')),
                        ],
                      )
                    ],
                  ));
        },
        child: Icon(
          Icons.add,
          color: Colors.deepPurple[900],
        ),
      ),
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
        child: ListView.builder(
            itemCount: date.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ListTile(
                    title: Text(
                      date[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Container(
                      width: 100,
                      child: Row(
                        children: [
                          Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => SimpleDialog(
                                              children: [
                                                TextField(
                                                  onChanged: (value) {
                                                    setState(() {
                                                      t = value;
                                                    });
                                                  },
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        date[index] = t;
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text('data'))
                                              ],
                                            ));
                                  },
                                  icon: Icon(Icons.edit))),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      date.removeAt(index);
                                    });
                                  },
                                  icon: Icon(Icons.delete))),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

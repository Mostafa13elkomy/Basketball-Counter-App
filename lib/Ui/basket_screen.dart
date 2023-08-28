import 'package:flutter/material.dart';

class BasketballPoints extends StatefulWidget {
  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor:const Color.fromARGB(255, 246, 246, 246),
          appBar: AppBar(
            backgroundColor:const Color.fromARGB(255, 251, 125, 28),
            title:const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
              const  Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                      const Text(
                      'Team A',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 38),
                    ),
                    Text(
                      '$teamApoints',
                      style: const TextStyle(color: Colors.black, fontSize: 160),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(140, 60),
                      ),
                      onPressed: () {
                        teamApoints++;
                        setState(() {});
                      },
                      child:const Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize:const Size(140, 60),
                      ),
                      onPressed: () {
                        teamApoints += 2;
                        setState(() {});
                      },
                      child:const Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 10),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize:const Size(140, 60),
                      ),
                      onPressed: () {
                        teamApoints += 3;
                        setState(() {});
                      },
                      child:const Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                const VerticalDivider(
                  color: Color.fromARGB(255, 201, 49, 49),
                  thickness: 1,
                ),
                const Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                  const Column(
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 38),
                        ),
                      ],
                    ),
                    Text(
                      '$teamBpoints',
                      style:const TextStyle(color: Colors.black, fontSize: 160),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(140, 60),
                      ),
                      onPressed: () {
                        teamBpoints++;
                        setState(() {});
                      },
                      child:const Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(140, 60),
                      ),
                      onPressed: () {
                        teamBpoints += 2;
                        setState(() {});
                      },
                      child:const Text(
                        'Add 2 point',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.982),
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(140, 60),
                      ),
                      onPressed: () {
                        teamBpoints += 3;
                        setState(() {});
                      },
                      child:const Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                )
              ]),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize:const Size(140, 60),
                    ),
                    onPressed: () {
                      teamApoints = 0;
                      teamBpoints = 0;
                      setState(() {});
                    },
                    child:const Text(
                      'Reset',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

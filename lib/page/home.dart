import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String routeName = " home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var onClickA = 0;
  var onClickB = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Points Counter",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$onClickA",
                        style: const TextStyle(fontSize: 80),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          onClickA += 1;
                          setState(() {});
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          onClickA += 2;
                          setState(() {});
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          onClickA += 3;
                          setState(() {});
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                  width: 2,
                  endIndent: 50,
                  indent: 50,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team B",
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$onClickB",
                        style: const TextStyle(fontSize: 80),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          onClickB += 1;
                          setState(() {});
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          onClickB += 2;
                          setState(() {});
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          onClickB += 3;
                          setState(() {});
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            color: Colors.orange,
            onPressed: () {
              onClickB = 0;
              onClickA = 0;
              setState(() {});
            },
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

import 'package:baskball/cubit/counter_cubit.dart';
import 'package:baskball/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  static String routeName = " home";

  @override
  Widget build(BuildContext context) {
    var blocProvider = BlocProvider.of<CounterCubit>(context);
    // TODO: implement build
    // < class name cubit , class name state>
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
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
                            blocProvider.onClickA.toString(),
                            style: const TextStyle(fontSize: 80),
                          ),
                          MaterialButton(
                            color: Colors.orange,
                            onPressed: () {
                              blocProvider.teamIncrement(
                                  team: 'A', buttonNumber: 1);
                            },
                            child: const Text(
                              "Add 1 point",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          MaterialButton(
                            color: Colors.orange,
                            onPressed: () {
                              blocProvider.teamIncrement(
                                  team: 'A', buttonNumber: 2);
                            },
                            child: const Text(
                              "Add 2 point",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          MaterialButton(
                            color: Colors.orange,
                            onPressed: () {
                              blocProvider.teamIncrement(
                                  team: 'A', buttonNumber: 3);
                            },
                            child: const Text(
                              "Add 3 point",
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
                          const Text(
                            "Team B",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            blocProvider.onClickB.toString(),
                            style: const TextStyle(fontSize: 80),
                          ),
                          MaterialButton(
                            color: Colors.orange,
                            onPressed: () {
                              blocProvider.teamIncrement(
                                  team: 'B', buttonNumber: 1);
                            },
                            child: const Text(
                              "Add 1 point",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          MaterialButton(
                            color: Colors.orange,
                            onPressed: () {
                              blocProvider.teamIncrement(
                                  team: 'B', buttonNumber: 2);
                            },
                            child: const Text(
                              "Add 2 point",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          MaterialButton(
                            color: Colors.orange,
                            onPressed: () {
                              blocProvider.teamIncrement(
                                  team: 'B', buttonNumber: 3);
                            },
                            child: const Text(
                              "Add 3 point",
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
                  blocProvider.resetPoint();
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },

      //using when don't return new widget
      listener: (context, state) {
        // if(state is CounterAIncrementState){
        //   countA =blocProvider.onClickA;
        // }else if(state is CounterBIncrementState){
        //   countB = blocProvider.onClickB;
        // }
      },
    );
  }
}

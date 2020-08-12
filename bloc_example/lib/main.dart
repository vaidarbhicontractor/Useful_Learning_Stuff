import 'package:bloc_example/CounterBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoc Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueAccent[50],
      ),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder<CounterBloc, int>(
            builder: (BuildContext context, int state) {
              return Text(
                "Counte Value : $state",
                style: TextStyle(fontSize: 30),
              );
            },
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("increment"),
                onPressed: () {
                  _counterBloc.add(CounterEvents.increment);
                },
              ),
              RaisedButton(
                child: Text("decrement"),
                onPressed: () {
                  _counterBloc.add(CounterEvents.decrement);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

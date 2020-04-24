import 'package:blocpatten/src/bloc/home_bloc.dart';
import 'package:blocpatten/src/model/bloc_int.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Created by Jai on 24,April,2020

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

            // update the data of increment number via stream

            StreamBuilder<BlockInt>(
              stream: homeBloc.getIncrementData,
              builder: (context, snapshot) {
                // if data ser data to counter variable  the increment data
                if(snapshot.hasData) _counter = snapshot.data.id;
                return Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> homeBloc.incrementValue(_counter) ,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
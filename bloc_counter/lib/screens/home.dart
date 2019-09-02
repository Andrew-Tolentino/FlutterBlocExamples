import 'package:flutter/material.dart';
import '../blocs/counter_bloc/counter_bloc_barrel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterBloc _counterBloc = new CounterBloc();

  // Dispose the bloc to prevent memory leaks
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _counterBloc.dispose();
  }

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
              'Current Counter:',
            ),

            BlocBuilder(
              bloc: _counterBloc,
              builder: (context, CounterState) {
                int counter = (CounterState as FooCounterState).counter;
                return Text('$counter', style: TextStyle(fontSize: 36),);
              },
            ),
            
            IconButton(
                icon: Icon(Icons.keyboard_arrow_up),
                onPressed: () {
                  _counterBloc.dispatch(CounterIncrement());
                }
            ),
            
            IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: () {
                  _counterBloc.dispatch(CounterDecrement());
                },
            )


          ],
        ),
      ),
    );
  }
}

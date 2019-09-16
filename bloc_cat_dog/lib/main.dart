import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/animal_live/bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'BLoC: Cat and Dog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _string = "https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  AnimalLiveBloc _animalLiveBloc = AnimalLiveBloc();

  @override
  void dispose() {
    super.dispose();
    _animalLiveBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            BlocBuilder(
              bloc: _animalLiveBloc,
              builder: (BuildContext context, AnimalLiveState state) {
                return Container(
                  alignment: Alignment.center,
                  child: Image.network((state is ShowingCat) ? state.url : (state as ShowingDog).url),
                );
              },
            ),

            Container(
              padding: EdgeInsets.only(top: 200.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => _animalLiveBloc.showDog(),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      width: 150,
                      height: 100,
                      child: Text("Dog", textAlign: TextAlign.center,),
                    ),
                  ),

                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => _animalLiveBloc.showCat(),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      width: 150,
                      height: 100,
                      child: Text("Cat", textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


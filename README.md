# flutter_bloc_patten
Simple demo app using flutter bloc pattern 

***
> ### `pubspec.yaml`
add dependency 
`rxdart: ^0.24.0`


***


> ### `HomeBloc.dart`  add logic code on it
```
class HomeBloc extends BaseBloc<BlockInt> {
  Stream<BlockInt> get getIncrementData => fetcher.stream;

  incrementValue(int value)  {
    BlockInt int =  BlockInt();
    int.id = value + 1;
    fetcher.sink.add(int);
  }

  @override
  dispose() {
    return super.dispose();
  }
}
final homeBloc = HomeBloc();
```
***
> ### `MyHomePage.dart`  click to increment int
```
 floatingActionButton: FloatingActionButton(
        onPressed: ()=> homeBloc.incrementValue(_counter) ,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
```
***
> ### `MyHomePage.dart` update data on Text
```
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
```


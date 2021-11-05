import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewBass(),
    );
  }
}

class ListViewBass extends StatefulWidget {
  const ListViewBass({Key? key}) : super(key: key);

  @override
  _ListViewBassState createState() => _ListViewBassState();
}

class _ListViewBassState extends State<ListViewBass> {
  var data = generateWordPairs().take(100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List view bassic - lesson 3"),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                var wp = data.elementAt(index);
                return Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 15),
                          )),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.face),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                        ],
                      ),
                      title: Text(
                        wp.asPascalCase,
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ),
                  ),
                );
              }),
          // child: ListView(
          //   children: [
          //     Text(data[0],style: TextStyle(fontSize: 20,color: Colors.red),),
          //      Text(data[1],style: TextStyle(fontSize: 20,color: Colors.red),),
          //       Text(data[2],style: TextStyle(fontSize: 20,color: Colors.red),),

          //   ],
          // ),
        ));
  }
}

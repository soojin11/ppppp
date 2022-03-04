import 'package:flutter/material.dart';

class ListViewPadding extends StatelessWidget {
  const ListViewPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: ListView(
            children: List.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        dense: true,
                        title: Text('타이틀'),
                        tileColor: Colors.grey,
                        trailing: Container(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          width: 50,
                          // height: 25,

                          color: Colors.blue[900],
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(10),
                          //     color: Colors.blue[900]),
                          child: Center(child: Text('123')),
                        ),
                      ),
                    ))),
      ),
    );
  }
}

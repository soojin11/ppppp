import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stack연습'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            child: Container(
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (_, i) => Container(
                            color: Colors.amber,
                            child: Text("공지$i"),
                          )),
                )),
          ),
          Positioned(
            left: 20,
            child: Container(
              child: const Center(
                child: Text(
                  '공지사항',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue, border: Border.all(color: Colors.black)),
            ),
          )
        ],
      ),
    );
  }
}

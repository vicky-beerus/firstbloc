import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Bloc"),
      ),
      body: Container(
        height: h,
        width: w,
        child: Column(
          children: [
            SizedBox(
              height: h * 0.05,
              width: w,
            ),
            Container(
              height: h * 0.2,
              width: w,
              color: Colors.blue,
              child: Center(
                  child: Text(
                "0",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_rounded),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_rounded))
          ],
        ),
      ),
    );
  }
}

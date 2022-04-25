import 'package:flutter/material.dart';

// import 'layout2.dart';

class Layout1 extends StatelessWidget {
  const Layout1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      // appBar: AppBar(
      //   title: const Text(''),
      // ),
      body: Center(
        child: Text('1'),
      ),
    //   floatingActionButton: FloatingActionButton(
    //       child: const Icon(Icons.arrow_right),
    //       onPressed: () => Navigator.of(context).push(MaterialPageRoute(
    //             builder: (context) => Layout2(),
    //           ))),
    );
  }
}
import 'package:flutter/material.dart';

// import 'layout3.dart';

class Layout2 extends StatelessWidget {
  const Layout2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      // appBar: AppBar(
      //   title: const Text(''),
      // ),
      body: Center(
        child: Text('2'),
      ),
      // floatingActionButton: FloatingActionButton(
      //     child: const Icon(Icons.arrow_right),
      //     onPressed: () => Navigator.of(context).push(MaterialPageRoute(
      //           builder: (context) => Layout3(),
      //         ))),
    );
  }
}

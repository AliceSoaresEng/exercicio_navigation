import 'package:exercicio_navigation/ambientes/layout1.dart';
import 'package:exercicio_navigation/ambientes/layout2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  final GlobalKey<NavigatorState> _keyMenu = GlobalKey();
  //final GlobalKey<NavigatorState> _keyLayout = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parte 01'),
      ),
      body: Row(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: 100.0,
            height: double.infinity,
            child: Positioned(
              bottom: 0,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Expanded(
                  child: IconButton(
                    iconSize: 35,
                    icon: const Icon(
                      Icons.arrow_circle_left_outlined,
                    ),
                    onPressed: () {
                      if (_keyMenu.currentContext != null) {
                        Navigator.of(_keyMenu.currentContext!)
                            .pushNamed('first');
                      }
                    },
                  ),
                ),
                // child: const Text('Anterior')),

                Expanded(
                  child: IconButton(
                    iconSize: 35,
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                    ),
                    onPressed: () {
                      if (_keyMenu.currentContext != null) {
                        Navigator.of(_keyMenu.currentContext!)
                            .pushNamed('second');
                      }
                    },
                    // child: const Text('Próximo')),
                  ),
                ),
              ]),
            ),
          ),

          Expanded(
            //height: 200,
            //width: 100,
            //color: Colors.red,
            child: Navigator(
              key: _keyMenu,
              initialRoute: 'first',
              onGenerateRoute: (settings) {
                late Widget page;
                if (settings.name == 'first') {
                  page = const Layout1();
                } else {
                  page = const Layout2();
                }
                return PageRouteBuilder(
                  pageBuilder: (_, __, ___) => page,
                );
              },
            ),
          ),
          // ignore: sized_box_for_whitespace
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'pages/Home/HomePage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListaTransferencias(),
      theme: ThemeData.dark(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:icon_store/pages/search.dart';

import 'pages/home.dart';

void main()=>runApp(IconStore());

class IconStore extends StatefulWidget {
  const IconStore({Key? key}) : super(key: key);

  @override
  State<IconStore> createState() => _IconStoreState();
}

class _IconStoreState extends State<IconStore> {
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/":(context)=>HomePage(),
        "/search":(context)=>SearchIcon(),
      },
    );
  }
}



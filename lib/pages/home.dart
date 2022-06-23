

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'http_file.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   var url =Uri.parse("https://api.iconfinder.com/v4/iconsets?count=100");
       List<dynamic>IconData=[];

  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer X0vjEUN6KRlxbp2DoUkyHeM0VOmxY91rA6BbU5j3Xu6wDodwS0McmilLPBWDUcJ1'
  };

 Future<String>getIconsetsData() async{
   var response = await http.get(url,headers:requestHeaders);
   // print(response.body);
   var dataConverted=jsonDecode(response.body);
   

  setState((){

    IconData = dataConverted['iconsets'];
    print(IconData);

  });
  return "success";
 }






  @override
  void initState(){
    super.initState();
    this.getIconsetsData();
  }
 
  
  

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.black,
          ),
        ),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                "Icon Store",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: TabBar(
                tabs: [
                  InkWell(
                    onTap: () {
                      // print("dsdsds");
                      getIconsetsData();
                      Navigator.defaultRouteName(),
                    },
                    child: Tab(
                      text: "Icon Sets",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("jhgjtghg");
                      //fetchIcon();
                    },
                    child: Tab(text: "Icons"),
                  )
                ],
              ),
            ),
            body: ListView.builder(
                itemCount: IconData?.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    child: SingleChildScrollView(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        Card(

                          child:Column(


                              children:[ Text("${IconData?[index]['name']}"),
                                Text("${IconData?[index]['type']}"),
                                Text("\$${IconData?[index]['prices']?[0]['price']}"),
                                Text("${IconData?[index]['author']['name']}"),
                                Text("${IconData?[index]['prices']?[0]['license']['name']}"),
                                Text("\$${IconData?[index]['is_premium']}"),
                              ]

                            ),
                          ),

                      ],
                    ),
                    ),
                  );
                },
            )

          ),
        ),
      );
    }
  }



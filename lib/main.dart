import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF3889CC),
          title: Text('Ecommerce',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Row(),
        )
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.zero)),
      backgroundColor: Color(0xFF0E2C3D),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFFDFDFDE), width: 0.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Color(0xFFFDFDFDE)),
                hintText: "Search",
                fillColor: Color(0xFF0E2C3D),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration( //                    <-- BoxDecoration
              border: Border(
                  bottom: BorderSide(color: Color(0xFFFDFDFDE),),
                ),
            ),
            child: ListTile(
              title: Text('Home', style: TextStyle(color: Colors.white),),
              onTap: () => {},
            ),
          ),
          Container(
            decoration: BoxDecoration( //                    <-- BoxDecoration
              border: Border(
                  bottom: BorderSide(color: Color(0xFFFDFDFDE),),
                ),
            ),
            child: ListTile(
              title: Text('Shop', style: TextStyle(color: Colors.white),),
              onTap: () => {},
            ),
          ),
          Container(
            decoration: BoxDecoration( //                    <-- BoxDecoration
              border: Border(
                  bottom: BorderSide(color: Color(0xFFFDFDFDE),),
                ),
            ),
            child: ListTile(
              title: Text('Vendor', style: TextStyle(color: Colors.white),),
              onTap: () => {},
            ),
          ),
          ListTile(
            title: Text('Blog', style: TextStyle(color: Colors.white),),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
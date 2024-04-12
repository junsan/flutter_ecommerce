import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

final List<String> imgList = [
   'images/slider_1.jpg',
   'images/slider_2.jpg',
   'images/slider_3.jpg'
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0E2C3D)),
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
        body: Container(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
          ),
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

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Men\'s Fashion',
                              style: TextStyle(
                                color: Color(0xFF0E2C3D),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF3889CC)),
                                
                              ),
                              onPressed: () {

                            }, 
                              child: Text('Shop Now', style: TextStyle(color: Colors.white),) 
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

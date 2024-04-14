import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

final List<String> imgList = [
   'images/slider_1.jpg',
   'images/slider_2.jpg',
   'images/slider_3.jpg'
];

final List<String> productList = [
   'images/pro2_2.jpeg',
   'images/pro3_3.jpeg',
   'images/pro4_4.jpeg',
   'images/pro9_9.jpeg'
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
        backgroundColor: Color(0xFFf5f6f7)
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
        body: SingleChildScrollView(
          child: Column(
            children: [
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage( 
                      image: AssetImage("images/flash_sell_bg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text('Flash Sale'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(         
                              margin: EdgeInsets.symmetric(horizontal: 10),                
                              color: Color(0xFF1E4B55),
                              height: 120,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  Text('88', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900
                                    ),),
                                  Divider(
                                    height: 10,
                                    color: Colors.white, 
                                    thickness: 1.0,
                                  ),
                                  Text('Days', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500
                                  ),),
                                ],
                              )
                            ),
                          ),
                          Expanded(
                            child: Container(   
                              margin: EdgeInsets.symmetric(horizontal: 10),                       
                              color: Color(0xFF1E4B55),
                              height: 120,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  Text('14', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900
                                    ),),
                                  Divider(
                                    height: 10,
                                    color: Colors.white, 
                                    thickness: 1.0,
                                  ),
                                  Text('Hours', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500
                                  ),),
                                ],
                              )
                            ),
                          ),
                          Expanded(
                            child: Container(    
                              margin: EdgeInsets.symmetric(horizontal: 10),                      
                              color: Color(0xFF1E4B55),
                              height: 120,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  Text('45', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900
                                    ),),
                                  Divider(
                                    height: 10,
                                    color: Colors.white, 
                                    thickness: 1.0,
                                  ),
                                  Text('Minutes', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500
                                  ),),
                                ],
                              )
                            ),
                          ),
                          Expanded(
                            child: Container(         
                              margin: EdgeInsets.symmetric(horizontal: 10),                 
                              color: Color(0xFF1E4B55),
                              height: 120,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  Text('23', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900
                                    ),),
                                  Divider(
                                    height: 10,
                                    color: Colors.white, 
                                    thickness: 1.0,
                                  ),
                                  Text('Seconds', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500
                                  ),),
                                ],
                              )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF3889CC)),
                          
                        ),
                        onPressed: () {
          
                      }, 
                        child: Text('See More', style: TextStyle(color: Colors.white),) 
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: productImageSliders,
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
            ],
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
                        height: 400,
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


    final List<Widget> productImageSliders = productList
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
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF3889CC)),
                                    
                                  ),
                                  onPressed: () {
                                
                                }, 
                                  child: Text('ADD TO CART', style: TextStyle(color: Colors.white),) 
                                ),
                                RatingBar.builder(
                                  initialRating: 4,
                                  ignoreGestures: true,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Text('Electronice'),
                                Text('Men\'s Casual Fashion Watch'),
                                Text('\$159 \$200')
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

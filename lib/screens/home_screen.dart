import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: isDrawerOpen
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            )
          : BoxDecoration(color: Colors.white),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 230;
                              yOffset = 150;
                              scaleFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          },
                          icon: Icon(Icons.menu),
                        ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.location_on,
                              color: Color(0xff376565),
                            ),
                          ),
                          Text(
                            'Kyiv, ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Ukraine'),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/pet-cat1.png'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30.0,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff376565)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: Icon(Icons.search,color: Colors.grey[400],),
                        hintText: 'Search pet',
                        hintStyle: TextStyle(letterSpacing: 1,color: Colors.grey[400]),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Icon(Icons.tune_sharp,color: Colors.grey[400]),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

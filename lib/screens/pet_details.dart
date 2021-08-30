

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/configuration/configuration.dart';
import 'package:share/share.dart';


// ignore: must_be_immutable
class PetDetails extends StatefulWidget {

  PetDetails({this.catDetailsMap});

  Map catDetailsMap;

  @override
  _PetDetailsState createState() => _PetDetailsState();

}


class _PetDetailsState extends State<PetDetails> {

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [

                Expanded(
                  child: Container(
                    color: (widget.catDetailsMap['id'] % 2 == 0) ? Colors.blueGrey[200] : Colors.orangeAccent[200],
                    child: Align(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: 'pet${widget.catDetailsMap['id']}',
                        child: Image.asset(widget.catDetailsMap['imagePath']),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                  ),

                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Sharing Pet File"),
                      ));
                    },
                    icon: Icon(
                      Icons.ios_share,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(isFavorite){
                            isFavorite = false;
                          }
                          else{
                            isFavorite = true;
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: isFavorite ? Icon(Icons.favorite_rounded,color: Colors.redAccent,) : Icon(Icons.favorite_border_rounded,color: Colors.white,),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: shadowList,
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Text('Adoption',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        ),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: shadowList,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../retro_button.dart';
import 'my_flutter_app_icons.dart';

class ProductPage extends StatefulWidget {
  String text;
  String image;
  String owner;
  String amount;
  ProductPage({this.text,this.owner,this.amount,this.image});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: height*0.01,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RetroButton(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back
                            ),
                          ),
                          upperColor: Colors.white,
                          lowerColor: Colors.black,
                          width: 35,
                          height: 35,
                          borderColor: Colors.white,
                        ),
                        RetroButton(
                          child: Padding(
                            padding: const EdgeInsets.only(top:7,left: 6),
                            child: Icon(
                              MyFlutterApp.cart,
                              size: 32,
                            ),
                          ),
                          upperColor: Colors.white,
                          lowerColor: Colors.black,
                          width: 35,
                          height: 35,
                          borderColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'pix M 8pt',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            height: 1.3829787234042554,
                            shadows: [
                              Shadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              )
                            ],
                          ),
                          children: [
                            TextSpan(
                              text: widget.text,
                              style: TextStyle(
                                fontSize: 47,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Column(
                        children: [
                          Text(
                            'YEAR'
                          ),
                          Text(
                            'YEAR'
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    widget.owner,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: height*0.01,),
                  Container(
                    width: width*0.35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'data'.toUpperCase(),
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 13
                              ),
                            ),
                            Text(
                              'data sv',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'data'.toUpperCase(),
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 13
                              ),
                            ),
                            Text(
                              'data sv',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  RetroButton(
                    child: Center(
                      child: Text(
                        widget.amount,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff38d0d0),
                          fontSize: 23
                        ),
                      ),
                    ),
                    upperColor: Colors.white,
                    lowerColor: Colors.black,
                    width: width*0.35,
                    height: 35,
                    borderColor: Colors.white,
                  ),
                  SizedBox(height: height*0.05,),
                  discription()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget discription(){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.55,
      width: width,
      child: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(10, 10),
            child: Container(
              width: width*0.9,
              height: height*0.54,
              decoration: BoxDecoration(
                color: const Color(0xff181818),
              ),
            ),
          ),
          Container(
            width: width*0.9,
            height: height*0.54,
            decoration: BoxDecoration(
              color: const Color(0xff38d0d0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*0.05,),
                  SizedBox(
                    width: width*0.4,
                    child: Text(
                      'HISTORICAL SIGNIFICANCE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: height*.005,),
                  Text(
                    'kavkbkjbkbvkjbkbksbjsbjbjdnvlnvksjvbksbvskvskvskvkjsbvkjsbvksbvkjsbvksbkbsbvkvkvskssvsvsbdbfdbd',
                    style: TextStyle(
                        // fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                  ),
                  SizedBox(height: height*.02,),
                  Text(
                    'HISTORICAL SIGNIFICANCE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: height*.005,),
                  Text(
                    'kavkbkjbkbvkjbkbksbjsbjbjdnvlnvksjvbksbvskvskvskvkjsbvkjsbvksbvkjsbvksbkbsbvkvkvskssvsvsbdbfdbd',
                    style: TextStyle(
                        // fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                  ),
                ],
              ),
            )
          ),
          Transform.translate(
            offset: Offset(120, -180),
            child: Image.asset(
              widget.image,
              width: 300,height: 300,
            ),
          ),
          Transform.translate(
            offset: Offset(210, 375),
            child: Row(
              children: [
                RetroButton(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xff38d0d0),
                        ),
                        Text(
                          'ADD TO CART',
                          style: TextStyle(
                            color: Color(0xff38d0d0),
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ),
                  upperColor: Colors.white,
                  lowerColor: Colors.black,
                  width: width*0.35,
                  height: height*0.05,
                  borderColor: Colors.white,
                )
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(145, 375),
            child: Row(
              children: [
                RetroButton(
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xff38d0d0),
                    ),
                  ),
                  upperColor: Colors.white,
                  lowerColor: Colors.black,
                  width: width*0.12,
                  height: height*0.05,
                  borderColor: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
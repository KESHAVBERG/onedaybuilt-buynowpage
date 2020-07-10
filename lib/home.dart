import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // parent Container
      Container(
        alignment: Alignment.center,
        height: 500,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: Image.asset("img/shoe.png" ,height: 1000, width: 500,),
      ),
      // app bar
      Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ],
        ),
      ),
      // details
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          color: Colors.white,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "price: ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "\$30",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ]),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    // padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    child: Text("buy Now"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "decription: ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      )
    ]));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Cars",style: TextStyle(color: Colors.red,fontSize: 25),),
        brightness: Brightness.light,
        actions: <Widget>[
          Icon(Icons.notifications_none,color: Colors.red,),
          SizedBox(width: 20,),
          Icon(Icons.shopping_cart,color: Colors.red,),
          SizedBox(width: 10,)
        ],
      ),
      // #bodyPart
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              // #horizontalScroolview
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    singletab(true,"All"),
                    singletab(false,"Red"),
                    singletab(false,"Black"),
                    singletab(false,"Green"),
                    singletab(false,"Yellow")
                  ],
                ),
              ),
              SizedBox(height: 20,),
              // #verticalScroolView
              makepage("assets/images/im_car1.jpg",),
              makepage("assets/images/im_car2.jpg",),
              makepage("assets/images/im_car3.jpg",),
              makepage("assets/images/im_car4.png",),
              makepage("assets/images/im_car5.jpg",),
            ],
          ),
        ),
      ),
    );
  }
// #tabistrue
  Widget singletab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: type ? Colors.red: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type?20:17,color: type?Colors.white:Colors.black),),
        ),
      ),
    );
  }
// #imageListCard
  Widget imagelist(String item){
    return Card(
      child: Container(
        padding: EdgeInsets.all(15),
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(item)
          )
        ),
      ),
    );
  }
// addImagestoCard
  Widget makepage(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
          color: Colors.grey,
          blurRadius: 8,
          offset: Offset(0,5)
          )
        ]
      ),
      // #shadeOfCard
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2)
                ]
            )
        ),
        // #infoOfCard
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text("100\$",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
              // #likeIcon
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.red,
                ),
                child: Center(
                  child: Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotels_news/cardlayout.dart';
import 'package:flutter_hotels_news/hotels_data.dart';
import 'package:flutter_hotels_news/quant_hotels.dart';
import 'package:flutter_hotels_news/flutter_rating_bar.dart';

void main() {
  runApp(new MaterialApp(
    home: Hotels(),
    title: "Hotels Book Trial",
  ));
}

class Hotels extends StatefulWidget {
  @override
  _HotelsState createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                iconTheme: IconThemeData(
                  color: Colors.white,
                  size: 28,
                ),
              ),
              child: Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blue[900],
                      Colors.blue[800],
                      Colors.blue[700],
                      Colors.blue[600],
                      Colors.blue[500],
                      Colors.blue[400],
                      Colors.blue[300],
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
//

                    children: <Widget>[
//                      Container(height: 50,width: 50,color: Colors.red,),
                      IconButton(
                        icon: (Icon(Icons.arrow_back_ios)),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Hong Kong",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              'Nov 28- Nov 30 - 1 room, 2 adult',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.swap_vert),
                          SizedBox(width: 10),
                          Icon(Icons.filter_list),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15),
                itemCount: hotels.length,
                itemBuilder: (_, index) {
                  return _cardBuilder(size, hotels[index]);
                },

              ),

            ),
            SizedBox(height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
//
//class Hotels extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    }
//}
//
//
//
//

Widget _card(CountHotelModel item) {
  return Container(
      child: Text(item.name), height: 120, width: 200, color: Colors.red);
}

Widget _cardBuilder(Size size, CountHotelModel item) {
  bool isFavorite = false;
  return Padding(
    padding: EdgeInsets.only(top: 25,bottom: 5),

      child: InkWell(
        onTap: (){

        },
        child: Container(

            height: 250,
            width: size.width,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(0),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 190,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                          image: DecorationImage(
                            image: AssetImage('${item.img}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: size.width,
                          decoration: BoxDecoration(
//                      color: Colors.red,

                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    item.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
//                            SizedBox(height: 2),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        size: 18,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Hong Kong Island",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      RatingBarIndicator(
                                        rating: item.reviews,
                                        itemCount: 5,
                                        itemSize: 18.0,
                                        physics: BouncingScrollPhysics(),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Text(
                                        "${item.reviews}/5 reviews",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "\$ ${item.price}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Per Night",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 15,
               top: 15,
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.blue[800],
                            Colors.blue[700],
                            Colors.blue[300],
                          ],
                        ),
                      ),
                      child: _icon(),
                    ),
                  ),
],

              ),
            )),
      ));


}

class _icon extends StatefulWidget {
  @override
  __iconState createState() => __iconState();
}

class __iconState extends State<_icon> {
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30.0),
      onTap: () {
        isFavorite = !isFavorite;
      setState(() {

      });
        },
      child: isFavorite
          ? Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 22,
            )
          : Icon(
              Icons.favorite,
              color: Colors.red,
              size: 22,
            ),
    );
  }
}

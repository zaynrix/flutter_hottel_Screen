import 'package:flutter/material.dart';
import 'hotels_data.dart';



class cardlayout extends StatefulWidget {
  @override
  _cardlayoutState createState() => _cardlayoutState();
}

class _cardlayoutState extends State<cardlayout> {
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
                                "ddddddddddddd",
//                            ${name}
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
                    return null;
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

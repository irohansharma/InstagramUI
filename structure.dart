import 'package:flutter/material.dart';
//import 'color.dart';

class StrucTure extends StatelessWidget {
  String dp, username, photo, caption;

  int i = 0;
  Color choosecolor = Colors.black;
  int check = 1;

  StrucTure(this.dp, this.username, this.photo, this.caption);

//  BuildContext context1;
  // BuildContext get context=>colorselector(caption, context);
  Color colorselector(String caption) {
    debugPrint("Called");
    debugPrint("${caption.length}");
    //for (var char in caption.splitChars())
    for (int i = 0; i < caption.length; i++) {
      debugPrint("${i}");
      if (caption[i] == "#") {
        check = 0; //choosecolor=
        return Colors.indigo;
      }
      else if (check == 0 && caption[i] != " ") {
        //choosecolor=
        return Colors.indigo;
      }
      else {
        check = 1;
        //choosecolor=
        return Colors.black;
      }
      /* Text(caption[i], style: TextStyle(
        fontSize: 18.5, fontStyle: FontStyle.normal,
        color: choosecolor
    )*/


    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white24,
        child: (
            Padding(
              padding: EdgeInsets.all(0.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(

                      children: <Widget>[
                        Row(
                          // child:width:double.infinity,

                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 60,
                              // wrong -color: Colors.black54,
                              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //color: Theme.of(context).primaryColor,
                                  //right-   color: Colors.black54,
                                  //   color: Colors.black12,
                                  image: DecorationImage(
                                      image: NetworkImage(dp),
                                      fit: BoxFit.fill
                                  ),

                              ),
                            ),

                            Container(
                                height: 60,
                                width:double.tryParse(username),
                                // color: Colors.black54,
                                //   color: Colors.black12,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Align(
                                  // padding: const EdgeInsets.all(8.0),
                                  alignment: Alignment.centerLeft,
                                  child: Text(username, style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.blue),),
                                ),

                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:10),
                          child: Container(
                            // child:
                            height: 250,
                            width: double.infinity,
                    
                            decoration: BoxDecoration(
                            
                                image: DecorationImage(
                                  image: NetworkImage(photo),
                                  fit: BoxFit.contain,)
                                    ,boxShadow: [
                              new BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15.0,
                              ),
                            ]
                            ),
                          ),
                        ),
                        Container(

                            height: double.tryParse(caption),
                            width: double.infinity,
                            margin: EdgeInsets.fromLTRB(8, 14, 0, 2),


                            //   color: Colors.black12,
                            child: Align(
                              // padding: const EdgeInsets.all(8.0),
                                alignment: Alignment.centerLeft,

                                child: Text(caption, style: TextStyle(
                                    fontSize: 14.5, fontStyle: FontStyle.normal,
                                    color: colorselector(caption)
                                ) 

                                )

                            ),
                            decoration: new BoxDecoration(boxShadow: [
                              new BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15.0,
                              ),
                            ])

                        )
                      ]
                  ),
                ),

              ),
            )
        ),
        decoration: new BoxDecoration(boxShadow: [
          new BoxShadow(
            color: Colors.black54,
            blurRadius: 5.0,
          ),
        ])
    );
  }
}


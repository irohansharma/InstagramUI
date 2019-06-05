import 'package:flutter/material.dart';
import 'BodyClass.dart';
void main()=>runApp(mainclass());

class mainclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: //Center(
            // child:
            Text(
              "Instagram",
              style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic),
            ),
            //),
            backgroundColor: Colors.white,
            leading:Icon(Icons.camera_enhance,color: Colors.black,),
            //toolbarOpacity:1.0 ,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.near_me,color: Colors.black,),
              ),

            ],
          ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.camera_alt),
                  title: new Text('Camera'),
                ),
                /*BottomNavigationBarItem(
                    icon: new Icon(Icons.search),
                    title: new Text('Search')
                ),*/
                BottomNavigationBarItem(
                    icon: new Icon(Icons.person),
                    title:new Text('Profile')
                )
              ],
            ),
          body: bodyclass(),

        )
    );
  }
}

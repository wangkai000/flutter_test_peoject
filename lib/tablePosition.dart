

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class tablePosition extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<tablePosition> {
  var pageName="全部桌位";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              Text('${pageName}'),
              IconButton(
                  icon: new Icon(Icons.keyboard_arrow_down),
                  tooltip: 'Add Alarm',
                  onPressed: () {
                    print('点击了icon');
                    showModalBottomSheet(
                        context: context,

                        builder: (BuildContext context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min, // 设置最小的弹出
                            children: <Widget>[
                               ListTile(

                                title:  Text("我关注的桌位",
                                  textAlign:TextAlign.center,
                                  style:TextStyle(

                                    color:Color.fromRGBO(255, 89, 75, 1),
                                  ),
                                ),
                                onTap: () async {

                                },
                              ),
                              ListTile(

                                title:  Text("全部桌位",
                                  textAlign:TextAlign.center,
                                  style:TextStyle(

                                    color:Color.fromRGBO(255, 89, 75, 1),
                                  ),
                                ),
                                onTap: () async {

                                },
                              ),
                              ListTile(

                                title:  Text("取消",
                                  textAlign:TextAlign.center,
                                  style:TextStyle(

                                    color:Color.fromRGBO(0, 121, 255, 1),
                                  ),
                                ),
                                onTap: () async {
                                  Navigator.pop(context, 'Yep!');

                                },
                              ),
                            ],
                          );
                        }
                    );

                  }
              ),
            ]

        ),
          actions: <Widget>[

          ],

        backgroundColor:Color.fromRGBO(247, 251, 247, 1),
        centerTitle:true,
//        elevation: 0.5,


      ),


        body:Container(
          padding:const EdgeInsets.fromLTRB(16, 0, 16, 0),

              child: Stack(
              children: <Widget>[

                Positioned(

                  left:0.0,
                  right: 0.0,

                  top:0,
                  child: Container(
                    height:38,
                    color:Colors.deepOrange,

                  ),
                ),



                 ]
              )

        ),
    );
  }
}




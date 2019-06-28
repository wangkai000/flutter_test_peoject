import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class openingOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetHome();
  }
}

//必须createState
class WidgetHome extends StatefulWidget {
  @override
  openingOrderState createState() => openingOrderState();
}


class openingOrderState extends State<WidgetHome> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:new Text("开单"),
        backgroundColor:Color.fromRGBO(247, 251, 247, 1),
        centerTitle:true,
//        elevation: 0.5,


      ),
      body:Container(

          padding:const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child:Column(
              children: <Widget>[
                InkWell(
                  onTap:(){
                    print('跳转到全部桌位列表');
                  },
                  child: ListTile(
                    title: Text('桌台',
                      style:  TextStyle(
                              fontSize: 14,
                         ),
                    ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('请选择',
                            style:TextStyle(
                              fontSize: 14,
                                color:Color.fromRGBO(204, 204, 204, 1),
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  ),
                ),


//                GestureDetector(
//                  behavior: HitTestBehavior.translucent,
//                  onTap: () {
//                    print(111);
//                  },
//                  child: Container(
//
//                      height:55,
////                    color:Color.fromRGBO(111,222, 666, .9),
//                      child:Row(
//
//
//                        children: <Widget>[
//
//
//                      Expanded(
//                      child: Container(
////                                color: Colors.red,
//                                  padding: EdgeInsets.all(5.0),
//                                      child: new Text(
//                                              '桌台',
//                                              style: new TextStyle(
//                                                fontSize: 14,
//                                              ),
//                                      ),
//                                ),
//                        flex: 1,
//                      ),
//                      Expanded(
//                        child: Container(
//
//                          padding: EdgeInsets.all(5.0),
//                        ),
//                        flex: 3,
//                      ),
//                        Expanded(
//                          child: Container(
//
//                            padding: EdgeInsets.all(5.0),
//                            child:  Text(
//                              '请选择 >',
//                              textAlign:TextAlign.left,
//
//                              style: new TextStyle(
//                                fontSize: 14,
//                                color:Color.fromRGBO(204, 204, 204, 1),
//
//                              ),
//
//                            ),
//
//
//
//
//                          ),
//                          flex: 1,
//                        ),
//
//
//
//
//
//
//                        ],
//                      ),
//
//
//
//                  ),
//                ),



              ],
          ),


      ),

    );
  }

}

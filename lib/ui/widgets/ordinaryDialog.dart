import 'package:flutter/material.dart';
//import 'package:keman/utils/utils.dart';







         DialogStart(context,VoidCallback confirm, WidgetValue){
          showDialog(context: context,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Material(

                    type: MaterialType.transparency,

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width:300,
                        color: Colors.white,

                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height:20,


                            ),
                            Container(
                                constraints:  BoxConstraints(

                                  maxHeight: 300.0,

                                ),
                                padding:const EdgeInsets.fromLTRB(10, 26, 10, 30),
                                child:SingleChildScrollView(
//                                  scrollDirection:Axis.vertical,
                                  child:Column(
//                                    children: <Widget>[
//                                      Text("2333"),
//                                    ],
                                      children:WidgetValue,
                                  ),

                                )
                            ),
                            Container(
                              height:50,
                              child:Row(
                                children: <Widget>[
                                  Expanded(
                                    child: InkWell(

                                      onTap:(){
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        padding:const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: Container(
                                          height: 34.0,

                                          decoration:  BoxDecoration(
//                                            color:Color.fromRGBO(255, 255, 255, 1),
                                            border:  Border.all(color:Color.fromRGBO(255, 89, 75, 1), width: 1), // 边色与边宽度
                                            borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                                          ),
                                          child:Center(
                                            child: Text("取消",
                                              textAlign:TextAlign.center,
                                              style:TextStyle(
                                                fontSize: 16,
                                                color:Color.fromRGBO(255, 89, 75, 1),
                                              ),

                                            ),
                                          ),

                                        ),
                                      ),
                                    ),
                                    flex:1,
                                  ),



                                  Expanded(
                                    child: InkWell(
                                      onTap:confirm,

                                      child: Container(

                                        padding:const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: Container(
                                          height: 34.0,


                                          decoration:  BoxDecoration(
                                            color:Color.fromRGBO(1, 1, 1, 1),
//                                                                                  border:  Border.all(color:Color.fromRGBO(255, 89, 75, 1), width: 1), // 边色与边宽度
                                            borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                                            gradient:LinearGradient(
                                                colors: [Color.fromRGBO(255, 89, 75, 1), Color.fromRGBO(255, 30, 19, 1) ]),
                                          ),
                                          child:Center(

                                            child: Text("确定",
                                              textAlign:TextAlign.center,
                                              style:TextStyle(
                                                fontSize: 16,
                                                color:Color.fromRGBO(255, 255, 255, 1),
                                              ),

                                            ),
                                          ),

                                        ),
                                      ),
                                    ),
                                    flex:1,
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),



                      ),
                    ),
                  ),

                ],
              ),

              barrierDismissible: true
          );

        }



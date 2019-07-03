import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class  receivables extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<receivables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                resizeToAvoidBottomPadding: true, //输入框抵住键盘 true 默认
                appBar:AppBar(
                  title:new Text("收款"),
                  backgroundColor:Color.fromRGBO(247, 251, 247, 1),
                  centerTitle:true,
          //        elevation: 0.5,


                ),
                body:Container(  //SingleChildScrollView
                  child: Container(
                    padding:const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Column(

                            children: <Widget>[
                              Expanded(
                                child: Container(
                                    child:Column(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(

                                            child:Row(
                                              children: <Widget>[
                                                Text("桌号：",
                                                style:TextStyle(fontSize:14,color:Color.fromRGBO(102, 102, 102, 1)),
                                                ),
                                                Text("A666",
                                                  style:TextStyle(fontSize:14,color:Color.fromRGBO(51, 51, 51, 1)),
                                                ),

                                              ],
                                            ),

                                          ),
                                          flex: 1,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child:Center(
                                              child: Column(
                                                 children: <Widget>[
                                                    Image.asset("assets/images/icon10.png",
                                                      width:46,
                                                      height:46,
                                                    ),
                                                    Text("未付款，需收款",
                                                     style:TextStyle(fontSize: 12,color:Color.fromRGBO(51,51, 51, 1)),
                                                    ),
                                                     Container(

                                                       child: Row(
                                                         mainAxisSize: MainAxisSize.min,

                                                         children: <Widget>[
                                                           Text("¥",
                                                           textAlign:TextAlign.center,
                                                             style:TextStyle(fontSize:10,color:Color.fromRGBO(251, 77, 67, 1),fontWeight:FontWeight.w600),
                                                           ),
                                                           Text("160",
                                                             textAlign:TextAlign.center,
                                                             style:TextStyle(fontSize:14,color:Color.fromRGBO(251, 77, 67, 1),fontWeight:FontWeight.w700),
                                                           ),
                                                           Text(".88",
                                                             textAlign:TextAlign.center,
                                                             style:TextStyle(fontSize:10,color:Color.fromRGBO(251, 77, 67, 1),fontWeight:FontWeight.w600),
                                                           ),
                                                         ],
                                                       ),
                                                     ),

                                                   

                                                 ],
                                              ),
                                            ),


                                          ),
                                          flex: 2,
                                        ),
                                      ],
                                    ),

                                ),
                                flex: 1,
                              ),




                              Expanded(
                                child: Container(
                                   child:Column(
                                     children: <Widget>[
                                       Expanded(

                                          child:Container(

                                            child:Row(


                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text("应收金额",

                                                textAlign:TextAlign.start,

                                                style:TextStyle(fontSize:16,color:Color.fromRGBO(51, 51, 51, 1)),
                                                ),
                                                Text("¥${160.88}",

                                                  style:TextStyle(fontSize:14,color:Color.fromRGBO(51, 51, 51, 1)),
                                                ),
                                              ],
                                            ),

                                          ),
                                         flex:1,
                                       ),
                                       Expanded(

                                         child:Container(

                                           child:Row(


                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: <Widget>[
                                               Text("    消费金额",

                                                 textAlign:TextAlign.start,

                                                 style:TextStyle(fontSize:14,color:Color.fromRGBO(102, 102, 102, 1)),
                                               ),
                                               Text("¥${160.88}",

                                                 style:TextStyle(fontSize:14,color:Color.fromRGBO(51, 51, 51, 1)),
                                               ),
                                             ],
                                           ),

                                         ),
                                         flex:1,
                                       ),
                                       Expanded(

                                         child:Container(

                                           child:Row(


                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: <Widget>[
                                               Text("    优惠",

                                                 textAlign:TextAlign.start,

                                                 style:TextStyle(fontSize:14,color:Color.fromRGBO(102, 102, 102, 1)),
                                               ),
                                               Text("-¥${0.88}",

                                                 style:TextStyle(fontSize:14,color:Color.fromRGBO(255, 89, 75, 1)),
                                               ),
                                             ],
                                           ),

                                         ),
                                         flex:1,
                                       ),

                                     ],
                                   ),

                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(

                                    child:Column(
                                      children: <Widget>[
                                        Expanded(

                                           child:Container(
                                             child:Container(

                                               child:Row(


                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: <Widget>[
                                                   Text("折扣优惠",

                                                     textAlign:TextAlign.start,

                                                     style:TextStyle(fontSize:16,color:Color.fromRGBO(51, 51, 51, 1)),
                                                   ),

                                                 ],
                                               ),

                                             ),
                                           ),
                                          flex:2,
                                        ),
                                        Expanded(

                                          child:Container(
                                            child:Row(
                                              children: <Widget>[
                                              Expanded(
                                                child:Container(

                                                  padding:const EdgeInsets.fromLTRB(16, 3, 16, 3),

                                                  child:Container(
                                                    decoration:  BoxDecoration(
                                                      boxShadow: [BoxShadow(color: Color.fromRGBO(63, 66, 67, .3), offset: Offset(1.0, 1.0), blurRadius: 8.0, spreadRadius: 1.0), ],
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:BorderRadius.circular(12),
                                                      child: Container(
                                                        height:50,
                                                        padding:const EdgeInsets.fromLTRB(16, 3, 16, 3),
                                                        color:Color.fromRGBO(255, 255, 255, 1),
                                                         child:Row(
//                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: <Widget>[
                                                              Image.asset("assets/images/icon13.png",width: 26.0,height: 26.0,),
                                                             Text(" 整单打折",
                                                             textAlign:TextAlign.center,
                                                             style:TextStyle(
                                                               fontSize:14,
                                                               color:Color.fromRGBO(51, 51, 51, 1),
                                                             ),
                                                             ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),

                                                flex: 1,

                                              ),
                                                Expanded(
                                                  child:Container(

                                                    padding:const EdgeInsets.fromLTRB(16, 3, 16, 3),

                                                    child:Container(
                                                      decoration:  BoxDecoration(
                                                        boxShadow: [BoxShadow(color: Color.fromRGBO(63, 66, 67, .3), offset: Offset(1.0, 1.0), blurRadius: 8.0, spreadRadius: 1.0), ],
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:BorderRadius.circular(12),
                                                        child: Container(
                                                          height:50,
                                                          padding:const EdgeInsets.fromLTRB(16, 3, 16, 3),
                                                          color:Color.fromRGBO(255, 255, 255, 1),
                                                          child:Row(
//                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: <Widget>[
                                                              Image.asset("assets/images/icon14.png",width: 26.0,height: 26.0,),
                                                              Text(" 自定义减价",
                                                                textAlign:TextAlign.center,
                                                                style:TextStyle(
                                                                  fontSize:14,
                                                                  color:Color.fromRGBO(51, 51, 51, 1),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  flex: 1,

                                                ),
                                              ],
                                            ),
                                          ),
                                          flex:2,
                                        ),
                                        Expanded(

                                          child:Container(

                                          ),
                                          flex:1,
                                        ),
                                      ],
                                    ),
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(

                                  child:Column(
                                    children: <Widget>[
                                      Expanded(
                                        child:Container(
                                            child:Column(
                                              children: <Widget>[
                                                Container(

                                                  height:40.0,

                                                  child:MaterialButton(
                                                      color:Color.alphaBlend(Color.fromRGBO(255, 89, 75, 1), Color.fromRGBO(255, 30, 19, 1)),
                                                      textColor: Colors.white,
                                                      minWidth: 260.0,
                                                      shape:RoundedRectangleBorder(
                                                          borderRadius:BorderRadius.all(Radius.circular(20))
                                                      ),

                                                      child:Text("结账",
                                                          style:TextStyle(
                                                            fontSize:16,
                                                          )
                                                      ),

                                                      onPressed:(){
                                                        print("点击结账");
                                                      }),
                                                ),


                                                Padding(
                                                  padding: const EdgeInsets.all(13.0),
                                                  child: Container(
                                                    height: 40.0,

                                                    child:MaterialButton(
                                                        color: Color.fromRGBO(255, 255, 255, 1),
                                                        textColor: Color.fromRGBO(255, 89, 75, 1),
                                                        minWidth: 260.0,
                                                        shape:RoundedRectangleBorder(
                                                            borderRadius:BorderRadius.all(Radius.circular(20))
                                                        ),

                                                        padding:  EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                                        child:Text("客户已买单",
                                                            style:TextStyle(
                                                              fontSize:16,
                                                            )
                                                        ),
                                                        onPressed:(){
                                                          print("点击结账");
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ),
                                        flex:4,
                                      ),
                                      Expanded(
                                        child:Container(

                                        ),
                                        flex:1,
                                      ),
                                    ],
                                  ),
                                ),
                                flex: 1,
                              ),




                            ],
                      ),
                  ),
                ),
    );
  }
}

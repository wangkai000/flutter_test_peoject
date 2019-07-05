import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:testflutter/ui/widgets/ordinaryDialog.dart';


class  receivables extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<receivables> {

  TextEditingController _usernameCon;

  @override
  void initState() {
    super.initState();
    _usernameCon = TextEditingController();

  }


  @override
  void dispose() {
    _usernameCon.dispose();


    super.dispose();
  }



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
                                               Row(
                                                  children: <Widget>[
                                                    Text("-¥${0.88}",

                                                      style:TextStyle(fontSize:14,color:Color.fromRGBO(255, 89, 75, 1)),
                                                    ),
                                                    InkWell(
                                                        onTap:(){

                                                          List<Widget> AlreadyCheck=[];
                                                          AlreadyCheck=[
                                                             Text("确定清空优惠吗？",
                                                             style:TextStyle(
                                                               fontSize:16,
                                                             ),
                                                             ),

                                                          ];
                                                          DialogStart(context,
                                                                  (){

                                                                    Navigator.of(context).pop();
                                                                 }

                                                              ,AlreadyCheck);




                                                        },
                                                        child:Icon(Icons.highlight_off,
                                                        color:Colors.grey,
                                                        ),
                                                    )

                                                  ],

                                               ),


//
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
                                                      boxShadow: [BoxShadow(color: Color.fromRGBO(63, 66, 67, .1), offset: Offset(0.5, 1.0), blurRadius: 5.0, spreadRadius: 0.3), ],
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:BorderRadius.circular(12),
                                                      child: InkWell(
                                                       onTap:(){
                                                                 List<Widget> AlreadyCheck=[];

                                                                 AlreadyCheck=[
                                                                   Text("简单打折",
                                                                     style:TextStyle(
                                                                       fontSize:16,
                                                                       color:Color.fromRGBO(51, 51, 51, 1)
                                                                     ),
                                                                   ),
                                                                   Padding(
                                                                     padding: const EdgeInsets.all(10.0),
                                                                     child: Text("折扣率(%)",

                                                                       style:TextStyle(
                                                                           fontSize:14,
                                                                           color:Color.fromRGBO(204, 204, 204, 1)
                                                                       ),
                                                                     ),
                                                                   ),
                                                                   Container(
                                                                     height:30,
                                                                     decoration:  BoxDecoration(


                                                                       border:  Border.all(color:Color.fromRGBO(229, 229, 229, 1), width: 1), // 边色与边宽度
                                                                       borderRadius:  BorderRadius.circular((10.0)), // 圆角度
                                                                     ),
                                                                     child:  Padding(
                                                                       padding: const EdgeInsets.all(2.0),
                                                                       child: TextFormField(
                                                                       controller: _usernameCon,
                                                                         textAlign:TextAlign.center,
                                                                         decoration:  InputDecoration(
                                                                           border: InputBorder.none,

                                                                           //去掉输入框的下滑线
                                                                           filled: false,
                                                                           hintStyle: TextStyle(

                                                                               color: Colors.deepOrange, fontSize: 13.0),


                                                                           counterStyle: TextStyle(color: Colors.deepOrange),
                                                                           labelStyle: TextStyle(
                                                                             color: Colors.white,
                                                                             fontSize: 14,
                                                                           ),

                                                                           contentPadding: EdgeInsets.all(5.0),
                                                                           fillColor: Colors.white,
                                                                           counterText: "", //此处控制最大字符是否显示
                                                                         ),

                                                                         style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),),
                                                                         maxLength: 10,
                                                                         maxLengthEnforced: true,
                                                                       ),
                                                                     ),
                                                                   ),
                                                                   Container(
                                                                     margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                                                     height:30,
                                                                     decoration:  BoxDecoration(


                                                                       border:  Border.all(color:Color.fromRGBO(229, 229, 229, 1), width: 1), // 边色与边宽度
                                                                       borderRadius:  BorderRadius.circular((10.0)), // 圆角度
                                                                     ),
                                                                     child:  Padding(
                                                                       padding: const EdgeInsets.all(2.0),
                                                                       child: TextFormField(

                                                                         controller: _usernameCon,

                                                                         decoration:  InputDecoration(
                                                                           border: InputBorder.none,
                                                                           hintText:"备注",
                                                                           //去掉输入框的下滑线
                                                                           filled: false,
                                                                           hintStyle: TextStyle(

                                                                               color: Color.fromRGBO(51, 51, 51, 1), fontSize: 13.0),


                                                                           counterStyle: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),),

                                                                           labelStyle: TextStyle(

                                                                             color: Colors.white,
                                                                             fontSize: 14,
                                                                           ),

                                                                           contentPadding: EdgeInsets.all(5.0),
                                                                           fillColor: Colors.white,
                                                                           counterText: "", //此处控制最大字符是否显示
                                                                         ),

                                                                         style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),),
                                                                         maxLength: 10,
                                                                         maxLengthEnforced: true,
                                                                       ),
                                                                     ),
                                                                   ),



                                                                 ];
                                                                 DialogStart(context,
                                                                  (){
                                                                   print(_usernameCon.text);

                                                                   Navigator.of(context).pop();
                                                                  },AlreadyCheck);
                                                         },

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
                                                ),

                                                flex: 1,

                                              ),
                                                Expanded(
                                                  child:Container(

                                                    padding:const EdgeInsets.fromLTRB(16, 3, 16, 3),

                                                    child:Container(
                                                      decoration:  BoxDecoration(
                                                        boxShadow: [BoxShadow(color: Color.fromRGBO(63, 66, 67, .1), offset: Offset(0.5, 1.0), blurRadius: 5.0, spreadRadius: 0.3), ],
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:BorderRadius.circular(12),
                                                        child: InkWell(
                                                          onTap:(){

                                                          },
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
                                                InkWell(
                                                  onTap:(){



                                                    List<Widget> AlreadyCheck=[];
                                                    AlreadyCheck=[
                                                      Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: <Widget>[
                                                          Text("请确认",
                                                            textAlign:TextAlign.center,
                                                            style:TextStyle(
                                                              fontSize:16,
                                                              color:Color.fromRGBO(51, 51, 51, 1),

                                                            ),
                                                          ),
                                                          Text("${"A666"}",
                                                            textAlign:TextAlign.center,
                                                            style:TextStyle(
                                                              fontSize:16,
                                                              color:Color.fromRGBO(255, 89, 75, 1),

                                                            ),
                                                          ),
                                                          Text("桌台已经买单",
                                                            textAlign:TextAlign.center,
                                                            style:TextStyle(
                                                              fontSize:16,
                                                              color:Color.fromRGBO(51, 51, 51, 1),

                                                            ),
                                                          )
                                                        ],
                                                      ),


                                                      Text("点击确定后该桌台可继续开单",
                                                        textAlign:TextAlign.center,
                                                        style:TextStyle(
                                                          fontSize:16,
                                                          color:Color.fromRGBO(51, 51, 51, 1),

                                                        ),
                                                      ),

                                                      Text("点击确定后该桌台可继续开单",
                                                        textAlign:TextAlign.center,
                                                        style:TextStyle(
                                                          fontSize:16,
                                                          color:Color.fromRGBO(51, 51, 51, 1),

                                                        ),
                                                      ),

                                                      Text("点击确定后该桌台可继续开单",
                                                        textAlign:TextAlign.center,
                                                        style:TextStyle(
                                                          fontSize:16,
                                                          color:Color.fromRGBO(51, 51, 51, 1),

                                                        ),
                                                      ),

                                                      Text("点击确定后该桌台可继续开单",
                                                        textAlign:TextAlign.center,
                                                        style:TextStyle(
                                                          fontSize:16,
                                                          color:Color.fromRGBO(51, 51, 51, 1),

                                                        ),
                                                      ),
                                                    ];
                                                    DialogStart(context,
                                                         (){

                                                          Navigator.of(context).pop();
                                                        }

                                                        ,AlreadyCheck);






                                                  },
                                                  child: Padding(
                                                    padding:const EdgeInsets.fromLTRB(30, 0, 30, 0),


                                                    child: Container(

                                                      width:300,
                                                      child: Container(
                                                        height: 40.0,


                                                        decoration:  BoxDecoration(
                                                          color:Color.fromRGBO(1, 1, 1, 1),
//                                                          border:  Border.all(color:Color.fromRGBO(255, 89, 75, 1), width: 1), // 边色与边宽度
                                                          borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                                                          gradient:LinearGradient(
                                                              colors: [Color.fromRGBO(255, 89, 75, 1), Color.fromRGBO(255, 30, 19, 1) ]),
                                                        ),
                                                        child:Center(

                                                          child: Text("结账",
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
                                                ),


                                                InkWell(
                                                  onTap:(){

                                                    List<Widget> AlreadyCheck=[];
                                                    AlreadyCheck=[
                                                       Row(
                                                         mainAxisSize: MainAxisSize.min,
                                                          children: <Widget>[
                                                            Text("请确认",
                                                              textAlign:TextAlign.center,
                                                              style:TextStyle(
                                                                fontSize:16,
                                                                color:Color.fromRGBO(51, 51, 51, 1),

                                                              ),
                                                            ),
                                                            Text("${"A666"}",
                                                              textAlign:TextAlign.center,
                                                              style:TextStyle(
                                                                fontSize:16,
                                                                color:Color.fromRGBO(255, 89, 75, 1),

                                                              ),
                                                            ),
                                                            Text("桌台已经买单",
                                                              textAlign:TextAlign.center,
                                                              style:TextStyle(
                                                                fontSize:16,
                                                                color:Color.fromRGBO(51, 51, 51, 1),

                                                              ),
                                                            )
                                                          ],
                                                       ),


                                                       Text("点击确定后该桌台可继续开单",
                                                       textAlign:TextAlign.center,
                                                       style:TextStyle(
                                                         fontSize:16,
                                                         color:Color.fromRGBO(51, 51, 51, 1),

                                                       ),
                                                       )
                                                    ];
                                                    DialogStart(context,

                                                        (){
                                                          print("点击了确定");
                                                          Navigator.of(context).pop();
                                                        }

                                                        ,AlreadyCheck);





                                                  },
                                                  child: Padding(
                                                    padding:const EdgeInsets.fromLTRB(30, 16, 30, 0),


                                                      child: Container(

                                                        width:300,
                                                        child: Container(
                                                          height: 40.0,

                                                          decoration:  BoxDecoration(
                                                            color:Color.fromRGBO(255, 255, 255, 1),
                                                            border:  Border.all(color:Color.fromRGBO(255, 89, 75, 1), width: 1), // 边色与边宽度
                                                            borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                                                          ),
                                                          child:Center(
                                                            child: Text("客户已买单",
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

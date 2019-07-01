import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './tablePosition.dart';



class openingOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetHome();
  }
}

//必须createState创建状态类
class WidgetHome extends StatefulWidget {
  @override
  openingOrderState createState() => openingOrderState();
}




class openingOrderState extends State<WidgetHome> {
  //备注button
  List<Widget> remarksButtonArr = [];
  //接受
  Widget remarksButtonArrOntent;

  @override

  Widget build(BuildContext context) {




    //点击数字
    _umberClick(unmber){
       print(unmber);
       print(MediaQuery.of(context).size.width);
    };


    return Scaffold(

      resizeToAvoidBottomPadding: true, //输入框抵住键盘 true 默认
      appBar:AppBar(
          title:new Text("开单"),
        backgroundColor:Color.fromRGBO(247, 251, 247, 1),
        centerTitle:true,
//        elevation: 0.5,


      ),
     
      body:Container(

          child: Stack(
              children: <Widget>[

                SingleChildScrollView(
                 child: Container(

                    padding:const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child:Column(
                        children: <Widget>[

                          //listItem
                          InkWell(
                            onTap:(){
                              //跳转页面
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (BuildContext context) => tablePosition()));
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




                          //数字块
                          ClipRRect(
                            borderRadius:BorderRadius.circular(3),
                            child: Container(
                              //最小高度206
                              //constraints: BoxConstraints(minHeight: 210),
                              color:Color.fromRGBO(247, 247, 247, 1),

                              child:Column(
                                    children: <Widget>[
                                      Container(
                                        height:48,

//                              color:Color.fromRGBO(1, 1, 1, .3),
                                        child:Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  child:Text("就餐人数",
                                                  style:TextStyle(
                                                    fontSize: 12,
                                                    color:Color.fromRGBO(153, 153, 153, 1),
                                                  ),
                                                  ),
                                                  padding: EdgeInsets.all(5.0),
                                                ),
                                                flex: 1,
                                              ),
                                              Expanded(
                                                child: Container(

                                                  padding: EdgeInsets.all(5.0),
                                                ),
                                                flex: 1,
                                              ),
                                              Expanded(
                                                child: Container(

                                                  padding: EdgeInsets.all(5.0),
                                                ),
                                                flex: 1,
                                              ),
                                              Expanded(
                                                child: Container(

                                                  padding: EdgeInsets.all(5.0),
                                                  child:Row(
                                                    children: <Widget>[
                                                      Text("  ${233}  ",
//                                              textAlign:TextAlign.right,
                                                        style:TextStyle(
                                                          fontSize: 16,
                                                          color:Color.fromRGBO(51, 51, 51, 1),
                                                        ),

                                                      ),
                                                      Text("人",
                                                        textAlign:TextAlign.right,
                                                        style:TextStyle(
                                                          fontSize: 14,
                                                          color:Color.fromRGBO(153, 153, 153, 1),
                                                        ),

                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                flex: 1,
                                              ),
                                            ],


                                        )

                                      ),


                                      Container(
                                          height:106.0,

                                          child:Row(
                                            children: <Widget>[
                                              Expanded(
                                                child:Column(
                                                  children: <Widget>[
                                                    Container(
                                                      height:53.0,


                                                        child:Row(
                                                              children: <Widget>[
                                                                Expanded(
                                                                  child: InkWell(
                                                                    onTap:(){
                                                                      _umberClick(1);
                                                                    },
                                                                    child: Container(
                                                                      decoration: new BoxDecoration(
                                                                        border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                                      ),
                                                                      child:Center(
                                                                        child: Text("1",
                                                                          style:TextStyle(
                                                                            fontSize: 12,
                                                                            color:Color.fromRGBO(51, 51, 51, 1),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      padding: EdgeInsets.all(5.0),
                                                                    ),
                                                                  ),
                                                                  flex: 1,
                                                                ),
                                                                Expanded(
                                                                  child: InkWell(
                                                                    onTap:(){
                                                                      _umberClick(2);
                                                                    },
                                                                    child: Container(
                                                                      decoration: new BoxDecoration(
                                                                        border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                                      ),
                                                                      child:Center(
                                                                        child: Text("2",
                                                                          style:TextStyle(
                                                                            fontSize: 12,
                                                                            color:Color.fromRGBO(51, 51, 51, 1),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      padding: EdgeInsets.all(5.0),
                                                                    ),
                                                                  ),
                                                                  flex: 1,
                                                                ),
                                                                Expanded(
                                                                  child: InkWell(
                                                                    onTap:(){
                                                                      _umberClick(3);
                                                                    },
                                                                    child: Container(
                                                                      decoration: new BoxDecoration(
                                                                        border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                                      ),
                                                                      child:Center(
                                                                        child: Text("3",
                                                                          style:TextStyle(
                                                                            fontSize: 12,
                                                                            color:Color.fromRGBO(51, 51, 51, 1),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      padding: EdgeInsets.all(5.0),
                                                                    ),
                                                                  ),
                                                                  flex: 1,
                                                                ),
                                                              ],
                                                        ),
                                                    ),
                                                    Container(
                                                      height:53.0,
                                                      child:Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: InkWell(
                                                              onTap:(){
                                                                _umberClick(4);
                                                              },
                                                              child: Container(
                                                                decoration: new BoxDecoration(
                                                                  border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                                ),
                                                                child:Center(
                                                                  child: Text("4",
                                                                    style:TextStyle(
                                                                      fontSize: 12,
                                                                      color:Color.fromRGBO(51, 51, 51, 1),
                                                                    ),
                                                                  ),
                                                                ),
                                                                padding: EdgeInsets.all(5.0),
                                                              ),
                                                            ),
                                                            flex: 1,
                                                          ),
                                                          Expanded(
                                                            child: InkWell(
                                                              onTap:(){
                                                                _umberClick(5);
                                                              },
                                                              child: Container(
                                                                decoration: new BoxDecoration(
                                                                  border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                                ),
                                                                child:Center(
                                                                  child: Text("5",
                                                                    style:TextStyle(
                                                                      fontSize: 12,
                                                                      color:Color.fromRGBO(51, 51, 51, 1),
                                                                    ),
                                                                  ),
                                                                ),
                                                                padding: EdgeInsets.all(5.0),
                                                              ),
                                                            ),
                                                            flex: 1,
                                                          ),
                                                          Expanded(
                                                            child: InkWell(
                                                              onTap:(){
                                                                _umberClick(6);
                                                              },
                                                              child: Container(
                                                                decoration: new BoxDecoration(
                                                                  border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                                ),
                                                                child:Center(
                                                                  child: Text("6",
                                                                    style:TextStyle(
                                                                      fontSize: 12,
                                                                      color:Color.fromRGBO(51, 51, 51, 1),
                                                                    ),
                                                                  ),
                                                                ),
                                                                padding: EdgeInsets.all(5.0),
                                                              ),
                                                            ),
                                                            flex: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                flex: 3,
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap:(){
                                                    _umberClick(0);
                                                  },
                                                  child: Container(
                                                    decoration: new BoxDecoration(
                                                      border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                    ),
                                                    child:Center(
                                                      child: Text("0",
                                                        style:TextStyle(
                                                          fontSize: 12,
                                                          color:Color.fromRGBO(51, 51, 51, 1),
                                                        ),
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.all(5.0),
                                                  ),
                                                ),
                                                flex: 1,
                                              ),
                                            ],
                                          ),

                                      ),
                                      Container(
                                        height:53.0,

                                          child:Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: InkWell(
                                                  onTap:(){
                                                    _umberClick(7);
                                                  },
                                                  child: Container(
                                                    decoration: new BoxDecoration(
                                                      border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                    ),
                                                    child:Center(
                                                      child: Text("7",
                                                        style:TextStyle(
                                                          fontSize: 12,
                                                          color:Color.fromRGBO(51, 51, 51, 1),
                                                        ),
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.all(5.0),
                                                  ),
                                                ),
                                                flex: 1,
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap:(){
                                                    _umberClick(8);
                                                  },
                                                  child: Container(
                                                    decoration: new BoxDecoration(
                                                      border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                    ),
                                                    child:Center(

                                                      child: Text("8",
                                                        style:TextStyle(
                                                          fontSize: 12,
                                                          color:Color.fromRGBO(51, 51, 51, 1),
                                                        ),
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.all(5.0),
                                                  ),
                                                ),
                                                flex: 1,
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap:(){
                                                    _umberClick(9);
                                                  },
                                                  child: Container(
                                                    decoration: new BoxDecoration(
                                                      border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                    ),
                                                    child:Center(
                                                      child: Text("9",
                                                        style:TextStyle(
                                                          fontSize: 12,
                                                          color:Color.fromRGBO(51, 51, 51, 1),
                                                        ),
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.all(5.0),
                                                  ),
                                                ),
                                                flex: 1,
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap:(){
                                                    _umberClick('delete');
                                                  },
                                                  child: Container(
                                                    decoration: new BoxDecoration(
                                                      border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                                    ),
                                                    child: Center(

                                                           child:Icon(Icons.highlight_off),


                                                    ),
                                                  ),
                                                ),
                                                flex: 1,
                                              ),
                                            ],


                                          )

                                      ),

                                    ],
                              ),





                            ),
                          ),




                          //备注
                          Container(
                            child:Column(
                               children: <Widget>[
                                 Container(

                                   width:MediaQuery.of(context).size.width-16-16,
                                   padding:const EdgeInsets.fromLTRB(0, 6.0, 0, 5),
                                   child:Text('备注',
                                     textAlign:TextAlign.left,
                                     style:TextStyle(
                                       fontSize: 12,
                                       color:Color.fromRGBO(153, 153, 153, 1),
                                     ),

                                   ),
                                 ),

                                 Container(
                                   width:MediaQuery.of(context).size.width-16-16,
                                     child: Wrap(
                                       spacing: 0.0,
                                       runSpacing: 0.0,
                                       children: <Widget>[

                                         Chip(
                                           label: Text("不放辣"),


                                         ),
                                         Chip(
                                           label: Text("不放糖"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("不放葱"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),

                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),

                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),

                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),

                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),

                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),

                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),


                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),

                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),


                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),
                                         Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),   Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),   Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),   Chip(
                                           label: Text("多辣"),
                                           padding: EdgeInsets.only(left:1.0),
                                         ),













                                       ],
                                     ),

                                 ),






                                 //口味偏好
                                 Container(

                                   width:MediaQuery.of(context).size.width-16-16,
                                   padding:const EdgeInsets.fromLTRB(0, 6.0, 0, 5),
                                   child:Text('口味偏好等要求',
                                     textAlign:TextAlign.left,
                                     style:TextStyle(
                                       fontSize: 12,
                                       color:Color.fromRGBO(153, 153, 153, 1),
                                     ),

                                   ),
                                   ),


                                     Container(
                                       padding:const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 100.0),
                                       child: Container(
                                         decoration: new BoxDecoration(
                                           border: new Border.all(color:Color.fromRGBO(230, 230, 230, 0.6), width: 1), // 边色与边宽度

                                         ),
                                         child: TextField(
                                           maxLines: 1,
                                           maxLength:20,
                                           decoration: InputDecoration.collapsed(hintText: "请填写菜品备注,最多20字"),

                                         ),
                                       ),
                                       ),






                               ],
                            ),
                          )



                        ],
                    ),


              ),
               ),







                //底部button
                Positioned(

                  left:0.0,
                  right: 0.0,

                  bottom:6,
                  child: Container(
                    height:38,
                    padding:  EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(20),
                        child:  MaterialButton(
                          color:Color.fromRGBO(255, 89, 75, 1),

                          textColor: Colors.white,
                          minWidth: 300.0,
                          padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                          onPressed: () {
                            print('点击点菜');
                          },
                          child: new Text('开始点菜'),
                        ),
                      ),

                  ),
                )

            ],
          ),
        ),

    

    );
  }

}

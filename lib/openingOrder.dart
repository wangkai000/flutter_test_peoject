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

    //点击数字
    _umberClick(unmber){
       print(unmber);
    };


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




                //数字块
                ClipRRect(
                  borderRadius:BorderRadius.circular(3),
                  child: Container(
                    //最小高度206
                    constraints: BoxConstraints(minHeight: 206),
                    color:Color.fromRGBO(230, 230, 230, 1),

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
                                        child: Center(
                                               child:Icon(Icons.highlight_off),


                                        ),
                                      ),
                                      flex: 1,
                                    ),
                                  ],


                                )

                            ),

                          ],
                    ),



//                  child:Table(
//
//                      columnWidths: const {
//                        //列宽
//
//                        0: FixedColumnWidth(100),
//                        1: FixedColumnWidth(100),
//                        2: FixedColumnWidth(50),
//                        3: FixedColumnWidth(100),
//                      },
//                      //表格边框样式
//                      border: TableBorder.all(
//
//                        color:Color.fromRGBO(236, 236, 236, 1),
//                        width: 1.0,
//                        style: BorderStyle.solid,
//                      ),
//                      children:[
//                        TableRow(
//                          //第一行样式 添加背景色
//                          decoration: BoxDecoration(
//                            color:Color.fromRGBO(230, 230, 230, 1),
//                          ),
//                            children: [
//                              //增加行高
//                              SizedBox(
//                                height: 48.0,
//                                child: Text('就餐人数',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                              ),
//                              SizedBox(
//                                height: 48.0,
//                                child: Text('233',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                              ),
//                              SizedBox(
//                                height: 48.0,
//                                child: Text('233',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                              ),
//                              SizedBox(
//                                height: 48.0,
//                                child: Text('${222}人',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                              ),
//
//
//                            ]
//
//
//                        ),
//                        TableRow(
//
//                            decoration: BoxDecoration(
//                              color:Color.fromRGBO(230, 230, 230, 1),
//
//                            ),
//                            children: [
//                              Text('0'),
//                              Text('0'),
//                              Text('0'),
//                              Text('0'),
//                            ]
//                        ),
//                        TableRow(
//                            decoration: BoxDecoration(
//                              color:Color.fromRGBO(230, 230, 230, 1),
//                            ),
//                            children: [
//                              Text('0'),
//                              Text('0'),
//                              Text('0'),
//                              Text('0'),
//                            ]
//                        ),
//                        TableRow(
//                            decoration: BoxDecoration(
//                              color:Color.fromRGBO(230, 230, 230, 1),
//                            ),
//                            children: [
//                              Text('0'),
//                              Text('0'),
//                              Text('0'),
//                              Text('0'),
//                            ]
//                        ),
//
//
//
//
//                      ],
//
//
//                  ),

                  ),
                ),



              ],
          ),


      ),

    );
  }

}

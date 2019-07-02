import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:testflutter/common/radio.dart';

class tablePosition extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<tablePosition> {
  var pageName = "全部桌位";

  @override
  Widget build(BuildContext context) {

    print('最后的 build2 ');
    return Scaffold(

      appBar: AppBar(
        title: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
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
                            title: Text(
                              "我关注的桌位",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 89, 75, 1),
                              ),
                            ),
                            onTap: () async {},
                          ),
                          ListTile(
                            title: Text(
                              "全部桌位",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 89, 75, 1),
                              ),
                            ),
                            onTap: () async {},
                          ),
                          ListTile(
                            title: Text(
                              "取消",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 121, 255, 1),
                              ),
                            ),
                            onTap: () async {
                              Navigator.pop(context, 'Yep!');
                            },
                          ),
                        ],
                      );
                    });
              }),
        ]),
        actions: <Widget>[],

        backgroundColor: Color.fromRGBO(247, 251, 247, 1),
        centerTitle: true,
//        elevation: 0.5,
      ),
      body: Container(
//          padding:const EdgeInsets.fromLTRB(16, 0, 16, 0),

          child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                InkWell(
                  onTap: () {
                    //跳转页面

                    print('点击标签');
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child: Text(
                        "不放辣",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //跳转页面

                    print('点击标签');
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child: Text(
                        "不放辣",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //跳转页面

                    print('点击标签');
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child: Text(
                        "不放辣",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //跳转页面

                    print('点击标签');
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child: Text(
                        "不放辣",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //跳转页面

                    print('点击标签');
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child: Text(
                        "不放辣",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //跳转页面

                    print('点击标签');
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child: Text(
                        "不放辣",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //跳转页面

                    print('点击标签');
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child: Text(
                        "不放辣",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //跳转页面

                    print('点击标签');
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child: Text(
                        "不放辣",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(204, 204, 204, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            flex: 8,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: ListView(children: <Widget>[
                  MRadio<int>(
                    groupValue: 1,
                    value: 1,
                    onChange: (value) {print(value);},
                    title: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('A666桌(3人散座)',),
                          Container(
                            child: Text('空闲',
                              textAlign:TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(153, 153, 153, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                  MRadio<int>(
                    groupValue: 1,
                    value: 1,
                    onChange: (value) {print(value);},
                    title: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('A666桌(3人散座)',),
                          Container(
                            child: Text('空闲',
                              textAlign:TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(153, 153, 153, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                  MRadio<int>(
                    groupValue: 1,
                    value: 1,
                    onChange: (value) {print(value);},
                    title: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('A666桌(3人散座)',),
                          Container(
                            child: Text('空闲',
                              textAlign:TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(153, 153, 153, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                  MRadio<int>(
                    groupValue: 1,
                    value: 1,
                    onChange: (value) {print(value);},
                    title: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('A666桌(3人散座)',),
                          Container(
                            child: Text('空闲',
                              textAlign:TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(153, 153, 153, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                  MRadio<int>(
                    groupValue: 1,
                    value: 1,
                    onChange: (value) {print(value);},
                    title: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('A666桌(3人散座)',),
                          Container(
                            child: Text('空闲',
                              textAlign:TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(153, 153, 153, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                  MRadio<int>(
                    groupValue: 1,
                    value: 1,
                    onChange: (value) {print(value);},
                    title: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('A666桌(3人散座)',),
                          Container(
                            child: Text('空闲',
                              textAlign:TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(153, 153, 153, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),









                ])),
            flex: 92,
          ),
        ],
      )),
    );


  }
}

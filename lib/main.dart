import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:dio/dio.dart';

//import 'package:testflutter/lib/httpConfig.dart';
import 'package:testflutter/httpConfig.dart';
import './httpConfig.dart';
import './openingOrder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //定义全局的appbar
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(

          ),
            textTheme:TextTheme(
              title:TextStyle(color:Color.fromRGBO(51, 51, 51,1))
            )
        )
      ),
      home: Demo(),

    );
  }
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  var imgbg =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561627897282&di=25429e492d0486c2b8beaee05f9daf9c&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201702%2F05%2F20170205204232_d4V5Z.jpeg';
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController _usernameCon;
  TextEditingController _passwordCon;

  @override
  void initState() {
    super.initState();
    _usernameCon = TextEditingController();
    _passwordCon = TextEditingController();
  }

  @override
  void dispose() {
    _usernameCon.dispose();
    _passwordCon.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OKToast(
        child: Scaffold(
//                body:Center(
//                  child:Container(
//                    width:300.0,
//                    height:380.0,
//                    color:Color.fromRGBO(111,222, 666, .9),
//
//                    child:new Image.network(
//                      'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2010621268,1180933581&fm=58&bpow=670&bpoh=503',
//                      fit:BoxFit.fitHeight,
//                      ),
//                      padding:const EdgeInsets.fromLTRB(0, 0, 0, 300)
//
//
//                  ),
//
//
//                )

//            appBar:new AppBar(
//              title:new Text('demotitle'),
//            ),]
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(imgbg),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(222, 222, 222, 0),
                blurRadius: 5.0,
              ),
            ]),
            child: new Form(
                key: _formKey,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: new TextFormField(
                        controller: _usernameCon,
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          //去掉输入框的下滑线
                          filled: false,
                          hintStyle: TextStyle(
                              color: Colors.deepOrange, fontSize: 13.0),
                          labelText: '   请输入账号',
//                              errorText: "",
                          counterStyle: TextStyle(color: Colors.deepOrange),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          suffixIcon: Icon(Icons.person),
                          icon: Icon(Icons.person),
                          contentPadding: EdgeInsets.all(5.0),
                          fillColor: Colors.white,
                          counterText: "", //此处控制最大字符是否显示
                        ),
                        style: TextStyle(color: Colors.white),
                        maxLength: 10,
                        maxLengthEnforced: true,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: new TextFormField(
                        controller: _passwordCon,
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          //去掉输入框的下滑线
                          filled: false,

                          hintStyle: TextStyle(
                              color: Colors.deepOrange, fontSize: 13.0),
                          labelText: '   请输入密码',
//                              errorText: "",
                          counterStyle: TextStyle(color: Colors.deepOrange),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          suffixIcon: Icon(Icons.person),
                          icon: Icon(Icons.phone),
                          contentPadding: EdgeInsets.all(5.0),
                          fillColor: Colors.white,
                        ),
                        obscureText: false,
                        style: TextStyle(color: Colors.white),
                        maxLength: 10,
                        maxLengthEnforced: false,
                      ),
                    ),

                    //点击按钮

                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: new MaterialButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        minWidth: 200.0,
                        padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        onPressed: () {
                          var username = _usernameCon.text;
                          var password = _passwordCon.text;

                          print('username:$username,password:$password');

                          if (username == '' || password == '') {
                            showToast(" 账号密码不能为空  ",
                                backgroundColor: Color.fromRGBO(0, 0, 0, .7));
                          } else {
//                                  void getHttp() async {
//                                    try {
//                                      Response response = await Dio().get("http://nodedemo.tianmiao.xyz/register");
//                                      print(response);
//                                      showToast(" 登成成功  ",
//                                          backgroundColor:Color.fromARGB(110,110, 255, 255 )
//                                      );
//                                    } catch (e) {
//                                      print(e);
//                                    }
//                                  }

                            getData(
                                'register',
                                {username: username, password: password},
                                context);
                          }
                        },
                        child: new Text('登陆'),
                      ),
                    )
                  ],
                )),
          )),
    ));
  }
}

Future getData(url, data, BuildContext context) async {
  var response = await HttpUtil().get(url, data: data);
  print(response['success']);
  if (response['success'] == false) {
    showToast(" success  ",
        backgroundColor: Color.fromARGB(110, 110, 255, 255));
    //跳转页面
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => openingOrder()));
  }
}

DioError(e) {
  print(e);
  print('无网络');
  showToast(" 无网络  ", backgroundColor: Color.fromARGB(110, 110, 255, 255));
}

//官网http请求
void getHttp() async {
  try {
    Response response =
        await Dio().get("http://nodedemo.tianmiao.xyz/register");

    if (response.statusCode == 200) {}
  } catch (e) {
    print(e);
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: new Text("home hader")),
      body: Center(
        child: RaisedButton(
          child: new Text("test"),
          onPressed: () {
            Navigator.pop(context);
            print("点击");
          },
        ),
      ),
    );
  }
}

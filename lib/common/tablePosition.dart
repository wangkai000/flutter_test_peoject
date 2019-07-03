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
  var type = 0;//全部桌位 0  我关注的桌位  1


  //标签list
  List<Widget> _LabelButtonArr=[];
  //默认type
  var _LabelButtonArrType=1;


  //标签对应的list 内容
  List<Widget> _LabelTableArr=[];

  //桌位当前选第几个 默认第-1个 没选
  var _LabelTableArrIndex=-1;

  //list 接口数据
  var _obtainLabelListContentArr=[];


 @override
  void initState() {
    super.initState();

    _obtainLabelListContentJson();
  }


  //获取标签列表
  _obtainLabel(){
    _LabelButtonArr=[];
    var _LabelButtonJson = [{'name':'大厅','type':1},{'name':'包厢','type':0},];
    for(var item in _LabelButtonJson){
      _LabelButtonArr.add(
        InkWell(
          onTap: () {

            setState(() =>{

              if(_LabelButtonArrType!=item['type']){
                _LabelTableArrIndex=-1,
                _LabelButtonArrType=item['type'],
              },

            });


          },
          child: Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(12.0, 3.0, 10.0, 3.0),
              child: Stack(
                  children: <Widget>[

                    Text(
                      "${item['name']}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,

                        color: _LabelButtonArrType==item['type']?Color.fromRGBO(51, 51, 51, 1):Color.fromRGBO(204, 204, 204, 1),
                      ),
                    ),

                    //红色横岗
                    Positioned(

                      left:0.0,
                      right: 0.0,

                      bottom:3,
                      child: Container(
                        height:2,
                        color:Color.fromRGBO(255, 87, 74, _LabelButtonArrType==item['type']?1:0),
                        padding:  EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),


                      ),
                    )

                  ]
              ),
            ),
          ),
        ),
      );
    };




  }
  //获取接口数据
  _obtainLabelListContentJson(){
    _obtainLabelListContentArr=[];
    _obtainLabelListContentArr=[
      {
        "tableId": 154,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "A1",
        "qrcode": "58D5B5984F65448FE5DFB2762CB18DA5",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=58D5B5984F65448FE5DFB2762CB18DA5",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=58D5B5984F65448FE5DFB2762CB18DA5",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=58D5B5984F65448FE5DFB2762CB18DA5",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 10,
        "waiterOpenid": "",
        "waiterName": "安徒生",
        "waiterHeadImage": "http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLBCgicGlgg9ulj3JruKv5I3opvHHGlGoa4UyYXHGzdFElcVHf3qQvROszkGxQsPnia3gBQhflbOK8w/132",
        "waiterTime": "2019-06-25 15:12:40",
        "status": null,
        "guests": 1,
        "lockTableTime": null
      }, {
        "tableId": 155,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "A2",
        "qrcode": "22C2A67F0ECDBA6AE817B96A6B406A35",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=22C2A67F0ECDBA6AE817B96A6B406A35",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=22C2A67F0ECDBA6AE817B96A6B406A35",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=22C2A67F0ECDBA6AE817B96A6B406A35",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": "http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLBCgicGlgg9ulj3JruKv5I3opvHHGlGoa4UyYXHGzdFElcVHf3qQvROszkGxQsPnia3gBQhflbOK8w/132",
        "waiterTime": "2019-06-19 15:36:17",
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 156,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "A3",
        "qrcode": "C703C9CA87D9295925B2963434550CFE",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=C703C9CA87D9295925B2963434550CFE",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=C703C9CA87D9295925B2963434550CFE",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=C703C9CA87D9295925B2963434550CFE",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": "http://image.ziqiangwanqiang.com/image/com/c0218bfb94f441598d374915932eaa05.jpg",
        "waiterTime": null,
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 157,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "A4",
        "qrcode": "C95B66FD6FD9D658686B4A53311E818E",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=C95B66FD6FD9D658686B4A53311E818E",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=C95B66FD6FD9D658686B4A53311E818E",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=C95B66FD6FD9D658686B4A53311E818E",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": "http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLBCgicGlgg9ulj3JruKv5I3opvHHGlGoa4UyYXHGzdFElcVHf3qQvROszkGxQsPnia3gBQhflbOK8w/132",
        "waiterTime": "2019-06-14 17:07:20",
        "status": null,
        "guests": 12,
        "lockTableTime": null
      }, {
        "tableId": 158,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "A5",
        "qrcode": "35D32F28BECDBEB2244C58BA3CCAE276",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=35D32F28BECDBEB2244C58BA3CCAE276",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=35D32F28BECDBEB2244C58BA3CCAE276",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=35D32F28BECDBEB2244C58BA3CCAE276",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-14 17:05:16",
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 159,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "A6",
        "qrcode": "8B0869A3368F4E91B60B405FC6CA15BC",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=8B0869A3368F4E91B60B405FC6CA15BC",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=8B0869A3368F4E91B60B405FC6CA15BC",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=8B0869A3368F4E91B60B405FC6CA15BC",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-14 17:04:38",
        "status": null,
        "guests": 7,
        "lockTableTime": null
      }, {
        "tableId": 160,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "A7",
        "qrcode": "EFCE9002533E83ACD9FCFC968213BB1C",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=EFCE9002533E83ACD9FCFC968213BB1C",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=EFCE9002533E83ACD9FCFC968213BB1C",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=EFCE9002533E83ACD9FCFC968213BB1C",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 1,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-14 17:17:22",
        "status": null,
        "guests": 2,
        "lockTableTime": "2019-06-28 18:49:37"
      }, {
        "tableId": 161,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "B1",
        "qrcode": "6E02A5DAAE9D43CB94074DB0AC5C6092",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=6E02A5DAAE9D43CB94074DB0AC5C6092",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=6E02A5DAAE9D43CB94074DB0AC5C6092",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=6E02A5DAAE9D43CB94074DB0AC5C6092",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 1,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-14 17:19:26",
        "status": null,
        "guests": 0,
        "lockTableTime": "2019-06-28 18:48:45"
      }, {
        "tableId": 162,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "B2",
        "qrcode": "E8D3C4222AC1F5D7791E00C633F8590F",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=E8D3C4222AC1F5D7791E00C633F8590F",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=E8D3C4222AC1F5D7791E00C633F8590F",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=E8D3C4222AC1F5D7791E00C633F8590F",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 1,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 3,
        "waiterOpenid": "",
        "waiterName": "范小帅",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-18 20:29:15",
        "status": null,
        "guests": 3,
        "lockTableTime": "2019-06-28 16:53:31"
      }, {
        "tableId": 163,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "B3",
        "qrcode": "628F3666271D843246D23EE54B5A9F31",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=628F3666271D843246D23EE54B5A9F31",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=628F3666271D843246D23EE54B5A9F31",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=628F3666271D843246D23EE54B5A9F31",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 3,
        "waiterOpenid": "",
        "waiterName": "范小帅",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-18 20:29:17",
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 164,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "B4",
        "qrcode": "3D4CBFE2FFA8F4E731FD43A5E876DF39",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=3D4CBFE2FFA8F4E731FD43A5E876DF39",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=3D4CBFE2FFA8F4E731FD43A5E876DF39",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=3D4CBFE2FFA8F4E731FD43A5E876DF39",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-20 14:53:11",
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 165,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "B5",
        "qrcode": "7433F928C389E1CDB06ED2D65CB0CF16",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=7433F928C389E1CDB06ED2D65CB0CF16",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=7433F928C389E1CDB06ED2D65CB0CF16",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=7433F928C389E1CDB06ED2D65CB0CF16",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-20 14:53:11",
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 166,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "VIP1",
        "qrcode": "2A9752BC2970E21EC85E2A7361857C39",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=2A9752BC2970E21EC85E2A7361857C39",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=2A9752BC2970E21EC85E2A7361857C39",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=2A9752BC2970E21EC85E2A7361857C39",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 2,
        "areaName": "包房",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-20 10:32:27",
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 167,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "VIP2",
        "qrcode": "7C1F67F9F69A9627E9A051E392A38A3C",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=7C1F67F9F69A9627E9A051E392A38A3C",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=7C1F67F9F69A9627E9A051E392A38A3C",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=7C1F67F9F69A9627E9A051E392A38A3C",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 1,
        "areaId": 2,
        "areaName": "包房",
        "waiterId": 4,
        "waiterOpenid": "",
        "waiterName": "rever",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-20 11:41:19",
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 168,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "单1",
        "qrcode": "DC6C479937B0E9BD4998828504707D5A",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=DC6C479937B0E9BD4998828504707D5A",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=DC6C479937B0E9BD4998828504707D5A",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=DC6C479937B0E9BD4998828504707D5A",
        "maxPerson": 1,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 1,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 3,
        "waiterOpenid": "",
        "waiterName": "范小帅",
        "waiterHeadImage": null,
        "waiterTime": "2019-06-24 11:20:56",
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 169,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "单2",
        "qrcode": "00E464A7C5363F0BF5ABC7313CA1505B",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=00E464A7C5363F0BF5ABC7313CA1505B",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=00E464A7C5363F0BF5ABC7313CA1505B",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=00E464A7C5363F0BF5ABC7313CA1505B",
        "maxPerson": 1,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 0,
        "waiterOpenid": "",
        "waiterName": "",
        "waiterHeadImage": null,
        "waiterTime": null,
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 170,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "单3",
        "qrcode": "9DB6FAB2A609E85A76B3F32E2F5EFF97",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=9DB6FAB2A609E85A76B3F32E2F5EFF97",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=9DB6FAB2A609E85A76B3F32E2F5EFF97",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=9DB6FAB2A609E85A76B3F32E2F5EFF97",
        "maxPerson": 1,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 0,
        "waiterOpenid": "",
        "waiterName": "",
        "waiterHeadImage": null,
        "waiterTime": null,
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 171,
        "storeId": 2,
        "storeName": "星马小厨",
        "tableName": "单4",
        "qrcode": "BB76C50A74BB04D3B1AA21442B67FFB2",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=BB76C50A74BB04D3B1AA21442B67FFB2",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=BB76C50A74BB04D3B1AA21442B67FFB2",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=BB76C50A74BB04D3B1AA21442B67FFB2",
        "maxPerson": 1,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 1,
        "areaName": "大厅",
        "waiterId": 0,
        "waiterOpenid": "",
        "waiterName": "",
        "waiterHeadImage": null,
        "waiterTime": null,
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 172,
        "storeId": 2,
        "storeName": "",
        "tableName": "1",
        "qrcode": "24AF9EF4BCB957208B634A2FAAC1A0FA",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=24AF9EF4BCB957208B634A2FAAC1A0FA",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=24AF9EF4BCB957208B634A2FAAC1A0FA",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=24AF9EF4BCB957208B634A2FAAC1A0FA",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 1,
        "areaId": 9,
        "areaName": "一楼",
        "waiterId": 0,
        "waiterOpenid": "",
        "waiterName": "",
        "waiterHeadImage": null,
        "waiterTime": null,
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 173,
        "storeId": 2,
        "storeName": "",
        "tableName": "2",
        "qrcode": "C8B5A07FC3C8F7E0C941E1990A0EC72C",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=C8B5A07FC3C8F7E0C941E1990A0EC72C",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=C8B5A07FC3C8F7E0C941E1990A0EC72C",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=C8B5A07FC3C8F7E0C941E1990A0EC72C",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 9,
        "areaName": "一楼",
        "waiterId": 0,
        "waiterOpenid": "",
        "waiterName": "",
        "waiterHeadImage": null,
        "waiterTime": null,
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 174,
        "storeId": 2,
        "storeName": "",
        "tableName": "3",
        "qrcode": "4FD8B354F632D61CCB581384CA7F509F",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=4FD8B354F632D61CCB581384CA7F509F",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=4FD8B354F632D61CCB581384CA7F509F",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=4FD8B354F632D61CCB581384CA7F509F",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 9,
        "areaName": "一楼",
        "waiterId": 0,
        "waiterOpenid": "",
        "waiterName": "",
        "waiterHeadImage": null,
        "waiterTime": null,
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }, {
        "tableId": 175,
        "storeId": 2,
        "storeName": "",
        "tableName": "5",
        "qrcode": "688B6D72BDE3BFEE15A73E4FCE2D9169",
        "miniQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=688B6D72BDE3BFEE15A73E4FCE2D9169",
        "wxparamQrcode": "http://h5mini.ziqiangwanqiang.com?qrcode=688B6D72BDE3BFEE15A73E4FCE2D9169",
        "h5Qrcode": "http://h5.ziqiangwanqiang.com?qrcode=688B6D72BDE3BFEE15A73E4FCE2D9169",
        "maxPerson": 12,
        "ctime": "2019-06-10T10:17:38.000+0000",
        "utime": null,
        "isLock": 0,
        "areaId": 9,
        "areaName": "一楼",
        "waiterId": 0,
        "waiterOpenid": "",
        "waiterName": "",
        "waiterHeadImage": null,
        "waiterTime": null,
        "status": null,
        "guests": 0,
        "lockTableTime": null
      }
    ];
  }

  //获取标签对应的list 内容
  _obtainLabelListContent(txt){


    _LabelTableArr=[];
    for(var item in _obtainLabelListContentArr){
//         print(item);
      _LabelTableArr.add(
        MRadio<int>(

          groupValue:_LabelTableArrIndex,
          value:item['tableId'],

          onChange: (value) {


            setState(() {
              _LabelTableArrIndex=value;
            });

          },
          title: Expanded(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Text(' ${item['tableName']}(${item['maxPerson']}人)'),
                Container(

                  child: Text('${item['isLock']==0?"空闲":"已开单"}',
                    textAlign:TextAlign.right,
                    style: TextStyle(
                      fontSize: 14,
                      color: item['isLock']==0?Color.fromRGBO(153, 153, 153, 1):Color.fromRGBO(255, 89, 75, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ),
      );


    };




  }


  @override
  Widget build(BuildContext context) {

    _obtainLabel();
    _obtainLabelListContent('大厅');


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
                            onTap: () async {

                              setState(()=>{
                                   pageName = "我关注的桌位",
                                   type = 1,//全部桌位 0  我关注的桌位  1
                                   Navigator.pop(context, 'Yep!'),
                              });


                            },
                          ),
                          ListTile(
                            title: Text(
                              "全部桌位",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 89, 75, 1),
                              ),
                            ),
                            onTap: () async {
                              setState(()=>{
                                  pageName = "全部桌位",
                                   type = 0,//全部桌位 0  我关注的桌位  1
                                   Navigator.pop(context, 'Yep!'),
                              });




                            },
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
                  ListView(scrollDirection: Axis.horizontal, children: _LabelButtonArr),
            ),
            flex: 8,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: ListView(children:_LabelTableArr)),
            flex: 92,
          ),
        ],
      )),
    );


  }
}

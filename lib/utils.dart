//import 'dart:convert';
//
//import 'package:convert/convert.dart';
//import 'package:crypto/crypto.dart';
//import 'package:flutter/material.dart';
//import 'package:toast/toast.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'dart:ui';
//
//class Utils {
//  //图片基础路径
//  static String getImgPath(String name, {String format: 'png'}) {
//    return 'assets/images/$name.$format';
//  }
//
//  //md5加密
//  static String generateMd5(String data) {
//    var content = new Utf8Encoder().convert(data);
//    var digest = md5.convert(content);
//    return hex.encode(digest.bytes);
//  }
//
//  //吐司
//  static toast(BuildContext context, String msg) {
//    assert(msg != '');
//    if (context != null) {
//      Toast.show(msg, context);
//    }
//  }
//
//  //时间差
//  static Duration disTime(DateTime tempTime, {DateTime disTime}) {
//    if (disTime == null) {
//      disTime = DateTime.now();
//    }
//
//    return tempTime.difference(disTime);
//  }
//
//  // 12:30
//  static String formatString2HHII(String time) {
//    var timeDate = DateTime.parse(time);
//    return '${str2dou(timeDate.hour.toString())}:${timeDate.minute.toString()}';
//  }
//
//  // 01月02日 03:04
//  static String formatString2MMDD_HHII(String time) {
//    var date = DateTime.parse(time);
//    return '${str2dou(date.month.toString())}月${str2dou(date.day.toString())}日 ${str2dou(date.hour.toString())}:${str2dou(date.second.toString())}';
//  }
//
//  // 1 -> 01, 01 -> 01
//  static String str2dou(String string) {
//    if (string.length == 1) {
//      return '0$string';
//    }
//    return string;
//  }
//
//  //清除登陆状态
//  static clearLoginStatus(BuildContext context) async {
//    var prefs = await SharedPreferences.getInstance();
////    Provider.of<UserProvider>(context).update(null);
////    Provider.of<StoreProvider>(context).update(null);
//    prefs.remove('loginuser');
//    prefs.remove('store');
//  }
//
//  //1像素
//  static onePx() {
//    var medai = MediaQueryData.fromWindow(window);
//    return 1 / medai.devicePixelRatio;
//  }
//}

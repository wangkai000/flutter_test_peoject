import 'package:flutter/material.dart';
//import 'package:keman/utils/utils.dart';

class MRadio<T> extends StatefulWidget {
  //默认状态
  Widget subtitle;

  //选中状态
  Widget activeSubtitle;

  //中间文字
  Widget title;

  //值
  T value;

  //组值
  T groupValue;

  //选中回调事件
  ValueChanged<T> onChange;

  MRadio({
    Key key,
    this.subtitle,
    this.activeSubtitle,
    @required this.title,
    @required this.value,
    @required this.groupValue,
    @required this.onChange,
  }) : super(key: key);

  @override
  _RadioState<T> createState() => _RadioState<T>();
}

class _RadioState<T> extends State<MRadio>  {

  @override
  Widget build(BuildContext context) {
    Widget subtitle, activeSubtitle;
    if (widget.subtitle == null) {
      subtitle = _Subtitle();
    }
    if (widget.activeSubtitle == null) {
      activeSubtitle = _ActiveSubtitle();
    }

    return InkWell(
      onTap: () {
        widget.onChange(widget.value);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        height: 55,
        child: Row(
          children: <Widget>[
            flag ? activeSubtitle : subtitle,
            widget.title,
          ],
        ),
      ),
    );
  }

  @override
  MRadio<T> get widget => super.widget;

  bool get flag => widget.groupValue == widget.value;
}

double _defaultSize = 19;

class _Subtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: _defaultSize,
      height: _defaultSize,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xCCCCCCCC),
//          width: Utils.onePx() * 2,
            width:200,
        ),
        borderRadius: BorderRadius.circular(_defaultSize),
      ),
    );
  }
}

class _ActiveSubtitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/active_radio.png',
      width: _defaultSize,
      height: _defaultSize,
      fit: BoxFit.cover,
    );
  }
}

import 'package:askai_animation_button/animationButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget(this.btnname,{this.callback,this.hei,this.wid});
  String btnname;
  VoidCallback? callback;
  double? hei,wid;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return KaiAnimationButton(
      text: widget.btnname,
      innerCircleColor: [
        Color.fromRGBO(205, 201, 201, 98),
        Color.fromRGBO(238, 233, 233, 1)
      ],
      outerRingColor: [
        Color.fromRGBO(238, 233, 233, 0),
        Color.fromRGBO(205, 201, 201, 98)
      ],
      onTap: () {
        widget.callback;
      },
      innerWidth: [190.0, 200],
      outerRingWidth: [190.0, 240.0],
      outerRingHeight: [
        ScreenUtil().setHeight(10),
        ScreenUtil().setHeight(120)
      ],
    );
  }
}

import 'package:flutter/material.dart';

/**
 * BoxDecoration:实现边框、圆角、阴影、形状、渐变、背景图像
 *
 * const BoxDecoration({
    this.color, // 底色
    this.image, // 图片
    this.border, 边色
    this.borderRadius, // 圆角度
    this.boxShadow, // 阴影
    this.gradient, // 渐变
    this.backgroundBlendMode, // 混合Mode
    this.shape = BoxShape.rectangle,  // 形状
    })
 */
class BoxDecorationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            // 底色
            color: Color(0x6600ff00),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/timg.jpg")),
            border: new Border.all(color: Color(0xFFFF0000), width: 0.5),
            // 边色与边宽度
            borderRadius: BorderRadius.circular(10.0), // 圆角度
          ),
        ),
        Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            // 生成俩层阴影，一层绿，一层黄， 阴影位置由offset决定,
            // 阴影模糊层度由blurRadius大小决定（大就更透明更扩散），
            // 阴影模糊大小由spreadRadius决定
            boxShadow: [
              BoxShadow(
                  color: Color(0x99FFFF00),
                  offset: Offset(5.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 2.0),
              BoxShadow(color: Color(0x9900FF00), offset: Offset(1.0, 1.0)),
              BoxShadow(color: Color(0xFF0000FF))
            ],
          ),
        ),
        Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
            // 边色与边宽度
            border: new Border.all(color: Color(0xFFFFFF00), width: 0.5),
            // 底色
            color: Color(0xFF9E9E9E),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/timg.jpg")),
            shape: BoxShape.circle,
            // 圆形，使用圆形时不可以使用borderRadius
//            shape: BoxShape.rectangle,
            // 默认值也是矩形
//            borderRadius: new BorderRadius.circular((20.0)), // 圆角度
          ),
        ),
        Container(
          width: 250.0,
          height: 250.0,
          decoration: BoxDecoration(
              border: new Border.all(color: Color(0xFFFFFF00), width: 0.5),
              // 边色与边宽度
              // 环形渲染
//              gradient: RadialGradient(colors: [
//                Color(0xFFFFFF00),
//                Color(0xFF00FF00),
//                Color(0xFF00FFFF)
//              ], radius: 1, tileMode: TileMode.mirror)
              //扫描式渐变
//              gradient: SweepGradient(colors: [
//                Color(0xFFFFFF00),
//                Color(0xFF00FF00),
//                Color(0xFF00FFFF)
//              ], startAngle: 0.0, endAngle: 1 * 3.14)
              // 线性渐变
              gradient: LinearGradient(colors: [
                Color(0xFFFFFF00),
                Color(0xFF00FF00),
                Color(0xFF00FFFF)
              ], begin: FractionalOffset(1, 0), end: FractionalOffset(0, 1))),
        ),
      ],
    );
  }
}

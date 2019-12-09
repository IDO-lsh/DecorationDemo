import 'package:flutter/material.dart';

/**
 * ShapeDecoration:实现四个边分别指定颜色和宽度、底部线、矩形边色、圆形边色、体育场（竖向椭圆）、 角形（八边角）边色
 *
 * const ShapeDecoration({
    this.color,
    this.image,
    this.gradient,
    this.shadows,
    @required this.shape,
    })
 */
class ShapeDecorationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          width: 250.0,
          height: 250.0,
          decoration: new ShapeDecoration(
              color: Color(0xFFFF00FF),
              // 底色
              // 统一四边颜色和宽度
//              shape: Border.all(
//                  color: Color(0xFF00FFFF), style: BorderStyle.solid, width: 2)
              // 四个边分别指定颜色和宽度， 当只给bottom时与UnderlineInputBorder一致效果
              //          shape: Border(top: b, bottom: b, right: b, left: b)
              // 底部线
              //          shape: UnderlineInputBorder( borderSide:BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
              // 矩形边色
              //        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)), side: BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
              // 圆形边色
              //        shape: CircleBorder(side: BorderSide(color: Color(0xFFFFFF00), style: BorderStyle.solid, width: 2))
              // 体育场（竖向椭圆）
//        shape: StadiumBorder(side: BorderSide(
//            width: 2, style: BorderStyle.solid, color: Color(0xFF00FFFF))
              // 角形（八边角）边色
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(
                      color: Color(0xFFFFFFFF),
                      style: BorderStyle.solid,
                      width: 2))),
        ),
      ],
    );
  }
}

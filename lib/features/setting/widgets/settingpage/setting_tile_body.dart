import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

class SettingTileBody extends StatelessWidget {
  String title;
  String imagepath;
   SettingTileBody({super.key,required this.title,required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(imagepath),
      title: Text(title, style: TextStyles.font14blacksettings),
      trailing: Icon(Icons.keyboard_arrow_right_sharp),
    );
  }
}

import 'package:flutter/cupertino.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {

  const IconContent(this.icon,this.iconText, {super.key});

  final IconData icon;
  final String iconText;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 80,) ,
        SizedBox(height: 15,),
        Text(iconText,style: labelTextStyle,),
      ],
    );
  }
}

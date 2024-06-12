import 'package:flutter/material.dart';

class SelectedNavItemWidget extends StatelessWidget {
  const SelectedNavItemWidget({required this.label,required this.icon});
  final Widget icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        icon,
        Text(label,style: TextStyle(fontSize: 14,color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal,),),
        // Container(
        //   width: 5,
        //   height: 5,
        //   decoration: BoxDecoration(
        //     shape: BoxShape.circle,
        //     color: Theme.of(context).primaryColor,
        //   ),
        // )
      ],
    );
  }
}

/*class SelectedNavItemWidget extends StatelessWidget {
  const SelectedNavItemWidget({required this.icon});
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        icon,
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:psxmpc/config/ps_colors.dart';
import 'package:psxmpc/core/vendor/constant/ps_dimens.dart';

import '../../../../../../core/vendor/utils/utils.dart';

class EntryCategoryInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Utils.isLightMode(context)
                    ? PsColors.text800
                    : PsColors.text50,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

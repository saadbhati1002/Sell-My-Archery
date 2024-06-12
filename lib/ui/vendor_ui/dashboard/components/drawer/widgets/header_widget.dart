import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:psxmpc/config/ps_colors.dart';
import 'package:psxmpc/core/vendor/provider/language/app_localization_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../core/vendor/constant/ps_dimens.dart';

class DrawerHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(),
          Column(
            children: [
              Image.asset(
                'assets/images/flutter_buy_and_sell_logo.png',
                width: PsDimens.space40,
                height: PsDimens.space40,
              ),
              const SizedBox(
                height: PsDimens.space4,
              ),
              Text(
                'Sell My Archery',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: PsColors.text800, fontSize: 18),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              const Text('Follow Us'),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://www.facebook.com/profile.php?id=61560424155460&mibextid=ZbWKwL'));
                    },
                    child: Icon(
                      Icons.facebook,
                      size: 30,
                      color: PsColors.facebookColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://www.instagram.com/sellmyarchery?igsh=MWRncHZ4ZDR2bThsdg'));
                    },
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset('assets/images/instagram.png')),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: PsColors.primary50,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/svg_icon.dart';

class UserInfo extends StatelessWidget {
  final String url;
  final String nickname;
  final String username;

  const UserInfo({Key? key, required this.url, required this.nickname, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(url),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(nickname),
                  SizedBox(width: 4),
                  SvgIcon(
                    asset: SvgAsset.heartBlue,
                    height: 16,
                  ),
                  SizedBox(width: 4),
                  SvgIcon(
                    asset: SvgAsset.verified,
                    height: 16,
                  ),
                  Spacer(),
                  SvgIcon(asset: SvgAsset.x, height: 20),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: '@$username'),
                    TextSpan(text: ' · '),
                    TextSpan(text: 'Follow', style: TextStyle(color: Colors.blue))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

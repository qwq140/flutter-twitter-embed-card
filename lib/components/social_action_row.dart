import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/svg_icon.dart';

class SocialActionRow extends StatelessWidget {
  const SocialActionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _SocialActionButton(icon: SvgIcon(asset: SvgAsset.heartRed), text: '997'),
        SizedBox(width: 12),
        _SocialActionButton(icon: SvgIcon(asset: SvgAsset.comment), text: 'Reply'),
        SizedBox(width: 12),
        _SocialActionButton(icon: SvgIcon(asset: SvgAsset.link), text: 'Copy link'),
      ],
    );
  }
}

class _SocialActionButton extends StatelessWidget {
  final SvgIcon icon;
  final String text;

  const _SocialActionButton({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(width: 8),
        Text(text)
      ],
    );
  }
}

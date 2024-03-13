import 'package:flutter/material.dart';
import 'package:twitter_embed_card/components/content.dart';
import 'package:twitter_embed_card/components/custom_round_button.dart';
import 'package:twitter_embed_card/components/date_indicator.dart';
import 'package:twitter_embed_card/components/social_action_row.dart';
import 'package:twitter_embed_card/components/user_info.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/svg_icon.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SvgAsset.preloadSVGs();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          // Use Center as layout has unconstrained width (loose constraints),
          // together with SizedBox to specify the max width (tight constraints)
          // See this thread for more info:
          // https://twitter.com/biz84/status/1445400059894542337
          child: Center(
            child: SizedBox(
              width: 600, // max allowed width
              child: TwitterEmbedCard(),
            ),
          ),
        ),
      ),
    );
  }
}

class TwitterEmbedCard extends StatelessWidget {
  const TwitterEmbedCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Delete this and implement the desired layout
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        UserInfo(
          url: 'assets/andrea-avatar.png',
          nickname: 'Andrea Bizzotto',
          username: 'biz84',
        ),
        SizedBox(height: 8),
        Content(),
        SizedBox(height: 4),
        DateIndicator(date: '10:21 AM · Jun 20, 2023'),
        Divider(
          thickness: 1,
          height: 9,
        ),
        SocialActionRow(),
        SizedBox(height: 4,),
        CustomRoundButton(
          width: double.infinity,
          child: Text(
            'Read 12 replies',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

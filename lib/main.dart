import 'package:flutter/material.dart';
import 'package:twitter_embed_card/components/content.dart';
import 'package:twitter_embed_card/components/read_reply_button.dart';
import 'package:twitter_embed_card/components/date_indicator.dart';
import 'package:twitter_embed_card/components/social_action_row.dart';
import 'package:twitter_embed_card/components/user_info.dart';
import 'package:twitter_embed_card/data/tweet_data.dart';
import 'package:twitter_embed_card/svg_asset.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SvgAsset.preloadSVGs();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    TweetData tweetData = TweetData(
      profileUrl: 'assets/andrea-avatar.png',
      nickname: 'Andrea Bizzotto',
      username: 'biz84',
      contentText: '''
Did you know?

When you call `MediaQuery.of(context)` inside a build method, the widget will rebuild when *any* of the MediaQuery properties change.

But there's a better way that lets you depend only on the properties you care about (and minimize unnecessary rebuilds). 👇
''',
      contentImage: 'assets/media-query-banner.jpg',
      time: '10:21 AM',
      date: 'Jun 20, 2023',
      likeCount: 997,
      replyCount: 12,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          // Use Center as layout has unconstrained width (loose constraints),
          // together with SizedBox to specify the max width (tight constraints)
          // See this thread for more info:
          // https://twitter.com/biz84/status/1445400059894542337
          child: Center(
            child: SizedBox(
              width: 600, // max allowed width
              child: TwitterEmbedCard(
                data: tweetData,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TwitterEmbedCard extends StatelessWidget {
  final TweetData data;

  const TwitterEmbedCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UserInfo(
          url: data.profileUrl,
          nickname: data.nickname,
          username: data.username,
        ),
        const SizedBox(height: 8),
        Content(
          contentText: data.contentText,
          contentImage: data.contentImage,
        ),
        const SizedBox(height: 4),
        DateIndicator(time: data.time, date: data.date),
        const Divider(
          thickness: 1,
          height: 9,
        ),
        SocialActionRow(
          likeCount: data.likeCount,
        ),
        const SizedBox(height: 4),
        ReadReplyButton(
          replyCount: data.replyCount,
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'instagram',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '投稿',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
        shape: Border(bottom: BorderSide(color: Colors.grey, width: 1)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1365086104198672384/J52Bq-rs_400x400.jpg'))),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('かんた', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('富山県立大学',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Expanded(child: SizedBox()),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Container(
            width: 500,
            height: 500,
            color: Colors.white,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                  'https://pbs.twimg.com/profile_images/1365086104198672384/J52Bq-rs_400x400.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.mode_comment_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.airplane_ticket_outlined, size: 30),
                Expanded(child: SizedBox()),
                Icon(Icons.collections_bookmark_rounded, size: 30),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              '「いいね！」101件',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text('喧嘩したい奴かかってこい。'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              '#場数が違う',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              '#地元では10人ニキって呼ばれてます',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('instagram'),
            SizedBox(
              width: 105,
            ),
            Icon(Icons.notifications_none_outlined),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1365086104198672384/J52Bq-rs_400x400.jpg'),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '7,041',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text('投稿'),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Text(
                        '4.6億',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text('フォロワー'),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Text(
                        '99',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text('フォロー中'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'かんた',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    '#YoursToMake',
                    style: TextStyle(color: Colors.blue.shade800),
                  ),
                  Text(
                    'help.instagram.com',
                    style: TextStyle(color: Colors.blue.shade800),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ’フォロー中’ボタン
                OutlinedButton(
                  onPressed: () {},
                  child: Text('フォロー中↓',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size.fromWidth(150),
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                  ),
                ),

                // ’メッセージ’ボタン
                OutlinedButton(
                  onPressed: () {},
                  child: Text('メッセージ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size.fromWidth(150),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.keyboard_arrow_down, size: 20),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(50),
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                  ),
                )
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: <Widget>[
                instagramPostItem(
                    imageUrl:
                        'https://pbs.twimg.com/profile_images/1365086104198672384/J52Bq-rs_400x400.jpg'),
                instagramPostItem(
                    imageUrl:
                        'https://www.aeonpet.com/assets/ap_special_detail/ap_special_detail-img-791.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//instagramPostItemクラス
class instagramPostItem extends StatelessWidget {
  const instagramPostItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, fit: BoxFit.cover);
  }
}

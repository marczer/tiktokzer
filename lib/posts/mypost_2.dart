import 'package:flutter/material.dart';
import 'package:tikzer/util/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'princeofpersia',
      videoDescription: 'tiktok de zer',
      numberOfLike: '1.2M',
      numberOfComments: '2323',
      numberOfShares: '123',
      userPost: Container(
        color: Colors.pink[300],
      ),
    );
  }
}
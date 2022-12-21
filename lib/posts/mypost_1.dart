import 'package:flutter/material.dart';
import 'package:tikzer/util/button.dart';
import 'package:tikzer/util/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'createdparlezer',
      videoDescription: 'tiktok de zer',
      numberOfLike: '1.2M',
      numberOfComments: '2323',
      numberOfShares: '123',
      userPost: Container(
        color: Colors.deepPurple[300],
      ),
    );
  }
}
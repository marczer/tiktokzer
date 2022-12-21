import 'package:flutter/material.dart';
import 'package:tikzer/util/button.dart';

class PostTemplate extends StatelessWidget {
  
  final String username;
  final String videoDescription;
  final String numberOfLike;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  PostTemplate({
    required this.username,
    required this.videoDescription,
    required this.numberOfLike,
    required this.numberOfComments,
    required this.numberOfShares,
    required this.userPost,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // user post 

          userPost,

          // user commentaire

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('@'+username,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  const SizedBox(height: 18,),
                  RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: videoDescription,style: TextStyle(color: Colors.white)),
                        TextSpan(text: '#fyp #flutter',style: TextStyle(fontWeight: FontWeight.bold))
                      ]
                    )
                    )
                ],
              ),
            ),
          ),

          // les boutiom

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButtom(
                    icon: Icons.favorite,
                    number: numberOfLike
                    ),
                  MyButtom(
                    icon: Icons.chat_bubble_outline,
                    number: numberOfComments
                    ),
                  MyButtom(
                    icon: Icons.send,
                    number: numberOfShares
                    ),
                ],
              ),
            ),
            )
        ],
      ),
    );
  }
}
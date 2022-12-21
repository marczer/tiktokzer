import 'package:flutter/material.dart';
import 'package:tikzer/util/profiletab_1.dart';
import 'package:tikzer/util/profiletab_2.dart';
import 'package:tikzer/util/profiletab_3.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Marc Viera',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black,),
          actions: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Icon(Icons.menu,color: Colors.black,),
            )
          ],
        ),
        body: Column(
          children: [
            // profile img
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),
            // username
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('@marcviera',style: TextStyle(color: Colors.grey,fontSize: 20),),
            ),
            // number abonner et like
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: const [
                        Text('37',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: 8,),
                        Text('Abonner',style: TextStyle(color: Colors.grey,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: const [
                        Text('8',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: 8,),
                        Text('Abonnement',style: TextStyle(color: Colors.grey,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: const [
                        Text('37',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: 8,),
                        Text('aimer',style: TextStyle(color: Colors.grey,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15,),
            // modifier profile a l'aide du buttom
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text('modifier profil',style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.camera_alt,color: Colors.grey[800],),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.bookmark_border,color: Colors.grey[800],),
                ),
              ],
            ),

            // bio ici

           const SizedBox(height: 15,),
           Text('bie ici',style: TextStyle(color: Colors.grey[700]),),

           TabBar(
            tabs: [
              Tab(icon: Icon(Icons.grid_3x3,color: Colors.black,),),
              Tab(icon: Icon(Icons.favorite,color: Colors.black,),),
              Tab(icon: Icon(Icons.lock_outline_rounded,color: Colors.black,),),
            ]
            ),
           Expanded(
            child: TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ]
              )
            )
          ],
        ),
      ),
    );
  }
}